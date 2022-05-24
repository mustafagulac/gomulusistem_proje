import serial
import time
import string
import pynmea2
######
import cv2
import imutils
#firebase kütüphaneleri
import sys
from pyrebase import pyrebase
import firebase_admin
from firebase_admin import credentials,firestore


credentialData = credentials.Certificate("")
firebase_admin.initialize_app(credentialData)
firestoreDb = firestore.client()

config={
    "apiKey" : "",
    "authDomain" : "",
    "databaseURL" : "",
    "storageBucket" : ""
}

firebase = pyrebase.initialize_app(config)
db = firebase.database()

port="/dev/ttyAMA0"
ser=serial.Serial(port, baudrate=9600, timeout=0.5)

#goruntu = cv2.VideoCapture("/home/pi/denemeler/peopleCount.mp4")
goruntu = cv2.VideoCapture(0)
people_cascade = cv2.CascadeClassifier('cascade için xml uzantılı dosya konumu')


sayac=0
y_cizgi=240
alan_sayacı=0
giren_insan=0
cikan_insan=0
suanki_veri = []
onceki_veri = []
sayi=0

while True:
    ret, frame = goruntu.read()

    if goruntu:
        sayi=1
        frame = cv2.resize(frame, (640,480))
        gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
        peoples = people_cascade.detectMultiScale(gray,1.1,2)
        cv2.line(frame, (0, y_cizgi), (640, y_cizgi), (0, 255, 0), 2)
        #cv2.line(frame, (0, cizgi_y2), (640, cizgi_y2), (0, 255, 0), 2)        

        

        
        for (x,y,w,h) in peoples :
            
            if w>63 and h>65 :
                suanki_veri.append([x, y])
                cv2.rectangle(frame,(x,y),(x+w,y+h),(0,255,0),2)
            

        
        alan_listesi=[]
        try:
            for i in range (len(suanki_veri)):
                mini=1000000
                for k in range(len(onceki_veri)):
                    diff_x=suanki_veri[i][0]-onceki_veri[k][0]
                    diff_y=suanki_veri[i][1]-onceki_veri[k][1]
                    mesafe = (diff_x*diff_x)+(diff_y * diff_y)
                    if(mesafe<mini ):
                        mini=mesafe
                        alan_sayacı=k
                alan_listesi.append(alan_sayacı)
        except IndexError:
            continue
        try:
            for i in alan_listesi:
                for k in range(1,len(alan_listesi)):
                    if i==alan_listesi[k]:
                        alan_listesi.pop(k)
                        alan_listesi.insert(k,"pass")
        except IndexError:
            continue
        for i in range (len(suanki_veri)):
            try:
                if alan_listesi[i]=="pass":
                    pass
                else:
                    y_onceki=onceki_veri[alan_listesi[i]][1]
                    if(suanki_veri[i][1]>y_cizgi and y_onceki< y_cizgi):
                        giren_insan=giren_insan+1

                    if(suanki_veri[i][1]<y_cizgi and y_onceki> y_cizgi):
                        cikan_insan=cikan_insan+1                          

            except IndexError:
                continue
        onceki_veri = suanki_veri
        suanki_veri = []
        
        
        mevcut = giren_insan - cikan_insan
        yogunluk = ""
        
        if (mevcut>=30):
            yogunluk = "Yoğun"
        elif (mevcut<30) and (mevcut>=15):
            yogunluk = "Normal"
        else:
            yogunluk = "Rahat"
        
        document = firestoreDb.collection(u'InsanSayimi').document('insanSayi')
        document.set({
            'giren':str(giren_insan),
            'cikan':str(cikan_insan),
            'mevcut':str(mevcut),
            'yogunluk':yogunluk
        })
        
        newdata=ser.readline()

        if sys.version_info[0] == 3: 
            newdata = newdata.decode("utf-8","ignore")   
        if newdata[0:6] == "$GPGGA":
            newmsg=pynmea2.parse(newdata)
            lat=newmsg.latitude
            lng=newmsg.longitude
            gps = "Latitude=" + str(lat) + "and Longitude=" + str(lng)
		
            #firebase veri gönderme
            #gonderilenVeri = {"Enlem" : str(lat),"Boylam":str(lng)}
            #db.child("Konum Bilgileri").set(gonderilenVeri)	
            print(gps)
            
            document = firestoreDb.collection(u'Konum').document('konumBilgileri')
            document.set({
                'latitude': lat,
                'longitude':lng
            })
        

        
        
        cv2.namedWindow("Kisi Sayma")

        cv2.putText(frame,"giren: "+str(giren_insan), (220, 20), cv2.FONT_HERSHEY_SIMPLEX,0.6, (255, 0, 0), 2)
        cv2.putText(frame,"cikan: "+str(cikan_insan), (220, 40), cv2.FONT_HERSHEY_SIMPLEX,0.6, (255, 0, 0), 2)

        cv2.imshow("Kisi Sayma", frame)


        key = cv2.waitKey(60)
        if key == ord('q'):
            #yükle() --daha sonraki kısımlarda veritabanı ile bağlantılı olacak kısımlardan biri (şuanda fonksiyon yok)--
            break
    else:
        #--daha sonraki kısımlarda veritabanı ile bağlantılı olacak kısımlardan bir kod parçası gelecek--
        if sayi==1:
            #yükle() --daha sonraki kısımlarda veritabanı ile bağlantılı olacak kısımlardan biri (şuanda fonksiyon yok)--
            sayi=0
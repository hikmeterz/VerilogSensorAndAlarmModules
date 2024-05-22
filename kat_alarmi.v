`timescale 1ns / 1ps



module kat_alarmi(

    input [3:0] duman_degeri1,
    input [3:0] sicaklik_degeri1,

    input [3:0] duman_degeri2,
    input [3:0] sicaklik_degeri2,

    input [3:0] duman_degeri3,
    input [3:0] sicaklik_degeri3,
    
    input [3:0] duman_degeri4,
    input [3:0] sicaklik_degeri4,

    output alarm
    );
    
    wire [1:0] sensor1;
    
    duman_sensoru sensor_1( .duman_degeri(duman_degeri1),
                        .sicaklik_degeri(sicaklik_degeri1),
                        .sonuc(sensor1)
                        );
    
    
    wire [1:0] sensor2;
    
    duman_sensoru sensor_2( .duman_degeri(duman_degeri2),
                        .sicaklik_degeri(sicaklik_degeri2),
                        .sonuc(sensor2)
                        );
    
    wire [1:0]  sensor3;
    
    duman_sensoru sensor_3( .duman_degeri(duman_degeri3),
                        .sicaklik_degeri(sicaklik_degeri3),
                        .sonuc(sensor3)
                        );
    
    
    wire [1:0] sensor4;
    
    duman_sensoru sensor_4( .duman_degeri(duman_degeri4),
                        .sicaklik_degeri(sicaklik_degeri4),
                        .sonuc(sensor4)
                        );
    
    
    wire cik1;//karnough1
    wire cik2;//karnough2
    //toplam 8 tane cikis oldugu icin ikiye ayirip onlari andledim cikan karnough sonucu...
    
    //sensor1 ve soensor2 karnough
    
    wire k1,k2,k3,k4,k5,k6;
    
    and(k1,sensor1[0],sensor1[1]);
    and(k2,sensor2[0],sensor2[1]);
    and(k3,sensor2[0],sensor1[0]);
    and(k4,sensor2[1],sensor1[0]);
    and(k5,sensor2[1],sensor1[1]);
    and(k6,sensor2[0],sensor1[1]);
    
    or(cik1,k1,k2,k3,k4,k5,k6);
    
    //sensor3 ve sensor4
    wire k11,k22,k33,k44,k55,k66;
    
    and(k11,sensor3[0],sensor3[1]);
    and(k22,sensor4[0],sensor2[1]);
    and(k33,sensor4[0],sensor3[0]);
    and(k44,sensor4[1],sensor3[0]);
    and(k55,sensor4[1],sensor3[1]);
    and(k66,sensor4[0],sensor3[1]);
    
    or(cik2,k11,k22,k33,k44,k55,k66);
    
    //olusan 8 li karnoughu ikiye bolup olusan sonuclar ikisinde de ayni
    //bunlarin ikisini andledigimde alarm istenilen sonucta olusuyor.
     
    
    and(alarm,cik1,cik2);
    
    
    
    
    
    
    
    
    
    
    
endmodule

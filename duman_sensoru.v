`timescale 1ns / 1ps

module duman_sensoru(
    
    input [3:0] duman_degeri,
    input [3:0] sicaklik_degeri,
    
    output [1:0] sonuc 
    );
    
    wire s1,s2;
    
    //karnough sonucu;
    //Sonuclara detayli bir sekilde bakildiginde duman_degerine gore sonuclara bakmak yeterli oluyor
    //buna gore karnough yapildiginda sonuc[1]=duman_degeri[3];
    //sonuc[0]=duman[degeri2]
    //belki buralarda anlamli bitlere gore yanlislik yapilmis olabnilir.
    buf(sonuc[1],duman_degeri[3]);
    buf(sonuc[0],duman_degeri[2]);
    //assign yasak oldugu icin buf kapisini kullandim direk esitlemek icin.
    
    
endmodule

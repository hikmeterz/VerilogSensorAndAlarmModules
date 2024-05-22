`timescale 1ns / 1ps


module kapi_zili(

    input [3:0] sayi_girisi,
    input[3:0] sifre_degeri, 
    input zil_butonu, 
    input sifre_butonu, 
    output [3:0] cikis,   
    output kapi_ac, 
    output alarm 
    );
    
    //ilk durumda cikis test benchte 1111 
    //birinci fonksiyon
    //karnough sonucu..
     and(cikis[0],zil_butonu,sayi_girisi[0]); 
     and(cikis[1],zil_butonu,sayi_girisi[1]); 
     and(cikis[2],zil_butonu,sayi_girisi[2]); 
     and(cikis[3],zil_butonu,sayi_girisi[3]); 
     
     //ikinci fonksyion
     
     
      
    
    
 



endmodule

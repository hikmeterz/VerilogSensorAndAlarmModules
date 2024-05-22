`timescale 1ns / 1ps
module oy_sayaci(
    input [3:0] giris,
    output [2:0] cikis

    );
    
    //yaptigim karnough siralamasi.... giris[3],giris[2],giris[1],giris[0] | cikis[2],cikis[1],cikis[0]
    wire k1,k2,k3;
    not kapi1(k1,giris[3]);
    not kapi2(k2,giris[0]);
    and kapii1(k3,k1,k2,giris[2],giris[1]);
    
    wire k4,k5,k6,k7;
    not kapi3(k4,giris[3]);
    not kapi4(k5,giris[2]);
    not kapi5(k6,giris[1]);
    and kapii2(k7,k4,k5,k6,giris[0]);
    
    wire k8,k9,k10,k11;
    not kapi6(k8,giris[3]);
    not kapi7(k9,giris[2]);
    not kapi8(k10,giris[0]);
    and kapii3(k11,k8,k9,k10,giris[1]);
    
    wire k12,k13;
    not kapi9(k12,giris[3]);
    and kapii4(k13,k12,giris[2],giris[1],giris[0]);
    
    wire k14,k15,k16,k17;
    not kapi10(k14,giris[2]);
    not kapi11(k15,giris[1]);
    not kapi12(k16,giris[0]);
    and kapii5(k17,k16,k15,k14,giris[3]);
    
    wire k18,k19;
    not kapi13(k18,giris[1]);
    and kapii6(k19,k18,giris[3],giris[2],giris[0]);
    
    wire k20,k21;
    not kapi14(k20,giris[2]);
    and kapii7(k21,k20,giris[3],giris[1],giris[0]);
    
    
    wire k22,k23;
    not kapi15(k22,giris[0]);
    and kapii8(k23,k22,giris[3],giris[2],giris[1]);
    
    or kapii9(cikis[0],k23,k21,k19,k17,k13,k11,k7,k3);
    
    
    //cikis[1]...
    
    wire kk1,kk2;
    not (kk1,giris[3]);
    and (kk2,giris[2],giris[0]);
    
    wire kk3,kk4;
    not (kk3,giris[3]);
    and (kk4,giris[1],giris[0]);
    
    wire kk5,kk6;
    not (kk5,giris[1]);
    and (kk6,giris[3],giris[2]);
    
    wire kk7,kk8;
    not (kk7,giris[2]);
    and (kk8,giris[3],giris[0]);
    
    wire kk9,kk10;
    not (kk9,giris[0]);
    and (kk10,giris[2],giris[1]);
    
    wire kk11,kk12;
    not (kk11,giris[0]);
    and (kk12,giris[3],giris[1]);
    
    or (cikis[1],kk12,kk10,kk8,kk6,kk4,kk2);
    
    
    //cikis[2]..
    
    and (cikis[2],giris[3],giris[2],giris[1],giris[0]);
    
    
    
    
    
    
    
    
    
    
endmodule

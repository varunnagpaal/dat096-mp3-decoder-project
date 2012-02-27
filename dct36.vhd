--dct36
--In the first draft, I don't put the functions, such as MACR00, MACRO1 in to the package. 
--Maybe we can optmize that afterwards.
--There should be many error in this draft. please help me find that. Thank you!



LIBRARY IEEE;
  USE IEEE.STD_LOGIC_1164.ALL;
  USE WORK.pack.ALL;

ENTITY dct36 IS
  PORT(
    inbuf : IN int_vector (17 DOWNTO 0);
    o1    : IN int_vector (17 DOWNTO 0);
    o2    : IN int_vector (17 DOWNTO 0);
    wintab: IN int_vector (64 DOWNTO 0);----Here I don't know what's the size of the wintab.
    out1  : INOUT int_vector (17 DOWNTO 0);
    out2  : INOUT int_vector (17 DOWNTO 0);
    tsbuf : OUT int_vector (1024 DOWNTO 0)
  );
END dct36;

ARCHITECTURE behavioral_1 OF dct36 IS
   SIGNAL int_temp    : int_vector (17 DOWNTO 0);
   SIGNAL in_register : int_vector (17 DOWNTO 0);
   SIGNAL t3          : INTEGER;
    BEGIN

----------------------------------------------------------------------   
---------give the in_register array the value of the inbuf------------
----------------------------------------------------------------------      

init:PROCESS(inbuf)
    
      BEGIN
        in_register <= inbuf;
      FOR index IN 17 DOWNTO 1 LOOP
        in_register(index) <= (in_register(index) + in_register(index-1));
      END LOOP;
      
      in_register(17) <= (in_register(17)+in_register(15));
      in_register(15) <= (in_register(15)+in_register(13));
      in_register(13) <= (in_register(13)+in_register(11));
      in_register(11) <= (in_register(11)+in_register(9));
      in_register(9)  <= (in_register(9) +in_register(7));
      in_register(7)  <= (in_register(7) +in_register(5));
      in_register(5)  <= (in_register(5) +in_register(3));
      in_register(3)  <= (in_register(3) +in_register(1));

END PROCESS init;
      
   p1:PROCESS(in_register)
     
      VARIABLE t0,t1,t2 : INTEGER;
      VARIABLE t3_temp  : INTEGER;       
      ---VARIABLE int_temp_1 : INTEGER;
      VARIABLE int_temp_1 : INTEGER;
      VARIABLE int_temp_4 : INTEGER;
      VARIABLE int_temp_7 : INTEGER;
      
      BEGIN
        
      t0          := COS6_2 * (in_register(8)+in_register(16)-in_register(4));
      t1          := COS6_2 * in_register(12);
      t3_temp     := in_register(0);
      t2          := t3_temp-t1-t1;
      int_temp_1  := t2-t0;
      int_temp_7  := int_temp_1;
      int_temp_4  := t2+t0+t0;
      t3_temp     := t3_temp+t1;
      
      t2          := COS6_1 * (in_register(10)+in_register(14)-in_register(2));
      int_temp_1  := int_temp_1-t2;
      int_temp_7  := int_temp_1+t2;
      
      
      t3 <= t3_temp;
      int_temp(1) <= int_temp_1;
      int_temp(7) <= int_temp_7;
      int_temp(4) <= int_temp_4;
      
    END PROCESS p1;
    
  p2: PROCESS(in_register)
     
      VARIABLE t0,t1,t2 : INTEGER;
      VARIABLE t3_temp  : INTEGER;       
      VARIABLE int_temp_0 : INTEGER;
      VARIABLE int_temp_2 : INTEGER;
      VARIABLE int_temp_3 : INTEGER;
      VARIABLE int_temp_5 : INTEGER;
      VARIABLE int_temp_6 : INTEGER;
      VARIABLE int_temp_8 : INTEGER;
     
      BEGIN
      t3_temp     := t3;
      t0          := COS9(0) * (in_register(4)+in_register(8));
      t1          := COS9(1) * (in_register(8)+in_register(16));      
      t2          := COS9(2) * (in_register(4)+in_register(16));  
      
      int_temp_2 := t3_temp-t0-t2;
      int_temp_6 := int_temp_2;
      
      int_temp_0 := t3_temp+t0+t1;
      int_temp_8 := int_temp_0;
      
      int_temp_3 := t3_temp-t1+t2;
      int_temp_5 := int_temp_3;
      
     -- t3 <= t3_temp;
      int_temp(2) <= int_temp_2;
      int_temp(6) <= int_temp_6;
      int_temp(0) <= int_temp_0;
      int_temp(8) <= int_temp_8;
      int_temp(3) <= int_temp_3;
      int_temp(5) <= int_temp_5;
      
      END PROCESS p2;
      
   p3: PROCESS(in_register)
     
      VARIABLE t0,t1,t2,t3 : INTEGER;
    --  VARIABLE int_temp_2 : INTEGER;
--      VARIABLE int_temp_6 : INTEGER;
--      VARIABLE int_temp_10 : INTEGER;
--      VARIABLE int_temp_14 : INTEGER;
--      --VARIABLE int_temp_6 : INTEGER;
      --VARIABLE int_temp_8 : INTEGER;
     
      BEGIN
        t1 := cos18(0)*(in_register(2)+in_register(10));
        t2 := cos18(1)*(in_register(10)+in_register(14));
        t3 := COS6_1*in_register(6);
        
        t0 := t1+t2+t3;
        
        int_temp(0) <= int_temp(0) + t0;
        int_temp(8) <= int_temp(8) - t0;
        
        t2 := t2-t3;
        t1 := t1-t3;
        
        t3 := cos18(2)*(in_register(2)+in_register(14));
        
        t1 := t1+t3;
        int_temp(3) <= int_temp(3) + t1;
        int_temp(5) <= int_temp(5) - t1;
        
        t2 := t2-t3;
        int_temp(2) <= int_temp(2) + t2;
        int_temp(6) <= int_temp(6) - t2;
      END PROCESS p3;
      
      
    p4:PROCESS(in_register)
        VARIABLE t0,t1,t2,t3,t4,t5,t6,t7 : INTEGER;
        BEGIN
          t1 := COS6_2 * in_register(13);
          t2 := COS6_2 * (in_register(13)+in_register(17)-in_register(5));
          
          t3 := in_register(1) + t1;
          t4 := in_register(1) - t1 - t1;
          t5 := t4 - t2;
          
          t0 := cos9(0)*(in_register(5)+in_register(9));
          t1 := cos9(1)*(in_register(9)-in_register(17));
          
          int_temp(13) <= (t4+t2+t2) * tfcos36(4);
          t2 := cos9(2) * (in_register(5)+in_register(17));
          
          t6 := t3-t0-t2;
          t0 := t0+t3+t1;
          t3 := t3+(t2-t1);
          
          t2 := cos18(0) * (in_register(3)+in_register(11));
          t4 := cos18(1) * (in_register(11)-in_register(15));
          t7 := COS6_1   *  in_register(7);
          
          t1 := t2+t4+t7;
          int_temp(17) <= (t0+t1) * tfcos36(0);
          int_temp(9)  <= (t0-t1) * tfcos36(8);
          
          t1 := cos18(2) * (in_register(3)+in_register(15));
          t2 := t2 + (t1-t7);
          
          int_temp(14) <= (t3+t2) * tfcos36(3);
          t0 := COS6_1  * (in_register(11)+in_register(15)-in_register(3));
          int_temp(12) <= (t3-t2) * tfcos36(5);
          
          t4 := t4-(t1+t7);
          
          int_temp(16) <= (t5-t0) * tfcos36(1);
          int_temp(10) <= (t5+t0) * tfcos36(7);
          int_temp(15) <= (t6+t4) * tfcos36(2);
          int_temp(11) <= (t6-t4) * tfcos36(6);
        
        END PROCESS p4;
        
 MACRO: PROCESS(o1,o2,wintab)    
        VARIABLE tmpval : INTEGER;
        BEGIN
          
         -----------------------------------------
         ----MACRO(0)
         ----------------------------------------- 
          tmpval := in_register(0)+in_register(17-0);
          out2(9+0) <= tmpval * wintab(27+0);
          out2(8-0) <= tmpval * wintab(26-0);
          
          tmpval := in_register(0)-in_register(17-0);
          tsbuf(32*(8-0)) <= out1(8-0) +(tmpval* wintab(8-0));
          tsbuf(32*(9+0)) <= out1(9+0) +(tmpval* wintab(9+0));
          
         -----------------------------------------
         ----MACRO(1)
         ----------------------------------------- 
          tmpval := in_register(1)+in_register(17-1);
          out2(9+1) <= tmpval * wintab(27+1);
          out2(8-1) <= tmpval * wintab(26-1);
          
          tmpval := in_register(1)-in_register(17-1);
          tsbuf(32*(8-1)) <= out1(8-1) +(tmpval* wintab(8-1));
          tsbuf(32*(9+1)) <= out1(9+1) +(tmpval* wintab(9+1)); 
          
          
          -----------------------------------------
         ----MACRO(2)
         ----------------------------------------- 
          tmpval := in_register(2)+in_register(17-2);
          out2(9+2) <= tmpval * wintab(27+2);
          out2(8-2) <= tmpval * wintab(26-2);
          
          tmpval := in_register(2)-in_register(17-2);
          tsbuf(32*(8-2)) <= out1(8-2) +(tmpval* wintab(8-2));
          tsbuf(32*(9+2)) <= out1(9+2) +(tmpval* wintab(9+2));
         
         -----------------------------------------
         ----MACRO(3)
         ----------------------------------------- 
          tmpval := in_register(3)+in_register(17-3);
          out2(9+3) <= tmpval * wintab(27+3);
          out2(8-3) <= tmpval * wintab(26-3);
          
          tmpval := in_register(3)-in_register(17-3);
          tsbuf(32*(8-3)) <= out1(8-3) +(tmpval* wintab(8-3));
          tsbuf(32*(9+3)) <= out1(9+3) +(tmpval* wintab(9+3));
         
         -----------------------------------------
         ----MACRO(4)
         ----------------------------------------- 
          tmpval := in_register(4)+in_register(17-4);
          out2(9+4) <= tmpval * wintab(27+4);
          out2(8-4) <= tmpval * wintab(26-4);
          
          tmpval := in_register(0)-in_register(17-0);
          tsbuf(32*(8-4)) <= out1(8-4) +(tmpval* wintab(8-4));
          tsbuf(32*(9+4)) <= out1(9+4) +(tmpval* wintab(9+4));
          
          -----------------------------------------
         ----MACRO(5)
         ----------------------------------------- 
          tmpval := in_register(5)+in_register(17-5);
          out2(9+5) <= tmpval * wintab(27+5);
          out2(8-5) <= tmpval * wintab(26-5);
          
          tmpval := in_register(0)-in_register(17-0);
          tsbuf(32*(8-5)) <= out1(8-5) +(tmpval* wintab(8-5));
          tsbuf(32*(9+5)) <= out1(9+5) +(tmpval* wintab(9+5));
          
          
          -----------------------------------------
         ----MACRO(6)
         ----------------------------------------- 
          tmpval := in_register(6)+in_register(17-6);
          out2(9+6) <= tmpval * wintab(27+6);
          out2(8-6) <= tmpval * wintab(26-6);
          
          tmpval := in_register(6)-in_register(17-6);
          tsbuf(32*(8-6)) <= out1(8-6) +(tmpval* wintab(8-6));
          tsbuf(32*(9+6)) <= out1(9+6) +(tmpval* wintab(9+6));
          
          
          -----------------------------------------
         ----MACRO(7)
         ----------------------------------------- 
          tmpval := in_register(7)+in_register(17-7);
          out2(9+7) <= tmpval * wintab(27+7);
          out2(8-7) <= tmpval * wintab(26-7);
          
          tmpval := in_register(7)-in_register(17-7);
          tsbuf(32*(8-7)) <= out1(8-7) +(tmpval* wintab(8-7));
          tsbuf(32*(9+7)) <= out1(9+7) +(tmpval* wintab(9+7));
          
          
          -----------------------------------------
         ----MACRO(8)
         ----------------------------------------- 
          tmpval := in_register(8)+in_register(17-8);
          out2(9+8) <= tmpval * wintab(27+8);
          out2(8-8) <= tmpval * wintab(26-8);
          
          tmpval := in_register(8)-in_register(17-8);
          tsbuf(32*(8-8)) <= out1(8-8) +(tmpval* wintab(8-8));
          tsbuf(32*(9+8)) <= out1(9+8) +(tmpval* wintab(9+8));
          
         END PROCESS MACRO;
END behavioral_1;



-----------------------------------------------------------------------------------------------
-----------------
-----------------------------------------------------------------------------------------------


ARCHITECTURE behavioral_2 OF dct36 IS
   SIGNAL int_temp    : int_vector (17 DOWNTO 0);
   SIGNAL in_register : int_vector (17 DOWNTO 0);
   SIGNAL ta33,ta66,tb33,tb66 : INTEGER;
   
  -- SIGNAL t3          : INTEGER;
    
   BEGIN

----------------------------------------------------------------------   
---------give the in_register array the value of the inbuf-----------------
----------------------------------------------------------------------      

init:PROCESS(inbuf)
    --VARIABLE ta33_temp,ta66_temp,tb33_temp,ta66_temp : INTEGER;
      BEGIN
        in_register <= inbuf;
      FOR index IN 17 DOWNTO 1 LOOP
        in_register(index) <= (in_register(index) + in_register(index-1));
      END LOOP;
      
      in_register(17) <= (in_register(17)+in_register(15));
      in_register(15) <= (in_register(15)+in_register(13));
      in_register(13) <= (in_register(13)+in_register(11));
      in_register(11) <= (in_register(11)+in_register(9));
      in_register(9)  <= (in_register(9) +in_register(7));
      in_register(7)  <= (in_register(7) +in_register(5));
      in_register(5)  <= (in_register(5) +in_register(3));
      in_register(3)  <= (in_register(3) +in_register(1));
      
      ta33 <= in_register(2*3+0) * COS9(3);
      ta66 <= in_register(2*6+0) * COS9(6);
      tb33 <= in_register(2*3+1) * COS9(3);
      tb33 <= in_register(2*6+1) * COS9(3);
      
      END PROCESS init;
      
  p1:PROCESS(inbuf)
    VARIABLE tmp1a,tmp2a,tmp1b,tmp2b : INTEGER;
    VARIABLE sum0,sum1 : INTEGER;
    VARIABLE tmp : INTEGER;
    BEGIN
    tmp1a := (in_register(2*1+0)*COS9(1) + ta33 + in_register(2*5+0)*COS9(5) + in_register(2*7+0)*COS9(7));
    tmp1b := (in_register(2*1+1)*COS9(1) + tb33 + in_register(2*5+1)*COS9(5) + in_register(2*7+1)*COS9(7));
    tmp2a := (in_register(2*2+0)*COS9(2) + ta66 + in_register(2*4+0)*COS9(4) + in_register(2*8+0)*COS9(8));
    tmp2b := (in_register(2*2+1)*COS9(2) + tb66 + in_register(2*4+1)*COS9(4) + in_register(2*8+1)*COS9(8));
    
    ----------------------------------------------------------------------
    ----MACR01(0)-------------------------
    ----------------------------------------------------------------------
    sum0 := tmp1a + tmp2a;
    sum1 := (tmp1b + tmp2b) * tfcos36(0);
    
    ----------------------------------------------------------------------
    ----MACR00(0)-------------------------
    ----------------------------------------------------------------------
    tmp  :=  sum0 + sum1;
    out2(9+0) <= tmp * wintab(27+0);
    out2(8-0) <= tmp * wintab(26-0);
    
    sum0 := sum0-sum1;
    
    tsbuf(32*(8-0)) <= out1(8-0)+ sum0 * wintab(8-0);
    tsbuf(32*(9+0)) <= out1(9+0)+ sum0 * wintab(9+0);
    
    ---------------------------------------------------------------------
    ----MACR02(8)--------------------------
    ---------------------------------------------------------------------
    sum0 := tmp2a - tmp1a;
    sum1 := (tmp2b - tmp1b) * tfcos36(8);
    
    ----------------------------------------------------------------------
    ----MACR00(8)-------------------------
    ----------------------------------------------------------------------
    tmp  :=  sum0 + sum1;
    out2(9+8) <= tmp * wintab(27+8);
    out2(8-8) <= tmp * wintab(26-8);
    
    sum0 := sum0-sum1;
    
    tsbuf(32*(8-8)) <= out1(8-8)+ sum0 * wintab(8-8);
    tsbuf(32*(9+8)) <= out1(9+8)+ sum0 * wintab(9+8);
    
  END PROCESS p1;
    
  p2:PROCESS(inbuf)
    VARIABLE tmp1a,tmp2a,tmp1b,tmp2b : INTEGER;
    VARIABLE sum0,sum1 : INTEGER;
    VARIABLE tmp : INTEGER;
    
    BEGIN
      
      tmp1a := (in_register(2*1+0)-in_register(2*5+0)-in_register(2*7+0))*COS9(3);
      tmp1b := (in_register(2*1+1)-in_register(2*5+1)-in_register(2*7+1))*COS9(3);
      tmp2a := (in_register(2*2+0)-in_register(2*4+0)-in_register(2*8+0))*COS9(6)-in_register(2*6+0)+in_register(2*0+0);
      tmp2b := (in_register(2*2+1)-in_register(2*4+1)-in_register(2*8+1))*COS9(6)-in_register(2*6+1)+in_register(2*0+1);
      
    ----------------------------------------------------------------------
    ----MACR01(1)-------------------------
    ----------------------------------------------------------------------
    sum0 := tmp1a + tmp2a;
    sum1 := (tmp1b + tmp2b) * tfcos36(1);
    
    ----------------------------------------------------------------------
    ----MACR00(1)-------------------------
    ----------------------------------------------------------------------
    tmp  :=  sum0 + sum1;
    out2(9+1) <= tmp * wintab(27+1);
    out2(8-1) <= tmp * wintab(26-1);
    
    sum0 := sum0-sum1;
    
    tsbuf(32*(8-1)) <= out1(8-1)+ sum0 * wintab(8-1);
    tsbuf(32*(9+1)) <= out1(9+1)+ sum0 * wintab(9+1);
    
    ---------------------------------------------------------------------
    ----MACR02(7)--------------------------
    ---------------------------------------------------------------------
    sum0 := tmp2a - tmp1a;
    sum1 := (tmp2b - tmp1b) * tfcos36(7);
    
    ----------------------------------------------------------------------
    ----MACR00(7)-------------------------
    ----------------------------------------------------------------------
    tmp  :=  sum0 + sum1;
    out2(9+7) <= tmp * wintab(27+7);
    out2(8-7) <= tmp * wintab(26-7);
    
    sum0 := sum0-sum1;
    
    tsbuf(32*(8-7)) <= out1(8-7)+ sum0 * wintab(8-7);
    tsbuf(32*(9+7)) <= out1(9+7)+ sum0 * wintab(9+7);
    
  END PROCESS p2;
  


  p3:PROCESS(inbuf)
    VARIABLE tmp1a,tmp2a,tmp1b,tmp2b : INTEGER;
    VARIABLE sum0,sum1 : INTEGER;
    VARIABLE tmp : INTEGER;
    BEGIN
    tmp1a := (in_register(2*1+0)*COS9(5) - ta33 - in_register(2*5+0)*COS9(7) + in_register(2*7+0)*COS9(1));
    tmp1b := (in_register(2*1+1)*COS9(5) - tb33 - in_register(2*5+1)*COS9(7) + in_register(2*7+1)*COS9(1));
    tmp2a := (-in_register(2*2+0)*COS9(8) + ta66 - in_register(2*4+0)*COS9(2) + in_register(2*8+0)*COS9(4));
    tmp2b := (-in_register(2*2+1)*COS9(8) + tb66 - in_register(2*4+1)*COS9(2) + in_register(2*8+1)*COS9(4));
    
    ----------------------------------------------------------------------
    ----MACR01(2)-------------------------
    ----------------------------------------------------------------------
    sum0 := tmp1a + tmp2a;
    sum1 := (tmp1b + tmp2b) * tfcos36(2);
    
    ----------------------------------------------------------------------
    ----MACR00(2)-------------------------
    ----------------------------------------------------------------------
    tmp  :=  sum0 + sum1;
    out2(9+2) <= tmp * wintab(27+2);
    out2(8-2) <= tmp * wintab(26-2);
    
    sum0 := sum0-sum1;
    
    tsbuf(32*(8-2)) <= out1(8-2)+ sum0 * wintab(8-2);
    tsbuf(32*(9+2)) <= out1(9+2)+ sum0 * wintab(9+2);
    
    ---------------------------------------------------------------------
    ----MACR02(6)--------------------------
    ---------------------------------------------------------------------
    sum0 := tmp2a - tmp1a;
    sum1 := (tmp2b - tmp1b) * tfcos36(6);
    
    ----------------------------------------------------------------------
    ----MACR00(6)-------------------------
    ----------------------------------------------------------------------
    tmp  :=  sum0 + sum1;
    out2(9+6) <= tmp * wintab(27+6);
    out2(8-6) <= tmp * wintab(26-6);
    
    sum0 := sum0-sum1;
    
    tsbuf(32*(8-6)) <= out1(8-6)+ sum0 * wintab(8-6);
    tsbuf(32*(9+6)) <= out1(9+6)+ sum0 * wintab(9+6);
    
  END PROCESS p3;
  
p4:PROCESS(inbuf)
    VARIABLE tmp1a,tmp2a,tmp1b,tmp2b : INTEGER;
    VARIABLE sum0,sum1 : INTEGER;
    VARIABLE tmp : INTEGER;
    BEGIN
    tmp1a := (in_register(2*1+0)*COS9(7) - ta33 + in_register(2*5+0)*COS9(1) - in_register(2*7+0)*COS9(5));
    tmp1b := (in_register(2*1+1)*COS9(7) - tb33 + in_register(2*5+1)*COS9(1) - in_register(2*7+1)*COS9(5));
    tmp2a := (-in_register(2*2+0)*COS9(4) + ta66 + in_register(2*4+0)*COS9(8) - in_register(2*8+0)*COS9(2));
    tmp2b := (-in_register(2*2+1)*COS9(4) + tb66 + in_register(2*4+1)*COS9(2) - in_register(2*8+1)*COS9(2));
    
    ----------------------------------------------------------------------
    ----MACR01(3)-------------------------
    ----------------------------------------------------------------------
    sum0 := tmp1a + tmp2a;
    sum1 := (tmp1b + tmp2b) * tfcos36(3);
    
    ----------------------------------------------------------------------
    ----MACR00(3)-------------------------
    ----------------------------------------------------------------------
    tmp  :=  sum0 + sum1;
    out2(9+3) <= tmp * wintab(27+3);
    out2(8-3) <= tmp * wintab(26-3);
    
    sum0 := sum0-sum1;
    
    tsbuf(32*(8-3)) <= out1(8-3)+ sum0 * wintab(8-3);
    tsbuf(32*(9+3)) <= out1(9+3)+ sum0 * wintab(9+3);
    
    ---------------------------------------------------------------------
    ----MACR02(5)--------------------------
    ---------------------------------------------------------------------
    sum0 := tmp2a - tmp1a;
    sum1 := (tmp2b - tmp1b) * tfcos36(5);
    
    ----------------------------------------------------------------------
    ----MACR00(5)-------------------------
    ----------------------------------------------------------------------
    tmp  :=  sum0 + sum1;
    out2(9+5) <= tmp * wintab(27+5);
    out2(8-5) <= tmp * wintab(26-5);
    
    sum0 := sum0-sum1;
    
    tsbuf(32*(8-5)) <= out1(8-5)+ sum0 * wintab(8-5);
    tsbuf(32*(9+5)) <= out1(9+5)+ sum0 * wintab(9+5);
    
  END PROCESS p4;
  
  p5:PROCESS(inbuf)
  
   VARIABLE tmp1a,tmp2a,tmp1b,tmp2b : INTEGER;
   VARIABLE sum0,sum1 : INTEGER;
   VARIABLE tmp : INTEGER;
   
   BEGIN
     
     sum0 := in_register(2*0+0) - in_register(2*2+0) + in_register(2*4+0) - in_register(2*6+0) + in_register(2*8+0);
     sum1 := (in_register(2*0+1) - in_register(2*2+1) + in_register(2*4+1) - in_register(2*6+1) + in_register(2*8+1)) * tfcos36(4);
     
    ----------------------------------------------------------------------
    ----MACR00(4)-------------------------
    ----------------------------------------------------------------------
    
    tmp  :=  sum0 + sum1;
    
    out2(9+4) <= tmp * wintab(27+4);
    out2(8-4) <= tmp * wintab(26-4);
    
    sum0 := sum0-sum1;
    
    tsbuf(32*(8-4)) <= out1(8-4)+ sum0 * wintab(8-4);
    tsbuf(32*(9+4)) <= out1(9+4)+ sum0 * wintab(9+4);
  END PROCESS p5;
    
END behavioral_2;
           
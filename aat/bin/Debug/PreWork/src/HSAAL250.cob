000000 IDENTIFICATION DIVISION.                                                 
000000 PROGRAM-ID. HSAAL250 .                                                   
000000 DATE-WRITTEN.                                                            
000000 DATE-COMPILED.                                                           
000000 ENVIRONMENT DIVISION.                                                    
000000 CONFIGURATION SECTION.                                                   
000000 SOURCE-COMPUTER.        ACOS.                                            
000000 OBJECT-COMPUTER.        ACOS.                                            
000000 DATA DIVISION.
      *20141028�ǉ��J�n 
       WORKING-STORAGE SECTION.
      *20141028�ǉ��I��                                                        
000000 01  WK-AREA.                                                             
000000   03  N-NUM                 PIC  9(18) USAGE COMP-3.                     
000000   03  R-NUM                 USAGE  COMP-2.                               
000000   03  WK-CNT                PIC  9(03).                                  
000000 LINKAGE SECTION.                                                         
000000 01  CLKUMN-PARM.                                                         
000000     COPY CLKUMN .                                                        
000000 PROCEDURE DIVISION USING CLKUMN-PARM .                                   
000000 MAIN-RTN .                                                               
000000     PERFORM P000-RTN THRU CX00002 .                                      
000000 CX00001. EXIT PROGRAM.                                                   
           DISPLAY "CX00001" UPON CONSOLE
000000 P000-RTN .                                                               
000000     IF NOT(�j�t�l�m���l�m = �j�t�l�m���l�q)GO TO CX00004.                              
000000     MOVE 1 TO �j�t�l�m�g�ݍ��킹�� .                                               
000000     GO TO CX00005.                                                       
000000 CX00004. IF NOT(�j�t�l�m���l�q = ZERO)GO TO CX00006.                            
           DISPLAY "CX00004" UPON CONSOLE
000000     MOVE 1 TO �j�t�l�m�g�ݍ��킹�� .                                               
000000     GO TO CX00005.                                                       
000000 CX00006.                                                                 
           DISPLAY "CX00006" UPON CONSOLE
000000     MOVE �j�t�l�m���l�q TO WK-CNT                                               
000000     MOVE �j�t�l�m���l�q TO R-NUM                                                
000000     MOVE �j�t�l�m���l�m TO N-NUM .                                              
000000 CX00007. IF NOT(WK-CNT > 1)GO TO CX00008.                                
           DISPLAY "CX00007" UPON CONSOLE
000000     COMPUTE N-NUM = N-NUM * (�j�t�l�m���l�m - (WK-CNT - 1) )                    
000000     COMPUTE R-NUM = R-NUM * (WK-CNT - 1)                                 
000000     COMPUTE WK-CNT = WK-CNT - 1 .                                        
000000     GO TO CX00007.                                                       
000000 CX00008.                                                                 
           DISPLAY "CX00008" UPON CONSOLE
000000     COMPUTE �j�t�l�m�g�ݍ��킹�� = N-NUM / R-NUM .                                 
000000 CX00005.                                                                 
           DISPLAY "CX00005" UPON CONSOLE
000000 CX00002. EXIT.                                                           

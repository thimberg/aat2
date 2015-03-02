000000 IDENTIFICATION DIVISION.                                                 
000000 PROGRAM-ID. HBHUN400 .                                                   
000000 DATE-WRITTEN.                                                            
000000 DATE-COMPILED.                                                           
000000 ENVIRONMENT DIVISION.                                                    
000000 CONFIGURATION SECTION.                                                   
000000 SOURCE-COMPUTER.        ACOS.                                            
000000 OBJECT-COMPUTER.        ACOS.                                            
000000* SPECIAL-NAMES.                                                           
000000*     ITG005  IS  SPCOMMIT.                                                
000000 INPUT-OUTPUT SECTION.                                                     
000000 FILE-CONTROL.                                                            
000000     SELECT  ���ʔ���\�v�j�e                                                     
000000*             ASSIGN              VIWKHIBT                                 
                   ASSIGN              VIWKHIBT-MSD
000000*             ORGANIZATION        VSAS  INDEXED                            
                   ORGANIZATION        INDEXED
000000             ACCESS   MODE       DYNAMIC                                  
000000             RECORD   KEY        �g�a�v�j�L�[����                                 
000000*             FILE STATUS          FL-STS1  FL-STS2.                       
                   FILE STATUS          FL-STS1. 
000000     SELECT  ���ʔ���\                                                        
000000*             ASSIGN            RQHIBETU-RDB APHIBETU-RKEY                 
                   ASSIGN            RQHIBETU-MSD
000000             ORGANIZATION      INDEXED                                    
000000             ACCESS            DYNAMIC                                    
000000             RECORD            ���ʔ���\�`�o                                    
000000*             FILE STATUS       FL-STS1  FL-STS2.                          
                   FILE STATUS          FL-STS1.
000000 DATA DIVISION.                                                           
000000 FILE SECTION.                                                            
000000 FD  ���ʔ���\�v�j�e                                                             
000000     LABEL  RECORD  STANDARD                                            
      *�ǉ�����
           VALUE  OF IDENTIFICATION IS "VIWKHIBT".
      *�ǉ�����
000000 01  ���ʔ���\�v�j�q.                                                            
000000     COPY CFHBTU REPLACING                                                
000000             //�g�a�s�t// BY //�g�a�v�j// .                                       
000000 FD  ���ʔ���\                                                                
000000     LABEL  RECORD  STANDARD                                             
      *�ǉ�����
           VALUE  OF IDENTIFICATION IS "RQHIBETU".
      *�ǉ�����
000000 01  ���ʔ���\�q.                                                              
000000     COPY CFHBTU .                                                        
000000 01  ���ʔ���\�`�o.                                                             
000000     COPY CFHBPT .                                                        
000000 WORKING-STORAGE SECTION.                                                 
000000 01  WORK-AREA.                                                           
000000   03  FILE-STATUS.                                                       
000000       05  FL-STS1                 PIC X(02).                             
000000       05  FL-STS2                 PIC 9(05).                             
000000   03  FL-END                      PIC 9(01).                             
000000   03  CNT-COMMIT                  PIC 9(05).                             
000000   03  ���p�Ґ���ϐ��G���A.                                                        
000000       05  �ϐ��b�n�l�l�h�s����    PIC 9(05).                                       
000000 PROCEDURE DIVISION .                                                     
000000 MAIN-RTN .                                                               
000000     PERFORM S000-RTN THRU CX00002                                        
000000     PERFORM P000-RTN THRU CX00003                                        
000000     PERFORM E000-RTN THRU CX00004 .                                      
000000 CX00001. STOP RUN.                                                       
           DISPLAY "CX00001" UPON CONSOLE
000000 S000-RTN .                                                               
000000       OPEN  INPUT  ���ʔ���\�v�j�e .                                            
000000     IF NOT(FL-STS1 NOT = "00")GO TO CX00006.                             
000000         DISPLAY "HBHUN400-01 VIWKHIBT OPEN ERROR ",                      
000000                              FL-STS1 " " FL-STS2                         
000000         STOP RUN .                                                     
000000 CX00006.                                                                 
           DISPLAY "CX00006" UPON CONSOLE
000000       OPEN  I-O    ���ʔ���\ .                                               
000000     IF NOT(FL-STS1 NOT = "00")GO TO CX00007.                             
000000         DISPLAY "HBHUN400-02 RQHIBETU OPEN ERROR ",                      
000000                              FL-STS1 " " FL-STS2                         
000000         STOP RUN .                                                     
000000 CX00007.                                                                 
           DISPLAY "CX00007" UPON CONSOLE
000000*       ACCEPT  �ϐ��b�n�l�l�h�s����  FROM  SPCOMMIT.                                
      *�ǉ�
             MOVE 0 TO �ϐ��b�n�l�l�h�s����
      *�ǉ�
000000 CX00002. EXIT.                                                           
000000 P000-RTN .                                                               
000000     MOVE ZERO TO CNT-COMMIT                                              
000000     MOVE ZERO TO FL-STS1                                                 
000000     MOVE ZERO TO FL-END .                                                
000000 CX00008. IF NOT(FL-END = ZERO)GO TO CX00009.                             
           DISPLAY "CX00008" UPON CONSOLE
000000       READ   ���ʔ���\�v�j�e       NEXT  AT  END  CONTINUE .                    
000000     IF NOT(FL-STS1 = "00")GO TO CX00010.                                 
000000     MOVE �g�a�v�j���t TO �g�a�o�s���t                                                
000000     MOVE �g�a�v�j����R�[�h TO �g�a�o�s����R�[�h                                          
000000     MOVE �g�a�v�j�̔����h�c TO �g�a�o�s�̔����h�c                                          
000000           START  ���ʔ���\     KEY  =  ���ʔ���\�`�o,                              
000000                                         INVALID   CONTINUE .             
000000     IF NOT(FL-STS1 = "00")GO TO CX00011.                                 
000000               READ   ���ʔ���\    NEXT  AT  END  CONTINUE .                  
000000     IF NOT(FL-STS1 = "00" OR "02")GO TO CX00012.                         
000000     MOVE ���ʔ���\�v�j�q TO ���ʔ���\�q                                              
000000*                   REWRITE  CURRENT  ���ʔ���\�q,                              
                          REWRITE    ���ʔ���\�q,
000000                                      INVALID CONTINUE .               
000000     IF NOT(FL-STS1 NOT = "00")GO TO CX00013.                             
000000                     DISPLAY,                                             
000000                       "HBHUN400-03 RQHIBETU REWRITE ERROR ",             
000000                                  FL-STS1 " " FL-STS2                     
000000                     STOP RUN .                                         
000000 CX00013.                                                                 
           DISPLAY "CX00013" UPON CONSOLE
000000     GO TO CX00014.                                                       
000000 CX00012.                                                                 
           DISPLAY "CX00012" UPON CONSOLE
000000                     DISPLAY "HBHUN400-04 RQHIBETU READ ERROR ",          
000000                                  FL-STS1 " " FL-STS2                     
000000                     STOP RUN .                                         
000000 CX00014.                                                                 
           DISPLAY "CX00014" UPON CONSOLE
000000     GO TO CX00015.                                                       
000000 CX00011. IF NOT(FL-STS1 = "23")GO TO CX00016.                            
           DISPLAY "CX00011" UPON CONSOLE
000000     MOVE ���ʔ���\�v�j�q TO ���ʔ���\�q                                              
000000               WRITE  ���ʔ���\�q      INVALID CONTINUE .                      
000000     IF NOT(FL-STS1 NOT = "00")GO TO CX00017.                             
000000                DISPLAY "HBHUN400-05 RQHIBETU WRITE ERROR ",              
000000                                    FL-STS1 " " FL-STS2                   
000000                 STOP RUN .                                             
000000 CX00017.                                                                 
           DISPLAY "CX00017" UPON CONSOLE
000000     GO TO CX00015.                                                       
000000 CX00016.                                                                 
           DISPLAY "CX00016" UPON CONSOLE
000000                 DISPLAY "HBHUN400-06 RQHIBETU START ERROR ",             
000000                              FL-STS1 " " FL-STS2                         
000000                 STOP RUN .                                             
000000 CX00015.                                                                 
           DISPLAY "CX00015" UPON CONSOLE
000000     COMPUTE CNT-COMMIT = CNT-COMMIT + 1 .                                
000000     IF NOT(�ϐ��b�n�l�l�h�s���� < CNT-COMMIT)GO TO CX00018.                        
000000             COMMIT                                                       
000000     MOVE ZERO TO CNT-COMMIT .                                            
000000 CX00018.                                                                 
           DISPLAY "CX00018" UPON CONSOLE
000000     GO TO CX00019.                                                       
000000 CX00010. IF NOT(FL-STS1 = "10")GO TO CX00020.                            
           DISPLAY "CX00010" UPON CONSOLE
000000     MOVE 1 TO FL-END .                                                   
000000     GO TO CX00019.                                                       
000000 CX00020.                                                                 
           DISPLAY "CX00020" UPON CONSOLE
000000           DISPLAY "HBHUN400-07 VIWKHIBT READ ERROR ",                    
000000                              FL-STS1 " " FL-STS2                         
000000           STOP RUN .                                                   
000000 CX00019.                                                                 
           DISPLAY "CX00019" UPON CONSOLE
000000     GO TO CX00008.                                                       
000000 CX00009.                                                                 
           DISPLAY "CX00009" UPON CONSOLE
000000 CX00003. EXIT.                                                           
000000 E000-RTN .                                                               
000000       COMMIT                                                             
000000       CLOSE  ���ʔ���\�v�j�e .                                                  
000000     IF NOT(FL-STS1 NOT = "00")GO TO CX00021.                             
000000         DISPLAY "HBHUN400-08 VIWKHIBT CLOSE ERROR ",                     
000000                              FL-STS1 " " FL-STS2                         
000000         STOP RUN .                                                     
000000 CX00021.                                                                 
           DISPLAY "CX00021" UPON CONSOLE
000000       CLOSE  ���ʔ���\ .                                                     
000000     IF NOT(FL-STS1 NOT = "00")GO TO CX00022.                             
000000         DISPLAY "HBHUN400-09 RQHIBETU CLOSE ERROR ",                     
000000                              FL-STS1 " " FL-STS2                         
000000         STOP RUN .                                                     
000000 CX00022.                                                                 
           DISPLAY "CX00022" UPON CONSOLE
000000*       @ZCTMSGOT(MSGID=#BH001,                                            
000000*                 PROGID=HBHUN400); .                                      
000000 CX00004. EXIT.                                                           

000000 IDENTIFICATION DIVISION.                                                 
000000 PROGRAM-ID. HBHUN551 .                                                   
000000 DATE-WRITTEN.                                                            
000000 DATE-COMPILED.                                                           
000000 ENVIRONMENT DIVISION.                                                    
000000 CONFIGURATION SECTION.                                                   
000000 SOURCE-COMPUTER.        ACOS.                                            
000000 OBJECT-COMPUTER.        ACOS.                                            
      *20141114C³ŠJŽn
000000* SPECIAL-NAMES.                                                           
000000*     ITG005  IS  SPCOMMIT.                                                
      *20141114C³I—¹
000000 INPUT-OUTPUT SECTION.                                                     
000000 FILE-CONTROL.                                                            
000000     SELECT ‰^—pŠÇ—‚e                                                         
000000                  ASSIGN             VRUNYKAN-MSD                             
000000                  ORGANIZATION       IS  RELATIVE                       
000000                  ACCESS             RANDOM                               
000000                  RELATIVE           UNK-RKEY                             
000000*                  FILE STATUS          FL-STS1  FL-STS2.                   
000000                  FILE STATUS          FL-STS1.                   
000000     SELECT ¢‘ã•Ê‰^—pŠÇ—‚e                                                      
000000                  ASSIGN             VRSEUNKN-MSD                             
000000                  ORGANIZATION       IS  RELATIVE                       
000000                  ACCESS             RANDOM                               
000000                  RELATIVE           SUK-RKEY                             
000000*                  FILE STATUS          FL-STS1  FL-STS2.                   
000000                  FILE STATUS          FL-STS1.                   
000000     SELECT ”­”„ŠJŽnƒQ[ƒ€‚e|‚`                                                    
000000                  ASSIGN             VIKASGMA-MSD                             
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       RANDOM                               
000000                  RECORD  KEY        ‚j‚`‚f‚lƒQ[ƒ€‚h‚c                            
000000*                  FILE STATUS          FL-STS1  FL-STS2.                   
000000                  FILE STATUS          FL-STS1.                   
000000     SELECT ”­”„ŠJŽnƒQ[ƒ€‚e|‚a                                                    
000000                  ASSIGN             VIKASGMB-MSD                             
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       RANDOM                               
000000                  RECORD  KEY        ‚j‚`‚f‚l‚aƒQ[ƒ€‚h‚c                           
000000*                  FILE STATUS          FL-STS1  FL-STS2.                   
000000                  FILE STATUS          FL-STS1.                   
000000     SELECT “ú•Ê”Ì”„‚b‚g•Ê”„ê”„ã‚v‚e                                                 
000000                  ASSIGN             SQWHURCH-MSD                             
000000                  ORGANIZATION       SEQUENTIAL                           
000000                  ACCESS  MODE       SEQUENTIAL                           
000000*                  FILE STATUS          FL-STS1  FL-STS2.                   
000000                  FILE STATUS          FL-STS1.                   
000000     SELECT ”„ê‚e                                                           
000000                  ASSIGN             VIURIBA-MSD                              
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       RANDOM                               
000000                  RECORD  KEY        ‚t‚q‚a‚`”„êƒR[ƒh                            
000000*                  FILE STATUS          FL-STS1  FL-STS2.                   
000000                  FILE STATUS          FL-STS1.                   
000000     SELECT ‹ÆŽÒ‚e                                                           
000000                  ASSIGN             VIGYOSYA-MSD                             
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       RANDOM                               
000000                  RECORD  KEY        ‚f‚x‚r‚`‹ÆŽÒƒR[ƒh‚w                            
000000*                  FILE STATUS          FL-STS1  FL-STS2.                   
000000                  FILE STATUS          FL-STS1.                   
000000     SELECT “ú•Ê”Ì”„‚b‚g•Ê”„ã—ÝŒv‚e                                                  
000000                  ASSIGN             VIHCHNUR-MSD                             
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       DYNAMIC                              
000000                  RECORD  KEY        ‚g‚b‚g‚mƒŒƒR[ƒhƒL[                           
000000*                  FILE STATUS          FL-STS1  FL-STS2.                   
000000                  FILE STATUS          FL-STS1.                   
000000     SELECT ”Ì”„ƒ`ƒƒƒlƒ‹•Ê”„ã—ÝŒv‚e                                                  
000000                  ASSIGN             VICHNURI-MSD                             
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       RANDOM                               
000000                  RECORD  KEY        ‚b‚g‚t‚qƒŒƒR[ƒhƒL[                           
000000*                  FILE STATUS          FL-STS1  FL-STS2.                   
000000                  FILE STATUS          FL-STS1.                   
000000 DATA DIVISION.                                                           
000000 FILE SECTION.                                                            
000000 FD  “ú•Ê”Ì”„‚b‚g•Ê”„ê”„ã‚v‚e                                                        
000000     LABEL RECORD STANDARD                                               
      *20141114’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "SQWHURCH".
      *20141114’Ç‰ÁI—¹
000000 01  “ú•Ê”Ì”„‚b‚g•Ê”„ê”„ã‚v‚q.                                                       
000000     COPY CFWUBU .                                                        
000000 FD  ”­”„ŠJŽnƒQ[ƒ€‚e|‚`                                                           
000000     LABEL RECORD STANDARD                                               
      *20141114’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "VIKASGMA".
      *20141114’Ç‰ÁI—¹
000000 01  ”­”„ŠJŽnƒQ[ƒ€‚q|‚`.                                                          
000000     COPY CFKAGM .                                                        
000000 FD  ”­”„ŠJŽnƒQ[ƒ€‚e|‚a                                                           
000000     LABEL RECORD STANDARD                                               
      *20141114’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "VIKASGMB".
      *20141114’Ç‰ÁI—¹
000000 01  ”­”„ŠJŽnƒQ[ƒ€‚q|‚a.                                                          
000000     COPY CFKAGM REPLACING                                                
000000                 //‚j‚`‚f‚l//  BY  //‚j‚`‚f‚l‚a// .                                
000000 FD  ‰^—pŠÇ—‚e                                                                
      *20141114C³ŠJŽn                                                          
000000*     RECORD  VARYING  IN  SIZE
           LABEL RECORD STANDARD
      *20141114C³I—¹
      *20141114’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "VRUNYKAN".
      *20141114’Ç‰ÁI—¹
000000* 01  ‰^—pŠÇ—‚q‚Q.                                                              
000000*     COPY CFUNK2 .                                                        
000000 01  ‰^—pŠÇ—‚q‚P.                                                              
000000     COPY CFUNK1 .                                                        
000000* 01  ‰^—pŠÇ—‚q‚R.                                                              
000000*     COPY CFUNK3 .                                                        
000000 FD  ¢‘ã•Ê‰^—pŠÇ—‚e                                                             
      *20141114C³ŠJŽn                                                          
000000*     RECORD  VARYING  IN  SIZE
           LABEL RECORD STANDARD
      *20141114C³I—¹
      *20141114’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "VRSEUNKN".
      *20141114’Ç‰ÁI—¹
000000 01  ¢‘ã•Ê‰^—pŠÇ—‚q.                                                            
000000     COPY CFSUK1 .                                                        
000000 FD  ‹ÆŽÒ‚e                                                                  
000000     LABEL RECORD STANDARD                                               
      *20141114’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "VIGYOSYA".
      *20141114’Ç‰ÁI—¹
000000 01  ‹ÆŽÒ‚q.                                                                 
000000     COPY CFGYSA .                                                        
000000 FD  ”„ê‚e                                                                  
000000     LABEL RECORD STANDARD                                               
      *20141114’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "VIURIBA".
      *20141114’Ç‰ÁI—¹
000000 01  ”„ê‚q.                                                                 
000000     COPY CFURBA .                                                        
000000 FD  “ú•Ê”Ì”„‚b‚g•Ê”„ã—ÝŒv‚e                                                         
000000     LABEL RECORD STANDARD                                               
      *20141114’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "VIHCHNUR".
      *20141114’Ç‰ÁI—¹
000000 01  “ú•Ê”Ì”„‚b‚g•Ê”„ã—ÝŒv‚q.                                                        
000000     COPY CFHCHN .                                                        
000000 FD  ”Ì”„ƒ`ƒƒƒlƒ‹•Ê”„ã—ÝŒv‚e                                                         
000000     LABEL RECORD STANDARD                                               
      *20141114’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "VICHNURI".
      *20141114’Ç‰ÁI—¹
000000 01  ”Ì”„ƒ`ƒƒƒlƒ‹•Ê”„ã—ÝŒv‚q.                                                        
000000     COPY CFCHUR .                                                        
000000 WORKING-STORAGE SECTION.                                                 
000000 01  ì‹ÆƒGƒŠƒA.                                                               
000000   03  ‚v‚j|”„ã‹àŠz               PIC 9(13)  USAGE  COMP-3.                    
000000   03  ‚v‚j|¢‘ã‹æ•ª               PIC 9(01).                                   
000000   03  ‚v‚j|”N“x                   PIC 9(04).                                 
000000   03  ‚v‚j|ƒoƒbƒ`‹Æ–±“ú•t         PIC 9(08).                                      
000000   03  ‚v‚j|”„êƒR[ƒh             PIC X(06).                                    
000000   03  ‚v‚j|ƒQ[ƒ€‚h‚c.                                                          
000000     05  ‚v‚j|ƒQ[ƒ€ƒ^ƒCƒv         PIC 9(02).                                     
000000     05  ‚v‚j|ƒuƒƒbƒNƒR[ƒh       USAGE COMP-1.                                   
000000     05  ‚v‚j|‰ñ†                 USAGE COMP-1.                              
000000   03  ‚v‚j|”„ã‚s‚a‚k             USAGE COMP-1.                                 
000000   03  ‚v‚j|ŽÀ”­”„ŠJŽn“ú           PIC 9(08).                                     
000000   03  ‚v‚j|ŽÀ”­”„ŠJŽn“ú‚q         REDEFINES  ‚v‚j|ŽÀ”­”„ŠJŽn“ú.                           
000000     05  ‚v‚j|ŽÀ”­”„ŠJŽn“ú‚x       PIC 9(04).                                      
000000     05  ‚v‚j|ŽÀ”­”„ŠJŽn“ú‚l       PIC 9(02).                                      
000000     05  ‚v‚j|ŽÀ”­”„ŠJŽn“ú‚c       PIC 9(02).                                      
000000 01  —˜—pŽÒ§Œä•Ï”ƒGƒŠƒA.                                                          
000000   03  •Ï”‚b‚n‚l‚l‚h‚sŒ”         PIC 9(05).                                      
000000 01  ƒJƒEƒ“ƒ^.                                                                
000000   03  ‚b‚m‚sƒQ[ƒ€I—¹ó‘Ô         USAGE COMP-1.                                   
000000   03  ‚b‚m‚s|”„ã‚s‚a‚k           USAGE COMP-1.                                  
000000   03  CNT-COMMIT                   PIC 9(05).                            
000000 01  ‘Š‘ÎƒL[.                                                                
      *20141114C³ŠJŽn
000000*   03  UNK-RKEY                     USAGE COMP-2.                         
000000*   03  SUK-RKEY                     USAGE COMP-2.                         
000000   03  UNK-RKEY                     PIC 9(08).                         
000000   03  SUK-RKEY                     PIC 9(08).                         
      *20141114C³I—¹
000000 01  ƒtƒ‰ƒO.                                                                 
000000   03  ƒtƒ@ƒCƒ‹ƒXƒe[ƒ^ƒX.                                                         
000000     05  FL-STS1                    PIC X(02).                            
000000     05  FL-STS2                    PIC 9(05).                            
000000   03  ƒtƒ@ƒCƒ‹I—¹ƒtƒ‰ƒO.                                                         
000000     05  ‚d‚m‚c|”„ã‚v‚e           PIC 9(01).                                    
000000   03  ƒe[ƒuƒ‹I—¹ƒtƒ‰ƒO.                                                         
000000     05  ‚d‚m‚c|ƒQ[ƒ€I—¹ó‘Ô     PIC 9(01).                                       
000000 01  ‚s“ú•Ê”Ì”„‚b‚g•Ê”„ã—ÝŒv.                                                        
      *20141114C³ŠJŽn
000000*   02  ‚s—ÝŒv“ú•Ê”Ì”„‚b‚g•Ê—ÝŒv    OCCURS 15000.                                      
         02  ‚s—ÝŒv“ú•Ê”Ì”„‚b‚g•Ê—ÝŒv    OCCURS 1500.
      *20141114C³I—¹
000000     03  ‚s—ÝŒvƒŒƒR[ƒhƒL[.                                                       
000000       05  ‚s—ÝŒv”N“x                    PIC 9(4).                             
000000       05  ‚s—ÝŒv”Ì”„ƒ`ƒƒƒlƒ‹            PIC 9(2).                                 
000000       05  ‚s—ÝŒvƒQ[ƒ€‚h‚c.                                                      
000000         07  ‚s—ÝŒvƒQ[ƒ€ƒ^ƒCƒv          PIC 9(2).                                 
000000         07  ‚s—ÝŒvƒuƒƒbƒNƒR[ƒh        USAGE COMP-1.                              
000000         07  ‚s—ÝŒv‰ñ†                  USAGE COMP-1.                         
000000     03  ‚s—ÝŒv”„ã‹àŠz        PIC 9(13) USAGE COMP-3.                           
000000 PROCEDURE DIVISION .                                                     
000000 MAIN-RTN .                                                               
000000     PERFORM S000-RTN THRU CX00002                                        
000000     PERFORM P000-RTN THRU CX00003                                        
000000     PERFORM E000-RTN THRU CX00004 .                                      
000000 CX00001. STOP RUN.                                                       
000000 S000-RTN .                                                               
      *20141114C³ŠJŽn
000000*       ACCEPT  •Ï”‚b‚n‚l‚l‚h‚sŒ”  FROM  SPCOMMIT.                                
             MOVE ZERO TO •Ï”‚b‚n‚l‚l‚h‚sŒ”.
      *20141114C³I—¹
000000       OPEN INPUT ‰^—pŠÇ—‚e .                                                 
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00011.                             
000000         DISPLAY "HBHUN551-01 VRUNYKAN OPEN ERROR " ,                     
000000                           FL-STS1 " " FL-STS2.                           
000000         STOP RUN .                                                     
000000 CX00011.                                                                 
000000       OPEN INPUT ¢‘ã•Ê‰^—pŠÇ—‚e .                                              
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00012.                             
000000         DISPLAY "HBHUN551-02 VRSEUNKN OPEN ERROR " ,                     
000000                           FL-STS1 " " FL-STS2.                           
000000         STOP RUN .                                                     
000000 CX00012.                                                                 
000000       OPEN INPUT ”„ê‚e .                                                   
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00013.                             
000000         DISPLAY "HBHUN551-03 VIURIBA OPEN ERROR " ,                      
000000                           FL-STS1 " " FL-STS2.                           
000000         STOP RUN .                                                     
000000 CX00013.                                                                 
000000       OPEN INPUT ‹ÆŽÒ‚e .                                                   
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00014.                             
000000         DISPLAY "HBHUN551-04 VIGYOSYA OPEN ERROR " ,                     
000000                           FL-STS1 " " FL-STS2.                           
000000         STOP RUN .                                                     
000000 CX00014.                                                                 
000000       OPEN INPUT “ú•Ê”Ì”„‚b‚g•Ê”„ê”„ã‚v‚e .                                         
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00015.                             
000000         DISPLAY "HBHUN551-05 SQWHURCH OPEN ERROR " ,                     
000000                           FL-STS1 " " FL-STS2.                           
000000         STOP RUN .                                                     
000000 CX00015.                                                                 
000000       OPEN I-O   “ú•Ê”Ì”„‚b‚g•Ê”„ã—ÝŒv‚e .                                          
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00016.                             
000000         DISPLAY "HBHUN551-06 VIHCHNUR OPEN ERROR " ,                     
000000                           FL-STS1 " " FL-STS2.                           
000000         STOP RUN .                                                     
000000 CX00016.                                                                 
000000       OPEN I-O   ”Ì”„ƒ`ƒƒƒlƒ‹•Ê”„ã—ÝŒv‚e .                                          
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00017.                             
000000         DISPLAY "HBHUN551-07 VICHNURI OPEN ERROR " ,                     
000000                           FL-STS1 " " FL-STS2.                           
000000         STOP RUN .                                                     
000000 CX00017.                                                                 
000000     MOVE 1 TO UNK-RKEY                                                   
000000       READ  ‰^—pŠÇ—‚e INVALID CONTINUE .                                     
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00018.                             
000000         DISPLAY "HBHUN551-08 VRUNYKAN READ ERROR ",                      
000000                     FL-STS1 " " FL-STS2                                  
000000         STOP RUN .                                                     
000000 CX00018.                                                                 
000000     IF NOT(‚t‚m‚j‚P‹Æ–±“ú•t = 
            ‚t‚m‚j‚Pƒoƒbƒ`‹Æ–±“ú•t) GO TO CX00019.                         
000000     MOVE ‚t‚m‚j‚P¢‘ã‹æ•ª TO ‚v‚j|¢‘ã‹æ•ª .                                           
000000     GO TO CX00020.                                                       
000000 CX00019.                                                                 
000000     IF NOT(‚t‚m‚j‚P¢‘ã‹æ•ª = 1) GO TO CX00021.                                   
000000     MOVE 2 TO ‚v‚j|¢‘ã‹æ•ª .                                                  
000000     GO TO CX00022.                                                       
000000 CX00021.                                                                 
000000     MOVE 1 TO ‚v‚j|¢‘ã‹æ•ª .                                                  
000000 CX00022.                                                                 
000000 CX00020.                                                                 
000000     IF NOT(‚v‚j|¢‘ã‹æ•ª = 1) GO TO CX00023.                                    
000000         OPEN  INPUT  ”­”„ŠJŽnƒQ[ƒ€‚e|‚` .                                        
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00024.                             
000000           DISPLAY "HBHUN551-09 VIKASGMA OPEN ERROR ",                    
000000                     FL-STS1 " " FL-STS2                                  
000000           STOP RUN .                                                   
000000 CX00024.                                                                 
000000     GO TO CX00025.                                                       
000000 CX00023.                                                                 
000000         OPEN  INPUT  ”­”„ŠJŽnƒQ[ƒ€‚e|‚a .                                        
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00026.                             
000000           DISPLAY "HBHUN551-10 VIKASGMB OPEN ERROR ",                    
000000                     FL-STS1 " " FL-STS2                                  
000000           STOP RUN .                                                   
000000 CX00026.                                                                 
000000 CX00025.                                                                 
000000       INITIALIZE ‚s“ú•Ê”Ì”„‚b‚g•Ê”„ã—ÝŒv .                                          
000000 CX00002. EXIT.                                                           
000000 P000-RTN .                                                               
000000     PERFORM P100-RTN THRU CX00005                                        
000000     PERFORM P200-RTN THRU CX00006                                        
000000     PERFORM P300-RTN THRU CX00009 .                                      
000000 CX00003. EXIT.                                                           
000000 E000-RTN .                                                               
000000       COMMIT                                                             
000000       CLOSE ‰^—pŠÇ—‚e .                                                      
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00027.                             
000000         DISPLAY "HBHUN551-11 VRUNYKAN CLOSE ERROR " ,                    
000000                          FL-STS1 " " FL-STS2.                            
000000         STOP RUN .                                                     
000000 CX00027.                                                                 
000000       CLOSE ¢‘ã•Ê‰^—pŠÇ—‚e .                                                   
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00028.                             
000000         DISPLAY "HBHUN551-12 VRSEUNKN CLOSE ERROR " ,                    
000000                          FL-STS1 " " FL-STS2.                            
000000         STOP RUN .                                                     
000000 CX00028.                                                                 
000000       CLOSE ”„ê‚e .                                                        
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00029.                             
000000         DISPLAY "HBHUN551-13 VIURIBA CLOSE ERROR " ,                     
000000                          FL-STS1 " " FL-STS2.                            
000000         STOP RUN .                                                     
000000 CX00029.                                                                 
000000       CLOSE ‹ÆŽÒ‚e .                                                        
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00030.                             
000000         DISPLAY "HBHUN551-14 VIGYOSYA CLOSE ERROR " ,                    
000000                          FL-STS1 " " FL-STS2.                            
000000         STOP RUN .                                                     
000000 CX00030.                                                                 
000000       CLOSE “ú•Ê”Ì”„‚b‚g•Ê”„ê”„ã‚v‚e .                                              
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00031.                             
000000         DISPLAY "HBHUN551-15 SQWHURCH CLOSE ERROR " ,                    
000000                          FL-STS1 " " FL-STS2.                            
000000         STOP RUN .                                                     
000000 CX00031.                                                                 
000000       CLOSE “ú•Ê”Ì”„‚b‚g•Ê”„ã—ÝŒv‚e .                                               
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00032.                             
000000         DISPLAY "HBHUN551-16 VIHCHNUR CLOSE ERROR " ,                    
000000                          FL-STS1 " " FL-STS2.                            
000000         STOP RUN .                                                     
000000 CX00032.                                                                 
000000       CLOSE ”Ì”„ƒ`ƒƒƒlƒ‹•Ê”„ã—ÝŒv‚e .                                               
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00033.                             
000000         DISPLAY "HBHUN551-17 VICHNURI CLOSE ERROR " ,                    
000000                          FL-STS1 " " FL-STS2.                            
000000         STOP RUN .                                                     
000000 CX00033.                                                                 
000000     IF NOT(‚v‚j|¢‘ã‹æ•ª = 1) GO TO CX00034.                                    
000000         CLOSE  ”­”„ŠJŽnƒQ[ƒ€‚e|‚` .                                              
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00035.                             
000000           DISPLAY "HBHUN551-18 VIKASGMA CLOSE ERROR ",                   
000000                     FL-STS1 " " FL-STS2                                  
000000           STOP RUN .                                                   
000000 CX00035.                                                                 
000000     GO TO CX00036.                                                       
000000 CX00034.                                                                 
000000         CLOSE  ”­”„ŠJŽnƒQ[ƒ€‚e|‚a .                                              
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00037.                             
000000           DISPLAY "HBHUN551-19 VIKASGMB CLOSE ERROR ",                   
000000                     FL-STS1 " " FL-STS2                                  
000000           STOP RUN .                                                   
000000 CX00037.                                                                 
000000 CX00036.                                                                 
      *20141114C³ŠJŽn
000000*       @ZCTMSGOT(MSGID = #BH001,                                          
000000*                 PROGID = HBHUN551); .                                    
      *20141114C³I—¹
000000 CX00004. EXIT.                                                           
000000 P100-RTN .                                                               
000000     MOVE 0 TO ‚d‚m‚c|”„ã‚v‚e                                                   
000000     MOVE 0 TO ‚v‚j|”„ã‹àŠz                                                    
000000     MOVE 0 TO CNT-COMMIT                                                 
000000       READ “ú•Ê”Ì”„‚b‚g•Ê”„ê”„ã‚v‚e AT END    ,                                     
000000                        MOVE 1 TO ‚d‚m‚c|”„ã‚v‚e.                               
000000     IF NOT(FL-STS1 NOT = "00" AND "10") GO TO CX00038.                    
000000         DISPLAY "HBHUN551-20 SQWHURCH READ ERROR " ,                     
000000                          FL-STS1 " " FL-STS2                             
000000         STOP RUN .                                                     
000000 CX00038.                                                                 
000000     MOVE ‚v‚t‚a‚t”„êƒR[ƒh TO ‚v‚j|”„êƒR[ƒh .                                         
000000     MOVE ‚v‚t‚a‚tƒQ[ƒ€‚h‚c TO ‚v‚j|ƒQ[ƒ€‚h‚c .                                         
000000 CX00039. IF NOT(‚d‚m‚c|”„ã‚v‚e = 0) GO TO CX00040.                              
000000 CX00041. IF NOT( (‚d‚m‚c|”„ã‚v‚e = 0) AND 
            (‚v‚j|”„êƒR[ƒh = ‚v‚t‚a‚t”„êƒR[ƒh) AND           
000000     (‚v‚j|ƒQ[ƒ€‚h‚c = ‚v‚t‚a‚tƒQ[ƒ€‚h‚c)) GO TO CX00042.                                
000000     COMPUTE ‚v‚j|”„ã‹àŠz = ‚v‚j|”„ã‹àŠz +                                          
000000                             ‚v‚t‚a‚t”„ã‹àŠz                                     
000000           READ “ú•Ê”Ì”„‚b‚g•Ê”„ê”„ã‚v‚e AT END    ,                                 
000000                        MOVE 1 TO ‚d‚m‚c|”„ã‚v‚e .                              
000000     IF NOT(FL-STS1 NOT = "00" AND "10") GO TO CX00043.                    
000000             DISPLAY "HBHUN551-21 SQWHURCH READ ERROR " ,                 
000000                          FL-STS1 " " FL-STS2                             
000000             STOP RUN .                                                 
000000 CX00043.                                                                 
000000     GO TO CX00041.                                                       
000000 CX00042.                                                                 
000000     IF NOT(‚v‚j|¢‘ã‹æ•ª = 1) GO TO CX00044.                                    
000000     MOVE ‚v‚j|ƒQ[ƒ€‚h‚c TO ‚j‚`‚f‚lƒQ[ƒ€‚h‚c                                           
000000           READ  ”­”„ŠJŽnƒQ[ƒ€‚e|‚` INVALID CONTINUE .                            
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00045.                             
000000             DISPLAY "HBHUN551-22 VIKASGMA READ ERROR ",                  
000000                       FL-STS1 " " FL-STS2                                
000000             STOP RUN .                                                 
000000 CX00045.                                                                 
000000     MOVE ‚j‚`‚f‚lŽÀ”­”„ŠJŽn“ú TO ‚v‚j|ŽÀ”­”„ŠJŽn“ú .                                       
000000     GO TO CX00046.                                                       
000000 CX00044.                                                                 
000000     MOVE ‚v‚j|ƒQ[ƒ€‚h‚c TO ‚j‚`‚f‚l‚aƒQ[ƒ€‚h‚c                                          
000000           READ  ”­”„ŠJŽnƒQ[ƒ€‚e|‚a INVALID CONTINUE .                            
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00047.                             
000000             DISPLAY "HBHUN551-23 VIKASGMB READ ERROR ",                  
000000                       FL-STS1 " " FL-STS2                                
000000             STOP RUN .                                                 
000000 CX00047.                                                                 
000000     MOVE ‚j‚`‚f‚l‚aŽÀ”­”„ŠJŽn“ú TO ‚v‚j|ŽÀ”­”„ŠJŽn“ú .                                      
000000 CX00046.                                                                 
000000     IF NOT(‚v‚j|ŽÀ”­”„ŠJŽn“ú‚l >= 1 AND 
            ‚v‚j|ŽÀ”­”„ŠJŽn“ú‚l <= 3) GO TO CX00048.            
000000     COMPUTE ‚v‚j|”N“x = ‚v‚j|ŽÀ”­”„ŠJŽn“ú‚x - 1 .                                     
000000     GO TO CX00049.                                                       
000000 CX00048.                                                                 
000000     MOVE ‚v‚j|ŽÀ”­”„ŠJŽn“ú‚x TO ‚v‚j|”N“x .                                           
000000 CX00049.                                                                 
000000     MOVE ‚v‚j|”„êƒR[ƒh TO ‚t‚q‚a‚`”„êƒR[ƒh                                           
000000         READ  ”„ê‚e INVALID CONTINUE .                                     
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00050.                             
000000           DISPLAY "HBHUN551-24 VIURIBA READ ERROR ",                     
000000                     FL-STS1 " " FL-STS2                                  
000000           STOP RUN .                                                   
000000 CX00050.                                                                 
000000     MOVE ‚t‚q‚a‚`‹ÆŽÒƒR[ƒh TO ‚f‚x‚r‚`‹ÆŽÒƒR[ƒh                                          
000000         READ  ‹ÆŽÒ‚e INVALID CONTINUE .                                     
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00051.                             
000000           DISPLAY "HBHUN551-25 VIGYOSYA READ ERROR ",                    
000000                     FL-STS1 " " FL-STS2                                  
000000           STOP RUN .                                                   
000000 CX00051.                                                                 
           DISPLAY "--Before --LINE:433--  ‚g‚b‚g‚m”N“x = " ‚g‚b‚g‚m”N“x UPON CONSOLE
           DISPLAY "--Before --LINE:434--  ‚g‚b‚g‚m”Ì”„ƒ`ƒƒƒlƒ‹ = " ‚g‚b‚g‚m”Ì”„ƒ`ƒƒƒlƒ‹ UPON CONSOLE
000000     MOVE ‚v‚j|”N“x TO ‚g‚b‚g‚m”N“x                                                 
000000     MOVE ‚f‚x‚r‚`”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh TO ‚g‚b‚g‚m”Ì”„ƒ`ƒƒƒlƒ‹                                     
000000     MOVE ‚v‚j|ƒQ[ƒ€‚h‚c TO ‚g‚b‚g‚mƒQ[ƒ€‚h‚c                                           
000000         READ  “ú•Ê”Ì”„‚b‚g•Ê”„ã—ÝŒv‚e ,                                             
000000                                  INVALID CONTINUE .                      
000000     IF NOT(FL-STS1 = "00") GO TO CX00052.                                 
           DISPLAY "--Before --LINE:441--  ‚g‚b‚g‚m”„ã‹àŠz = " ‚g‚b‚g‚m”„ã‹àŠz UPON CONSOLE
000000     COMPUTE ‚g‚b‚g‚m”„ã‹àŠz = ‚g‚b‚g‚m”„ã‹àŠz + ‚v‚j|”„ã‹àŠz                                
000000           REWRITE “ú•Ê”Ì”„‚b‚g•Ê”„ã—ÝŒv‚q ,                                         
000000                                    INVALID CONTINUE .                    
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00053.                             
000000             DISPLAY "HBHUN551-26 VIHCHNUR REWRITE ERROR ",               
000000                       FL-STS1 " " FL-STS2                                
000000             STOP RUN .                                                 
000000 CX00053.                                                                 
000000     GO TO CX00054.                                                       
000000 CX00052. IF NOT(FL-STS1 = "23") GO TO CX00055.                            
           DISPLAY "--Before --LINE:452--  ‚g‚b‚g‚m”N“x = " ‚g‚b‚g‚m”N“x UPON CONSOLE
           DISPLAY "--Before --LINE:453--  ‚g‚b‚g‚m”Ì”„ƒ`ƒƒƒlƒ‹ = " ‚g‚b‚g‚m”Ì”„ƒ`ƒƒƒlƒ‹ UPON CONSOLE
           DISPLAY "--Before --LINE:454--  ‚g‚b‚g‚m”„ã‹àŠz = " ‚g‚b‚g‚m”„ã‹àŠz UPON CONSOLE
           DISPLAY "--Before --LINE:455--  ‚g‚b‚g‚m—\”õ = " ‚g‚b‚g‚m—\”õ UPON CONSOLE
000000     MOVE ‚v‚j|”N“x TO ‚g‚b‚g‚m”N“x                                                 
000000     MOVE ‚f‚x‚r‚`”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh TO ‚g‚b‚g‚m”Ì”„ƒ`ƒƒƒlƒ‹                                     
000000     MOVE ‚v‚j|ƒQ[ƒ€‚h‚c TO ‚g‚b‚g‚mƒQ[ƒ€‚h‚c                                           
000000     MOVE ‚v‚j|”„ã‹àŠz TO ‚g‚b‚g‚m”„ã‹àŠz                                             
000000     MOVE SPACE TO ‚g‚b‚g‚m—\”õ                                                 
000000           WRITE “ú•Ê”Ì”„‚b‚g•Ê”„ã—ÝŒv‚q ,                                           
000000                                    INVALID CONTINUE .                    
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00056.                             
000000             DISPLAY "HBHUN551-27 VIHCHNUR WRITE ERROR ",                 
000000                       FL-STS1 " " FL-STS2                                
000000             STOP RUN .                                                 
000000 CX00056.                                                                 
000000     GO TO CX00054.                                                       
000000 CX00055.                                                                 
000000           DISPLAY "HBHUN551-28 VIHCHNUR READ ERROR ",                    
000000                     FL-STS1 " " FL-STS2                                  
000000           STOP RUN .                                                   
000000 CX00054.                                                                 
000000     COMPUTE CNT-COMMIT = CNT-COMMIT + 1 .                                
000000     IF NOT(•Ï”‚b‚n‚l‚l‚h‚sŒ” < CNT-COMMIT) GO TO CX00057.                        
000000           COMMIT                                                         
000000     MOVE 0 TO CNT-COMMIT .                                               
000000 CX00057.                                                                 
000000     COMPUTE CNT-COMMIT = CNT-COMMIT + 1 .                                
000000     IF NOT(•Ï”‚b‚n‚l‚l‚h‚sŒ” < CNT-COMMIT) GO TO CX00058.                        
000000           COMMIT                                                         
000000     MOVE 0 TO CNT-COMMIT .                                               
000000 CX00058.                                                                 
000000     MOVE ‚v‚t‚a‚t”„êƒR[ƒh TO ‚v‚j|”„êƒR[ƒh                                           
000000     MOVE ‚v‚t‚a‚tƒQ[ƒ€‚h‚c TO ‚v‚j|ƒQ[ƒ€‚h‚c                                           
000000     MOVE 0 TO ‚v‚j|”„ã‹àŠz .                                                  
000000     GO TO CX00039.                                                       
000000 CX00040.                                                                 
000000 CX00005. EXIT.                                                           
000000 P200-RTN .                                                               
000000     PERFORM P210-RTN THRU CX00007 .                                      
000000     IF NOT(‚v‚j|¢‘ã‹æ•ª = 1) GO TO CX00059.                                    
000000     MOVE 1 TO SUK-RKEY .                                                 
000000     GO TO CX00060.                                                       
000000 CX00059.                                                                 
000000     MOVE 2 TO SUK-RKEY .                                                 
000000 CX00060.                                                                 
000000       READ  ¢‘ã•Ê‰^—pŠÇ—‚e INVALID CONTINUE .                                  
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00061.                             
000000         DISPLAY "HBHUN551-29 VRSEUNKN READ ERROR ",                      
000000                     FL-STS1 " " FL-STS2                                  
000000         STOP RUN .                                                     
000000 CX00061.                                                                 
000000     MOVE 0 TO ‚d‚m‚c|ƒQ[ƒ€I—¹ó‘Ô .                                              
000000     MOVE 1 TO ‚b‚m‚sƒQ[ƒ€I—¹ó‘Ô .                                               
000000 CX00062. IF NOT( (‚d‚m‚c|ƒQ[ƒ€I—¹ó‘Ô = 0) AND 
            (‚b‚m‚sƒQ[ƒ€I—¹ó‘Ô <= 90)                
000000     ) GO TO CX00063.                                                      
000000     IF NOT( (‚r‚t‚j‚PƒQ[ƒ€ƒ^ƒCƒv (‚b‚m‚sƒQ[ƒ€I—¹ó‘Ô) = 0) 
         AND (‚r‚t‚j‚PƒuƒƒbƒNƒR[ƒh (             
000000     ‚b‚m‚sƒQ[ƒ€I—¹ó‘Ô) = 0) AND 
           (‚r‚t‚j‚P‰ñ† (‚b‚m‚sƒQ[ƒ€I—¹ó‘Ô) = 0)                       
000000     ) GO TO CX00064.                                                      
000000     MOVE 1 TO ‚d‚m‚c|ƒQ[ƒ€I—¹ó‘Ô .                                              
000000     GO TO CX00065.                                                       
000000 CX00064.                                                                 
000000     IF NOT(‚r‚t‚j‚P‚f•Ê’Š‚¹‚ñ‘ÎÛ‚r (‚b‚m‚sƒQ[ƒ€I—¹ó‘Ô) = 
           1) GO TO CX00066.                  
000000     PERFORM P220-RTN THRU CX00008 .                                      
000000 CX00066.                                                                 
000000 CX00065.                                                                 
000000     COMPUTE ‚b‚m‚sƒQ[ƒ€I—¹ó‘Ô = ‚b‚m‚sƒQ[ƒ€I—¹ó‘Ô + 1 .                                
000000     GO TO CX00062.                                                       
000000 CX00063.                                                                 
000000 CX00006. EXIT.                                                           
000000 P210-RTN .                                                               
000000     MOVE 0 TO ‚d‚m‚c|”„ã‚v‚e .                                                 
000000     MOVE 0 TO ‚b‚m‚s|”„ã‚s‚a‚k .                                                
000000     MOVE LOW-VALUE TO ‚g‚b‚g‚mƒŒƒR[ƒhƒL[ .                                       
000000       START “ú•Ê”Ì”„‚b‚g•Ê”„ã—ÝŒv‚e KEY > ,                                         
000000                                      ‚g‚b‚g‚mƒŒƒR[ƒhƒL[                          
000000             INVALID CONTINUE.                                            
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00067.                             
000000           DISPLAY "HBHUN551-30 VIHCHNUR START ERROR " ,                  
000000                       FL-STS1 " " FL-STS2                                
000000           STOP RUN .                                                   
000000 CX00067.                                                                 
000000 CX00068. IF NOT(‚d‚m‚c|”„ã‚v‚e = 0) GO TO CX00069.                              
000000         READ “ú•Ê”Ì”„‚b‚g•Ê”„ã—ÝŒv‚e NEXT ,                                         
000000                          AT END MOVE 1 TO ‚d‚m‚c|”„ã‚v‚e .                     
000000     IF NOT(FL-STS1 NOT = "00" AND "10") GO TO CX00070.                    
000000           DISPLAY "HBHUN551-31 VIHCHNUR READ ERROR " ,                   
000000                            FL-STS1 " " FL-STS2.                          
000000           STOP RUN .                                                   
000000 CX00070.                                                                 
000000     IF NOT(‚d‚m‚c|”„ã‚v‚e = 0) GO TO CX00071.                                   
           DISPLAY "--Before --LINE:547--  ‚g‚b‚g‚m”N“x = " ‚g‚b‚g‚m”N“x UPON CONSOLE
           DISPLAY "--Before --LINE:548--  ‚g‚b‚g‚m”Ì”„ƒ`ƒƒƒlƒ‹ = " ‚g‚b‚g‚m”Ì”„ƒ`ƒƒƒlƒ‹ UPON CONSOLE
           DISPLAY "--Before --LINE:549--  ‚g‚b‚g‚mƒQ[ƒ€ƒ^ƒCƒv = " ‚g‚b‚g‚mƒQ[ƒ€ƒ^ƒCƒv UPON CONSOLE
           DISPLAY "--Before --LINE:550--  ‚g‚b‚g‚mƒuƒƒbƒNƒR[ƒh = " ‚g‚b‚g‚mƒuƒƒbƒNƒR[ƒh UPON CONSOLE
           DISPLAY "--Before --LINE:551--  ‚g‚b‚g‚m‰ñ† = " ‚g‚b‚g‚m‰ñ† UPON CONSOLE
           DISPLAY "--Before --LINE:552--  ‚g‚b‚g‚m”„ã‹àŠz = " ‚g‚b‚g‚m”„ã‹àŠz UPON CONSOLE
000000     COMPUTE ‚b‚m‚s|”„ã‚s‚a‚k = ‚b‚m‚s|”„ã‚s‚a‚k + 1                                    
000000     MOVE ‚g‚b‚g‚m”N“x TO ‚s—ÝŒv”N“x (‚b‚m‚s|”„ã‚s‚a‚k)                                     
000000     MOVE ‚g‚b‚g‚m”Ì”„ƒ`ƒƒƒlƒ‹ TO 
           ‚s—ÝŒv”Ì”„ƒ`ƒƒƒlƒ‹ (‚b‚m‚s|”„ã‚s‚a‚k)                             
000000     MOVE ‚g‚b‚g‚mƒQ[ƒ€ƒ^ƒCƒv TO 
           ‚s—ÝŒvƒQ[ƒ€ƒ^ƒCƒv (‚b‚m‚s|”„ã‚s‚a‚k)                             
000000     MOVE ‚g‚b‚g‚mƒuƒƒbƒNƒR[ƒh TO 
           ‚s—ÝŒvƒuƒƒbƒNƒR[ƒh (‚b‚m‚s|”„ã‚s‚a‚k)                           
000000     MOVE ‚g‚b‚g‚m‰ñ† TO 
           ‚s—ÝŒv‰ñ† (‚b‚m‚s|”„ã‚s‚a‚k)                                     
000000     MOVE ‚g‚b‚g‚m”„ã‹àŠz TO ‚s—ÝŒv”„ã‹àŠz (‚b‚m‚s|”„ã‚s‚a‚k) .                               
000000 CX00071.                                                                 
000000     GO TO CX00068.                                                       
000000 CX00069.                                                                 
000000     MOVE ‚b‚m‚s|”„ã‚s‚a‚k TO ‚v‚j|”„ã‚s‚a‚k .                                         
000000       COMMIT                                                             
000000       CLOSE “ú•Ê”Ì”„‚b‚g•Ê”„ã—ÝŒv‚e.                                                
      *********
             DISPLAY "CLOSEED".
      *********
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00072.                             
000000         DISPLAY "HBHUN551-32 VIHCHNUR CLOSE ERROR " ,                    
000000                          FL-STS1 " " FL-STS2.                            
000000         STOP RUN .                                                     
000000 CX00072.                                                                 
000000 CX00007. EXIT.                                                           
000000 P220-RTN .                                                               
000000     MOVE 1 TO ‚b‚m‚s|”„ã‚s‚a‚k                                                  
000000     MOVE ZERO TO CNT-COMMIT .                                            
000000 CX00073. IF NOT(‚b‚m‚s|”„ã‚s‚a‚k <= 
           ‚v‚j|”„ã‚s‚a‚k) GO TO CX00074.                     
000000     IF NOT(‚r‚t‚j‚PƒQ[ƒ€‚h‚c (‚b‚m‚sƒQ[ƒ€I—¹ó‘Ô) = 
            ‚s—ÝŒvƒQ[ƒ€‚h‚c (‚b‚m‚s|”„ã‚s‚a‚k)                 
000000     ) GO TO CX00075.                                                      
           DISPLAY "--Before --LINE:587--  ‚b‚g‚t‚q”N“x = " ‚b‚g‚t‚q”N“x UPON CONSOLE
           DISPLAY "--Before --LINE:588--  ‚b‚g‚t‚q”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh = " ‚b‚g‚t‚q”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh UPON CONSOLE
000000     MOVE ‚s—ÝŒv”N“x (‚b‚m‚s|”„ã‚s‚a‚k) TO ‚b‚g‚t‚q”N“x                                     
000000     MOVE ‚s—ÝŒv”Ì”„ƒ`ƒƒƒlƒ‹ (‚b‚m‚s|”„ã‚s‚a‚k) TO 
            ‚b‚g‚t‚q”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh                          
000000             READ ”Ì”„ƒ`ƒƒƒlƒ‹•Ê”„ã—ÝŒv‚e INVALID CONTINUE.                          
000000     IF NOT(FL-STS1 = "00") GO TO CX00076.                                 
           DISPLAY "--Before --LINE:594--  ‚b‚g‚t‚q”„ã‹àŠz = " ‚b‚g‚t‚q”„ã‹àŠz UPON CONSOLE
000000     COMPUTE ‚b‚g‚t‚q”„ã‹àŠz = ‚b‚g‚t‚q”„ã‹àŠz + 
           ‚s—ÝŒv”„ã‹àŠz (‚b‚m‚s|”„ã‚s‚a‚k)                    
000000                 REWRITE ”Ì”„ƒ`ƒƒƒlƒ‹•Ê”„ã—ÝŒv‚q ,                                   
000000                                     INVALID CONTINUE .                   
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00077.                             
000000                   DISPLAY "HBHUN551-33 VICHNURI REWRITE ERROR " ,        
000000                        FL-STS1 " " FL-STS2 UPON CONSOLE.                  
000000                   STOP RUN .                                           
000000 CX00077.                                                                 
000000     GO TO CX00078.                                                       
000000 CX00076. IF NOT(FL-STS1 = "23") GO TO CX00079.                            
           DISPLAY "--Before --LINE:606--  ‚b‚g‚t‚q”N“x = " ‚b‚g‚t‚q”N“x UPON CONSOLE
           DISPLAY "--Before --LINE:607--  ‚b‚g‚t‚q”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh = " ‚b‚g‚t‚q”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh UPON CONSOLE
           DISPLAY "--Before --LINE:608--  ‚b‚g‚t‚q”„ã‹àŠz = " ‚b‚g‚t‚q”„ã‹àŠz UPON CONSOLE
000000     MOVE ‚s—ÝŒv”N“x (‚b‚m‚s|”„ã‚s‚a‚k) TO ‚b‚g‚t‚q”N“x                                     
000000     MOVE ‚s—ÝŒv”Ì”„ƒ`ƒƒƒlƒ‹ (‚b‚m‚s|”„ã‚s‚a‚k) TO 
           ‚b‚g‚t‚q”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh                          
000000     MOVE ‚s—ÝŒv”„ã‹àŠz (‚b‚m‚s|”„ã‚s‚a‚k) TO ‚b‚g‚t‚q”„ã‹àŠz                                 
000000                 WRITE ”Ì”„ƒ`ƒƒƒlƒ‹•Ê”„ã—ÝŒv‚q INVALID CONTINUE.                     
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00080.                             
000000                   DISPLAY "HBHUN551-34 VICHNURI WRITE ERROR " ,          
000000                        FL-STS1 " " FL-STS2 UPON CONSOLE.                  
000000                   STOP RUN .                                           
000000 CX00080.                                                                 
000000     GO TO CX00078.                                                       
000000 CX00079.                                                                 
000000                 DISPLAY "HBHUN551-35 VICHNURI READ ERROR " ,             
000000                        FL-STS1 " " FL-STS2 UPON CONSOLE.                  
000000                 STOP RUN .                                             
000000 CX00078.                                                                 
000000     COMPUTE CNT-COMMIT = CNT-COMMIT + 1 .                                
000000     IF NOT(•Ï”‚b‚n‚l‚l‚h‚sŒ” < CNT-COMMIT) GO TO CX00081.                        
000000               COMMIT                                                     
000000     MOVE ZERO TO CNT-COMMIT .                                            
000000 CX00081.                                                                 
000000     MOVE 0 TO ‚s—ÝŒv”N“x (‚b‚m‚s|”„ã‚s‚a‚k)                                          
000000     MOVE 0 TO ‚s—ÝŒv”Ì”„ƒ`ƒƒƒlƒ‹ (‚b‚m‚s|”„ã‚s‚a‚k)                                      
000000     MOVE 0 TO ‚s—ÝŒvƒQ[ƒ€ƒ^ƒCƒv (‚b‚m‚s|”„ã‚s‚a‚k)                                      
000000     MOVE 0 TO ‚s—ÝŒvƒuƒƒbƒNƒR[ƒh (‚b‚m‚s|”„ã‚s‚a‚k)                                     
000000     MOVE 0 TO ‚s—ÝŒv‰ñ† (‚b‚m‚s|”„ã‚s‚a‚k)                                          
000000     MOVE 0 TO ‚s—ÝŒv”„ã‹àŠz (‚b‚m‚s|”„ã‚s‚a‚k) .                                      
000000 CX00075.                                                                 
000000     COMPUTE ‚b‚m‚s|”„ã‚s‚a‚k = ‚b‚m‚s|”„ã‚s‚a‚k + 1 .                                  
      *20141114’Ç‰ÁŠJŽn
           IF ‚b‚m‚s|”„ã‚s‚a‚k > 1500
               MOVE 1 TO ‚b‚m‚s|”„ã‚s‚a‚k
               INITIALIZE ‚s“ú•Ê”Ì”„‚b‚g•Ê”„ã—ÝŒv.
      *20141114’Ç‰ÁI—¹
000000     GO TO CX00073.                                                       
000000 CX00074.                                                                 
000000 CX00008. EXIT.                                                           
000000 P300-RTN .                                                               
000000       OPEN OUTPUT “ú•Ê”Ì”„‚b‚g•Ê”„ã—ÝŒv‚e .                                         
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00082.                             
000000         DISPLAY "HBHUN551-36 VIHCHNUR OPEN ERROR " ,                     
000000                      FL-STS1 " " FL-STS2 UPON CONSOLE.                    
000000         STOP RUN .                                                     
000000 CX00082.                                                                 
000000     MOVE 1 TO ‚b‚m‚s|”„ã‚s‚a‚k                                                  
000000     MOVE 0 TO CNT-COMMIT .                                               
000000 CX00083. IF NOT( (‚b‚m‚s|”„ã‚s‚a‚k <= 
           ‚v‚j|”„ã‚s‚a‚k)) GO TO CX00084.                  
000000     IF NOT(‚s—ÝŒv”N“x (‚b‚m‚s|”„ã‚s‚a‚k) = 0 AND 
           ‚s—ÝŒv”Ì”„ƒ`ƒƒƒlƒ‹ (‚b‚m‚s|”„ã‚s‚a‚k) = 0           
000000     AND ‚s—ÝŒvƒQ[ƒ€ƒ^ƒCƒv (‚b‚m‚s|”„ã‚s‚a‚k) = 0 AND 
           ‚s—ÝŒvƒuƒƒbƒNƒR[ƒh (‚b‚m‚s|”„ã‚s‚a‚k) =           
000000     0 AND ‚s—ÝŒv‰ñ† (‚b‚m‚s|”„ã‚s‚a‚k) = 0 AND 
           ‚s—ÝŒv”„ã‹àŠz (‚b‚m‚s|”„ã‚s‚a‚k) = 0              
000000     ) GO TO CX00085.                                                      
000000     GO TO CX00086.                                                       
000000 CX00085.                                                                 
           DISPLAY "--Before --LINE:666--  ‚g‚b‚g‚m”N“x = " ‚g‚b‚g‚m”N“x UPON CONSOLE
           DISPLAY "--Before --LINE:667--  ‚g‚b‚g‚m”Ì”„ƒ`ƒƒƒlƒ‹ = " ‚g‚b‚g‚m”Ì”„ƒ`ƒƒƒlƒ‹ UPON CONSOLE
           DISPLAY "--Before --LINE:668--  ‚g‚b‚g‚mƒQ[ƒ€ƒ^ƒCƒv = " ‚g‚b‚g‚mƒQ[ƒ€ƒ^ƒCƒv UPON CONSOLE
           DISPLAY "--Before --LINE:669--  ‚g‚b‚g‚mƒuƒƒbƒNƒR[ƒh = " ‚g‚b‚g‚mƒuƒƒbƒNƒR[ƒh UPON CONSOLE
           DISPLAY "--Before --LINE:670--  ‚g‚b‚g‚m‰ñ† = " ‚g‚b‚g‚m‰ñ† UPON CONSOLE
           DISPLAY "--Before --LINE:671--  ‚g‚b‚g‚m”„ã‹àŠz = " ‚g‚b‚g‚m”„ã‹àŠz UPON CONSOLE
000000     MOVE ‚s—ÝŒv”N“x (‚b‚m‚s|”„ã‚s‚a‚k) TO ‚g‚b‚g‚m”N“x                                     
000000     MOVE ‚s—ÝŒv”Ì”„ƒ`ƒƒƒlƒ‹ (‚b‚m‚s|”„ã‚s‚a‚k) TO 
           ‚g‚b‚g‚m”Ì”„ƒ`ƒƒƒlƒ‹                             
000000     MOVE ‚s—ÝŒvƒQ[ƒ€ƒ^ƒCƒv (‚b‚m‚s|”„ã‚s‚a‚k) TO 
           ‚g‚b‚g‚mƒQ[ƒ€ƒ^ƒCƒv                             
000000     MOVE ‚s—ÝŒvƒuƒƒbƒNƒR[ƒh (‚b‚m‚s|”„ã‚s‚a‚k) TO 
           ‚g‚b‚g‚mƒuƒƒbƒNƒR[ƒh                           
000000     MOVE ‚s—ÝŒv‰ñ† (‚b‚m‚s|”„ã‚s‚a‚k) TO ‚g‚b‚g‚m‰ñ†                                     
000000     MOVE ‚s—ÝŒv”„ã‹àŠz (‚b‚m‚s|”„ã‚s‚a‚k) TO ‚g‚b‚g‚m”„ã‹àŠz                                 
000000           WRITE “ú•Ê”Ì”„‚b‚g•Ê”„ã—ÝŒv‚q INVALID CONTINUE.                           
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00087.                             
000000             DISPLAY "HBHUN551-37 VIHCHNUR WRITE ERROR " ,                
000000                          FL-STS1 " " FL-STS2 UPON CONSOLE.                
000000             STOP RUN .                                                 
000000 CX00087.                                                                 
000000     COMPUTE CNT-COMMIT = CNT-COMMIT + 1 .                                
000000     IF NOT(•Ï”‚b‚n‚l‚l‚h‚sŒ” < CNT-COMMIT) GO TO CX00088.                        
000000             COMMIT                                                       
000000     MOVE 0 TO CNT-COMMIT .                                               
000000 CX00088.                                                                 
000000 CX00086.                                                                 
000000     COMPUTE ‚b‚m‚s|”„ã‚s‚a‚k = ‚b‚m‚s|”„ã‚s‚a‚k + 1 .                                  
      *20141114’Ç‰ÁŠJŽn
           IF ‚b‚m‚s|”„ã‚s‚a‚k > 1500
               MOVE 1 TO ‚b‚m‚s|”„ã‚s‚a‚k
               INITIALIZE ‚s“ú•Ê”Ì”„‚b‚g•Ê”„ã—ÝŒv.
      *20141114’Ç‰ÁI—¹
000000     GO TO CX00083.                                                       
000000 CX00084.                                                                 
000000 CX00009. EXIT.                                                           

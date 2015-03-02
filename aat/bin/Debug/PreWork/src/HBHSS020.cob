000000 IDENTIFICATION DIVISION.                                                 
000000 PROGRAM-ID. HBHSS020 .                                                   
000000 DATE-WRITTEN.                                                            
000000 DATE-COMPILED.                                                           
000000 ENVIRONMENT DIVISION.                                                    
000000 CONFIGURATION SECTION.                                                   
000000 SOURCE-COMPUTER.        ACOS.                                            
000000 OBJECT-COMPUTER.        ACOS.                                            
      *20141117C³ŠJŽn
000000* SPECIAL-NAMES.                                                           
000000*     ITG002   IS SPCHANEL.                                                
      *20141117C³I—¹
000000 INPUT-OUTPUT SECTION.                                                     
000000 FILE-CONTROL.                                                            
000000     SELECT  ‰^—pŠÇ—‚e                                                        
000000             ASSIGN               VRUNYKAN-MSD                                
000000             ORGANIZATION         IS  RELATIVE                          
000000             ACCESS               RANDOM                                  
000000             RELATIVE             UNK-RKEY                                
000000*             FILE STATUS          FL-STS1  FL-STS2.                       
                   FILE STATUS          FL-STS1.
000000     SELECT  ƒoƒbƒ`‹N“®ŠÇ—‚e                                                     
000000             ASSIGN               VRBCHKID-MSD                                
000000             ORGANIZATION         IS  RELATIVE                          
000000             ACCESS               RANDOM                                  
000000             RELATIVE             BCH-RKEY                                
000000*             FILE STATUS          FL-STS1  FL-STS2.                       
                   FILE STATUS          FL-STS1.
000000     SELECT  ‰ñŽûÏƒ`ƒPƒbƒg‚v‚j‚e                                                   
000000             ASSIGN            SQWKSZTK-MSD                                   
000000*             FILE STATUS          FL-STS1  FL-STS2.                       
                   FILE STATUS          FL-STS1.
000000     SELECT —LŒø•\                                                           
000000            ASSIGN             RQYUKOU-MSD                                
000000            ORGANIZATION       INDEXED                                    
000000            ACCESS  MODE       DYNAMIC                                    
000000            RECORD   KEY       ‚x‚t‚j‚nŽ¯•ÊƒR[ƒh                                  
000000*             FILE STATUS          FL-STS1  FL-STS2.                       
                   FILE STATUS          FL-STS1.
000000     SELECT ‰ñŽûÏ•\                                                          
000000            ASSIGN             RQKAISYU-MSD                               
000000            ORGANIZATION       INDEXED                                    
000000            ACCESS  MODE       DYNAMIC                                    
000000            RECORD   KEY       ‚j‚`‚h‚rŽ¯•ÊƒR[ƒh                                  
000000*             FILE STATUS          FL-STS1  FL-STS2.                       
                   FILE STATUS          FL-STS1.
000000     SELECT  ƒQ[ƒ€‚e                                                         
000000             ASSIGN               VIGAME-MSD                                  
000000             ORGANIZATION         IS  INDEXED                           
000000             ACCESS               DYNAMIC                                 
000000             RECORD               ‚f‚`‚l‚dƒQ[ƒ€‚h‚c                               
000000*             FILE STATUS          FL-STS1  FL-STS2.                       
                   FILE STATUS          FL-STS1.
000000     SELECT  ƒQ[ƒ€ó‹µ‚e                                                       
000000             ASSIGN            VIGAMJYO-MSD                                   
000000             ORGANIZATION      IS  INDEXED                              
000000             ACCESS            RANDOM                                     
000000             RECORD            ‚f‚l‚i‚xƒQ[ƒ€‚h‚c                                  
000000*             FILE STATUS          FL-STS1  FL-STS2.                       
                   FILE STATUS          FL-STS1.
000000     SELECT  ƒQ[ƒ€ƒ^ƒCƒv‚e                                                      
000000             ASSIGN            VIGMTYPE-MSD                                   
000000             ORGANIZATION      IS  INDEXED                              
000000             ACCESS            RANDOM                                     
000000             RECORD            ‚f‚l‚s‚xƒQ[ƒ€ƒ^ƒCƒv‚w                                 
000000*             FILE STATUS          FL-STS1  FL-STS2.                       
                   FILE STATUS          FL-STS1.
000000     SELECT  ƒuƒƒbƒN‚e                                                        
000000             ASSIGN            VIBLOCK-MSD                                    
000000             ORGANIZATION      IS  INDEXED                              
000000             ACCESS            DYNAMIC                                    
000000             RECORD            ‚a‚k‚j‚PƒŒƒR[ƒhƒL[                                 
000000*             FILE STATUS          FL-STS1  FL-STS2.                       
                   FILE STATUS          FL-STS1.
000000     SELECT  ’Š‚¹‚ñŒ‹‰Ê‚e                                                       
000000             ASSIGN            VITYUKEK-MSD                                   
000000             ORGANIZATION      IS  INDEXED                              
000000             ACCESS            RANDOM                                     
000000             RECORD            ‚s‚x‚j‚dƒQ[ƒ€‚h‚c                                  
000000*             FILE STATUS          FL-STS1  FL-STS2.                       
                   FILE STATUS          FL-STS1.
000000     SELECT  ³í‰ñŽûƒ`ƒPƒbƒg‚e                                                    
000000             ASSIGN            SQWSZKST-MSD                                   
000000*             FILE STATUS          FL-STS1  FL-STS2.                       
                   FILE STATUS          FL-STS1.
000000     SELECT  ‰ñŽûŠm”FÏƒ`ƒPƒbƒg‚v‚j‚e                                                 
000000             ASSIGN            SQWKSKKN-MSD                                   
000000*             FILE STATUS          FL-STS1  FL-STS2.                       
                   FILE STATUS          FL-STS1.
000000     SELECT  Œp‘±\ž•¡”“–‚¹‚ñ‚v‚j‚e                                                 
000000             ASSIGN            SQWKZFKT-MSD                                   
000000*             FILE STATUS          FL-STS1  FL-STS2.                       
                   FILE STATUS          FL-STS1.
000000     SELECT  Žx•¥‰ñŽû“Ë‡Œ‹‰Êˆê——‚v‚j‚e                                                
000000             ASSIGN            SQWSIKSK-MSD                                   
000000*             FILE STATUS          FL-STS1  FL-STS2.                       
                   FILE STATUS          FL-STS1.
000000     SELECT  Žx•¥‰ñŽû“Ë‡Œ‹‰Ê‡Œv‚v‚j‚e                                                
000000             ASSIGN            SQWSIKGK-MSD                                   
000000*             FILE STATUS          FL-STS1  FL-STS2.                       
                   FILE STATUS          FL-STS1.
000000     SELECT  ŽæÁ‰ñŽû“Ë‡Œ‹‰Êˆê——‚v‚j‚e                                                
000000             ASSIGN            SQWTOKSK-MSD                                   
000000*             FILE STATUS          FL-STS1  FL-STS2.                       
                   FILE STATUS          FL-STS1.
000000     SELECT  ‰ñŽûÏƒf[ƒ^‚v‚j‚e                                                    
000000             ASSIGN            SQWKSZDT-MSD                                   
000000*             FILE STATUS          FL-STS1  FL-STS2.                       
                   FILE STATUS          FL-STS1.
      *20141117’Ç‰ÁŠJŽn
000000     SELECT •Ï””Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh‚e                                                        
000000                  ASSIGN             NEWFILE-MSD                             
000000             FILE STATUS          FL-STS1.                   
      *20141117’Ç‰ÁI—¹
000000 DATA DIVISION.                                                           
000000 FILE SECTION.                                                            
000000 FD  ‰^—pŠÇ—‚e                                                                
      *20141117C³ŠJŽn
000000*     RECORD  IS  VARYING  IN  SIZE                                        
000000     LABEL  RECORD  STANDARD                                             
      *20141117’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "VRUNYKAN".
      *20141117’Ç‰ÁI—¹
      *20141117C³I—¹
000000* 01  ‰^—pŠÇ—‚q‚Q.                                                              
000000*     COPY CFUNK2 .                                                        
000000 01  ‰^—pŠÇ—‚q‚P.                                                              
000000     COPY CFUNK1 .                                                        
000000* 01  ‰^—pŠÇ—‚q‚R.                                                              
000000*     COPY CFUNK3 .                                                        
000000 FD  ƒoƒbƒ`‹N“®ŠÇ—‚e                                                             
000000     LABEL  RECORD  STANDARD                                             
      *20141117’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "VRBCHKID".
      *20141117’Ç‰ÁI—¹
000000 01  ƒoƒbƒ`‹N“®ŠÇ—‚q.                                                            
000000     COPY CFBCHK .                                                        
000000 FD  ‰ñŽûÏƒ`ƒPƒbƒg‚v‚j‚e                                                           
000000     LABEL  RECORD  STANDARD                                             
      *20141117’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "SQWKSZTK".
      *20141117’Ç‰ÁI—¹
000000 01  ‰ñŽûÏƒ`ƒPƒbƒg‚v‚j‚q.                                                          
000000     COPY CFKZMT REPLACING                                                
000000             //‚j‚y‚l‚s// BY //‚`‚j‚y‚l// .                                       
000000 FD  —LŒø•\                                                                  
000000     LABEL  RECORD  STANDARD                                             
      *20141117’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "RQYUKOU".
      *20141117’Ç‰ÁI—¹
000000 01  —LŒø•\‚q.                                                                
000000     COPY CFYUKO .                                                        
000000 FD  ‰ñŽûÏ•\                                                                 
000000     LABEL  RECORD  STANDARD                                             
      *20141117’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "RQKAISYU".
      *20141117’Ç‰ÁI—¹
000000 01  ‰ñŽûÏ•\‚q.                                                               
000000     COPY CFYUKO REPLACING                                                
000000             //‚x‚t‚j‚n// BY //‚j‚`‚h‚r// .                                       
000000 FD  ƒQ[ƒ€‚e                                                                 
000000     LABEL  RECORD  STANDARD                                             
      *20141117’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "VIGAME".
      *20141117’Ç‰ÁI—¹
000000 01  ƒQ[ƒ€‚q.                                                                
000000     COPY CFGAME .                                                        
000000 FD  ƒQ[ƒ€ó‹µ‚e                                                               
000000     LABEL  RECORD  STANDARD                                             
      *20141117’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "VIGAMJYO".
      *20141117’Ç‰ÁI—¹
000000 01  ƒQ[ƒ€ó‹µ‚q.                                                              
000000     COPY CFGMJY .                                                        
000000 FD  ƒQ[ƒ€ƒ^ƒCƒv‚e                                                              
000000     LABEL  RECORD  STANDARD                                             
      *20141117’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "VIGMTYPE".
      *20141117’Ç‰ÁI—¹
000000 01  ƒQ[ƒ€ƒ^ƒCƒv‚q.                                                             
000000     COPY CFGMTY .                                                        
000000 FD  ƒuƒƒbƒN‚e                                                                
000000     LABEL  RECORD  STANDARD                                             
      *20141117’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "VIBLOCK".
      *20141117’Ç‰ÁI—¹
      *20141126C³ŠJŽn
000000* 01  ƒuƒƒbƒNŠÇ—‚q.                                                             
000000*     COPY CFBLK1 .                                                        
000000* 01  ƒuƒƒbƒN–¾×‚q.                                                             
000000*     COPY CFBLK2 .
       01  ƒuƒƒbƒN‚eƒŒƒR[ƒh.
000000  02  ƒuƒƒbƒNŠÇ—‚q.                                                             
000000     COPY CFBLK1 .                                                        
000000  02  ƒuƒƒbƒN–¾×‚q.                                                             
000000     COPY CFBLK2 .
      *20141126C³I—¹                                                        
000000 FD  ’Š‚¹‚ñŒ‹‰Ê‚e                                                               
000000     LABEL  RECORD  STANDARD                                             
      *20141117’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "VITYUKEK".
      *20141117’Ç‰ÁI—¹
000000 01  ’Š‚¹‚ñŒ‹‰Ê‚q.                                                              
000000     COPY CFTYKE .                                                        
000000 FD  ³í‰ñŽûƒ`ƒPƒbƒg‚e                                                            
000000     LABEL  RECORD  STANDARD                                             
      *20141117’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "SQWSZKST".
      *20141117’Ç‰ÁI—¹
000000 01  ³í‰ñŽûƒ`ƒPƒbƒg‚q.                                                           
000000     COPY CFWSKS .                                                        
000000 FD  ‰ñŽûŠm”FÏƒ`ƒPƒbƒg‚v‚j‚e                                                         
000000     LABEL  RECORD  STANDARD                                             
      *20141117’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "SQWKSKKN".
      *20141117’Ç‰ÁI—¹
000000 01  ‰ñŽûŠm”FÏƒ`ƒPƒbƒg‚v‚j‚q.                                                        
000000     COPY CFKNMT .                                                        
000000 FD  Œp‘±\ž•¡”“–‚¹‚ñ‚v‚j‚e                                                         
000000     LABEL  RECORD  STANDARD                                             
      *20141117’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "SQWKZFKT".
      *20141117’Ç‰ÁI—¹
000000 01  Œp‘±\ž•¡”“–‚¹‚ñ‚v‚j‚q.                                                        
000000     COPY CFWKZF .                                                        
000000 FD  ‰ñŽûÏƒf[ƒ^‚v‚j‚e                                                            
000000     LABEL  RECORD  STANDARD                                             
      *20141117’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "SQWKSZDT".
      *20141117’Ç‰ÁI—¹
000000 01  ‰ñŽûÏƒf[ƒ^‚v‚j‚q.                                                           
000000     COPY CFYUKO REPLACING                                                
000000             //‚x‚t‚j‚n// BY //‚j‚`‚h‚v// .                                       
000000 FD  Žx•¥‰ñŽû“Ë‡Œ‹‰Êˆê——‚v‚j‚e                                                        
000000     LABEL  RECORD  STANDARD                                             
      *20141117’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "SQWSIKSK".
      *20141117’Ç‰ÁI—¹
000000 01  Žx•¥‰ñŽû“Ë‡Œ‹‰Êˆê——‚v‚j‚q.                                                       
000000     COPY CFWSTK .                                                        
000000 FD  Žx•¥‰ñŽû“Ë‡Œ‹‰Ê‡Œv‚v‚j‚e                                                        
000000     LABEL  RECORD  STANDARD                                             
      *20141117’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "SQWSIKGK".
      *20141117’Ç‰ÁI—¹
000000 01  Žx•¥‰ñŽû“Ë‡Œ‹‰Ê‡Œv‚v‚j‚q.                                                       
000000     COPY CFWSGK .                                                        
000000 FD  ŽæÁ‰ñŽû“Ë‡Œ‹‰Êˆê——‚v‚j‚e                                                        
000000     LABEL  RECORD  STANDARD                                             
      *20141117’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "SQWTOKSK".
      *20141117’Ç‰ÁI—¹
000000 01  ŽæÁ‰ñŽû“Ë‡Œ‹‰Êˆê——‚v‚j‚q.                                                       
000000     COPY CFWTOK .                                                        
      *20141117’Ç‰ÁŠJŽn
000000 FD  •Ï””Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh‚e
           LABEL  RECORD  STANDARD                                                        
           VALUE  OF IDENTIFICATION IS "NEWFILE".
       01  SPCHANEL                            PIC X(02).
      *20141117’Ç‰ÁI—¹      
000000 WORKING-STORAGE SECTION.                                                 
000000 01  —˜—pŽÒ§Œä•Ï”ƒGƒŠƒA.                                                          
000000   03  •Ï””Ì”„ƒ`ƒƒƒlƒ‹      PIC  9(02).                                          
000000 01  ˆêŽžì‹ÆƒGƒŠƒA.                                                             
000000   03  ”­s“ú                PIC 9(08).                                      
000000   03  FILLER                REDEFINES ”­s“ú.                               
000000     05  ”­s“úi”Nj        PIC 9(04).                                         
000000     05  ”­s“úiŒŽj        PIC 9(02).                                         
000000     05  ”­s“úi“új        PIC 9(02).                                         
000000   03  ‚v‚j|Žx•¥“ú          PIC 9(08).                                         
000000   03  ‚v‚j|Žæ‚è‚Ü‚Æ‚ß“ú    PIC 9(08).                                            
000000   03  ‚v‚j|ƒQ[ƒ€‚h‚c.                                                          
000000     05  ‚v‚j|ƒQ[ƒ€ƒ^ƒCƒv  PIC  9(02).                                           
000000     05  ‚v‚j|ƒuƒƒbƒNƒR[ƒh     USAGE  COMP-1.                                    
000000     05  ‚v‚j|‰ñ†               USAGE  COMP-1.                               
000000   03  ‚v‚f‚i‚x‚nÅI®—Š®—¹‰ñ† USAGE  COMP-1.                                       
000000   03  ®—Š®—¹ƒtƒ‰ƒO        PIC  9(01).                                         
000000   03  ‚v‚j|•s³ƒXƒe[ƒ^ƒX  PIC  9(02).                                            
000000   03  ‚v‚j|’Š‚¹‚ñ“–‚¹‚ñ‚r‚s‚r  PIC  9(02).                                          
000000   03  ‚v‚j|‹àŠz                      PIC  9(14) COMP-3.                      
000000   03  ‚v‚j|“–‚¹‚ñƒe[ƒuƒ‹.                                                        
000000     05  ‚v‚j|“–‚¹‚ñ–¾×              OCCURS 5.                                  
000000       07  ‚v‚j|“–‚¹‚ñ‰ñ†            USAGE COMP-1.                              
000000       07  ‚v‚j|Žx•¥‹à                PIC  9(14) COMP-3.                       
      *20141117C³ŠJŽn
000000*       07  ‚v‚j|“–‚¹‚ñ“™‹‰            PIC  1(16) USAGE BIT.                      
             07  ‚v‚j|“–‚¹‚ñ“™‹‰            PIC X(02).
      *20141117C³I—¹
000000       07  ‚v‚j|®—Š®—¹ƒtƒ‰ƒO        PIC  9(01).                                  
      *20141117C³ŠJŽn
         03  ‚v‚j|“™‹‰ƒrƒbƒg—ñ              PIC  X(02).
000000*   03  ‚v‚j|“™‹‰ƒrƒbƒg—ñ.                                                         
000000*     05  ‚v‚j|“™‹‰‚P‚a                 PIC  1(01) USAGE BIT.                    
000000*     05  ‚v‚j|“™‹‰‚Q‚a                 PIC  1(01) USAGE BIT.                    
000000*     05  ‚v‚j|“™‹‰‚R‚a                 PIC  1(01) USAGE BIT.                    
000000*     05  ‚v‚j|“™‹‰‚S‚a                 PIC  1(01) USAGE BIT.                    
000000*     05  ‚v‚j|“™‹‰‚T‚a                 PIC  1(01) USAGE BIT.                    
000000*     05  ‚v‚j|“™‹‰‚U‚a                 PIC  1(01) USAGE BIT.                    
000000*     05  ‚v‚j|“™‹‰‚V‚a                 PIC  1(01) USAGE BIT.                    
000000*     05  ‚v‚j|“™‹‰‚W‚a                 PIC  1(01) USAGE BIT.                    
000000*     05  ‚v‚j|“™‹‰‚X‚a                 PIC  1(01) USAGE BIT.                    
000000*     05  ‚v‚j|“™‹‰‚P‚O‚a               PIC  1(01) USAGE BIT.                     
000000*     05  ‚v‚j|“™‹‰‚P‚P‚a               PIC  1(01) USAGE BIT.                     
000000*     05  ‚v‚j|“™‹‰‚P‚Q‚a               PIC  1(01) USAGE BIT.                     
000000*     05  ‚v‚j|“™‹‰‚P‚R‚a               PIC  1(01) USAGE BIT.                     
000000*     05  ‚v‚j|“™‹‰‚P‚S‚a               PIC  1(01) USAGE BIT.                     
000000*     05  ‚v‚j|“™‹‰‚P‚T‚a               PIC  1(01) USAGE BIT.                     
000000*     05  ‚v‚j|“™‹‰‚P‚U‚a               PIC  1(01) USAGE BIT.                     
      *20141117C³I—¹
000000   03  ‚v‚j|“™‹‰ƒrƒbƒg—ñ‚q   REDEFINES  ‚v‚j|“™‹‰ƒrƒbƒg—ñ.                                 
      *20141117C³ŠJŽn
000000*     05  ‚v‚j|“™‹‰ƒrƒbƒg‚q             PIC  1(16) USAGE BIT.                      
           05  ‚v‚j|“™‹‰ƒrƒbƒg‚q             PIC  X(02).
      *20141117C³I—¹
000000   03  ‚v‚j|“™‹‰”—ñ.                                                           
000000     05  ‚v‚j|“™‹‰”        PIC  9(01)  OCCURS 16.                             
000000   03  ‚v‚j|Žx•¥³í–‡”              PIC  9(09).                                 
000000   03  ‚v‚j|Žx•¥•s³–‡”              PIC  9(09).                                 
000000   03  ‚v‚j|Œp‘±–‡”                  PIC  9(09).                               
000000   03  ‚v‚j|‘“–‚¹‚ñ‹à                PIC  9(14) COMP-3.                         
000000   03  ‚v‚j|‘Œp‘±“–‚¹‚ñ‹à            PIC  9(14) COMP-3.                           
000000   03  ‚v‚j|ŽæÁ³í–‡”              PIC  9(09).                                 
000000   03  ‚v‚j|ŽæÁ•s³–‡”              PIC  9(09).                                 
000000   03  ‚v‚j|‘ŽæÁ‹à                  PIC  9(14) COMP-3.                        
      *20141117C³ŠJŽn
000000*   03  UNK-RKEY              USAGE COMP-2.                                
000000*   03  BCH-RKEY              USAGE COMP-2.                                
000000   03  UNK-RKEY              PIC  9(08).                              
000000   03  BCH-RKEY              PIC  9(08).                               
      *20141117C³I—¹
000000   03  SW-READEND            PIC  9(01).                                  
000000   03  SW-WHILEEND           PIC  9(01).                                  
000000   03  ‚r‚v|”»’è            PIC  9(01).                                       
000000   03  SW-WKZF-OUT           PIC  9(01).                                  
000000   03  FL-STS1               PIC  X(02).                                  
000000   03  FL-STS2               PIC  9(05).                                  
000000   03  I                     USAGE  COMP-1.                               
000000   03  J                     USAGE  COMP-1.                               
000000   03  K                     USAGE  COMP-1.                               
000000   03  L                     USAGE  COMP-1.                               
000000   03  M                     USAGE  COMP-1.                               
000000   03  N                     USAGE  COMP-1.                               
000000   03  IX1                   USAGE  COMP-1.                               
000000   03  IX2                   USAGE  COMP-1.                               
000000   03  CNT                   USAGE  COMP-1.                               
000000   03  GGYOCNT               USAGE  COMP-1.                               
000000   03  Œp‘±‚b‚m‚s              USAGE  COMP-1.                                  
000000   03  “–‚¹‚ñ‚b‚m‚s            USAGE  COMP-1.                                   
000000   03  ’Š‚¹‚ñ‚b‚m‚s            USAGE  COMP-1.                                   
000000   03  ‚v‚j|Ž¯•ÊƒR[ƒhã.                                                         
000000     05  ‚v‚j|Ž¯•Ê‚f               PIC  9(02).                                 
000000     05  ‚v‚j|Ž¯•Ê‚a‚j             PIC  9(03).                                  
000000     05  FILLER                     PIC  9(03).                           
000000   03  ‚v‚j|‚f‚l‚a‚k‚j.                                                          
000000     05  ‚v‚j|‚f‚aƒQ[ƒ€           PIC  9(02).                                   
000000     05  ‚v‚j|‚f‚aƒuƒƒbƒN         PIC  9(03).                                    
000000   03  ‚v‚j|•s³‰ñŽû‡Œv‚s‚a‚k.                                                      
000000     05  ‚v‚j|•s³‰ñŽû‡Œv|‚f‚a   OCCURS  50.                                       
000000       07  ‚v‚j|•s‰ñ‚f‚l‚a‚k.                                                     
000000         09  ‚v‚j|•s‰ñƒQ[ƒ€       PIC  9(02).                                   
000000         09  ‚v‚j|•s‰ñƒuƒƒbƒN     PIC  9(03).                                    
000000       07  ‚v‚j|•s‰ñ‡Œv|”­Œ””NŒŽ OCCURS  18.                                       
000000         09  ‚v‚j|•s³‰ñŽû‡Œv–‡” PIC  9(07).                                      
000000   03  ‚v‚j|Ž¯•ÊƒR[ƒh•ÏŠ·.                                                        
000000     05  PTR_SBCDBEFORE             USAGE POINTER.                        
000000     05  PTR_SBCDAFTER              USAGE POINTER.                        
000000     05  ‚v‚j|‚P‚UŽ¯•ÊƒR[ƒh.                                                      
000000       07  ‚v‚j|‚P‚UŽ¯•ÊƒR[ƒhã   PIC  9(08).                                      
000000       07  ‚v‚j|‚P‚UŽ¯•ÊƒR[ƒh‰º   PIC  9(08).                                      
000000     05  ‚v‚j|‚Q‚SŽ¯•ÊƒR[ƒh.                                                      
000000       07  ‚v‚j|‚Q‚SŽ¯•ÊƒR[ƒhã   PIC  9(08).                                      
000000       07  ‚v‚j|‚Q‚SŽ¯•ÊƒR[ƒh’†   PIC  9(08).                                      
000000       07  ‚v‚j|‚Q‚SŽ¯•ÊƒR[ƒh‰º   PIC  9(08).                                      
000000   03  ‚v‚j|‚j‚y‚l‚sŽ¯•ÊƒR[ƒh.                                                      
000000     05  ‚v‚j|‚j‚y‚l‚sŽ¯•ÊƒR[ƒhã PIC  9(08).                                        
000000     05  ‚v‚j|‚j‚y‚l‚sŽ¯•ÊƒR[ƒh’† PIC  9(08).                                        
000000     05  ‚v‚j|‚j‚y‚l‚sŽ¯•ÊƒR[ƒh‰º PIC  9(08).                                        
000000   03  ‚v‚j|“ÇžáŠQ“ü—Í˜A”Ô       PIC  9(07).                                      
000000 01 ‚v‚j|‘OŒ‰ñŽûƒf[ƒ^                                                            
000000     COPY CFKZMT .                                                        
000000 01 ‚v‚j|‘OXŒ‰ñŽûƒf[ƒ^                                                           
000000     COPY CFKZMT REPLACING                                                
000000              //‚j‚y‚l‚s// BY //‚a‚j‚y‚l// .                                      
      *20141117C³ŠJŽn
000000* 01  ‚m‚t‚k‚k PIC 1(16) USAGE IS BIT VALUE B"0000000000000000".               
       01  ‚m‚t‚k‚k PIC X(02)  VALUE ""0000"".
      *20141117C³I—¹
000000 01  ’Š‚¹‚ñ“–‚¹‚ñ‚r‚s‚r.                                                           
000000    03  –¢’Š‚¹‚ñE“–‚¹‚ñ—L‚è  PIC 9(02) VALUE 1.                                    
000000    03  –¢’Š‚¹‚ñE“–‚¹‚ñ–³‚µ  PIC 9(02) VALUE 2.                                    
000000    03  ’Š‚¹‚ñÏE“–‚¹‚ñ—L‚è  PIC 9(02) VALUE 3.                                    
000000    03  ’Š‚¹‚ñÏE“–‚¹‚ñ–³‚µ  PIC 9(02) VALUE 4.                                    
      *20141117’Ç‰ÁŠJŽn
       01  SHIFT                    PIC X(1).
       01  DTCP-PARAM.                                                          
           COPY CLDTCP.
       01  SRLC-PARAM.                                                          
           COPY CLSRLC.
      *20141117’Ç‰ÁI—¹
000000 PROCEDURE DIVISION .                                                     
000000 MAIN-RTN .                                                               
000000     PERFORM S000-RTN THRU CX00002 .                                      
000000     IF NOT(‚a‚b‚g‚j‰Ò“­ƒtƒ‰ƒO = 1) GO TO CX00020.                                  
000000     PERFORM P000-RTN THRU CX00003 .                                      
000000 CX00020.                                                                 
           DISPLAY "CX00020" UPON CONSOLE
000000     PERFORM E000-RTN THRU CX00004 .                                      
000000 CX00001. STOP RUN.                                                       
           DISPLAY "CX00001" UPON CONSOLE
000000 S000-RTN .                                                               
000000       OPEN  INPUT  ‰^—pŠÇ—‚e .                                               
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00021.                             
000000           DISPLAY "HBHSS020-01 VRUNYKAN OPEN ERROR " ,                   
000000                                FL-STS1 " " FL-STS2                       
000000           STOP RUN .                                                   
000000 CX00021.                                                                 
           DISPLAY "CX00021" UPON CONSOLE
000000       OPEN  INPUT  ƒoƒbƒ`‹N“®ŠÇ—‚e .                                            
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00022.                             
000000           DISPLAY "HBHSS020-02 VRBCHKID OPEN ERROR " ,                   
000000                                FL-STS1 " " FL-STS2                       
000000           STOP RUN .                                                   
000000 CX00022.                                                                 
           DISPLAY "CX00022" UPON CONSOLE
000000       OPEN  INPUT  ‰ñŽûÏƒ`ƒPƒbƒg‚v‚j‚e .                                          
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00023.                             
000000           DISPLAY "HBHSS020-03 SQWKSZTK OPEN ERROR " ,                   
000000                                FL-STS1 " " FL-STS2                       
000000           STOP RUN .                                                   
000000 CX00023.                                                                 
           DISPLAY "CX00023" UPON CONSOLE
000000       OPEN INPUT   —LŒø•\ .                                                 
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00024.                             
000000          DISPLAY "HBHSS020-04 RQYUKOU  OPEN ERROR " ,                    
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00024.                                                                 
           DISPLAY "CX00024" UPON CONSOLE
000000       OPEN INPUT   ‰ñŽûÏ•\ .                                                
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00025.                             
000000          DISPLAY "HBHSS020-05 RQKAISYU OPEN ERROR " ,                    
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00025.                                                                 
           DISPLAY "CX00025" UPON CONSOLE
000000       OPEN  INPUT  ƒQ[ƒ€‚e .                                                
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00026.                             
000000          DISPLAY "HBHSS020-06 VIGAME OPEN ERROR " ,                      
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00026.                                                                 
           DISPLAY "CX00026" UPON CONSOLE
000000       OPEN  INPUT  ƒQ[ƒ€ó‹µ‚e .                                              
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00027.                             
000000           DISPLAY "HBHSS020-07 VIGAMJYO OPEN ERROR " ,                   
000000                                FL-STS1 " " FL-STS2                       
000000           STOP RUN .                                                   
000000 CX00027.                                                                 
           DISPLAY "CX00027" UPON CONSOLE
000000       OPEN  INPUT  ƒQ[ƒ€ƒ^ƒCƒv‚e .                                             
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00028.                             
000000          DISPLAY "HBHSS020-08 VIGMTYPE OPEN ERROR " ,                    
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00028.                                                                 
           DISPLAY "CX00028" UPON CONSOLE
000000       OPEN  INPUT  ƒuƒƒbƒN‚e .                                               
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00029.                             
000000          DISPLAY "HBHSS020-09 VIBLOCK OPEN ERROR " ,                     
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00029.                                                                 
           DISPLAY "CX00029" UPON CONSOLE
000000       OPEN  INPUT  ’Š‚¹‚ñŒ‹‰Ê‚e .                                              
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00030.                             
000000          DISPLAY "HBHSS020-10 VITYUKEK OPEN ERROR " ,                    
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00030.                                                                 
           DISPLAY "CX00030" UPON CONSOLE
000000       OPEN  OUTPUT  ³í‰ñŽûƒ`ƒPƒbƒg‚e .                                          
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00031.                             
000000          DISPLAY "HBHSS020-11 SQWSZKST OPEN ERROR " ,                    
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00031.                                                                 
           DISPLAY "CX00031" UPON CONSOLE
000000       OPEN  OUTPUT  ‰ñŽûŠm”FÏƒ`ƒPƒbƒg‚v‚j‚e .                                       
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00032.                             
000000          DISPLAY "HBHSS020-12 SQWKSKKN OPEN ERROR " ,                    
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00032.                                                                 
           DISPLAY "CX00032" UPON CONSOLE
000000       OPEN  OUTPUT  Œp‘±\ž•¡”“–‚¹‚ñ‚v‚j‚e .                                       
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00033.                             
000000          DISPLAY "HBHSS020-13 SQWKZFKT OPEN ERROR " ,                    
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00033.                                                                 
           DISPLAY "CX00033" UPON CONSOLE
000000       OPEN  OUTPUT  Žx•¥‰ñŽû“Ë‡Œ‹‰Êˆê——‚v‚j‚e .                                      
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00034.                             
000000          DISPLAY "HBHSS020-14 SQWSIKSK OPEN ERROR " ,                    
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00034.                                                                 
           DISPLAY "CX00034" UPON CONSOLE
000000       OPEN  OUTPUT  Žx•¥‰ñŽû“Ë‡Œ‹‰Ê‡Œv‚v‚j‚e .                                      
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00035.                             
000000          DISPLAY "HBHSS020-56 SQWSIKGK OPEN ERROR " ,                    
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00035.                                                                 
           DISPLAY "CX00035" UPON CONSOLE
000000       OPEN  OUTPUT  ŽæÁ‰ñŽû“Ë‡Œ‹‰Êˆê——‚v‚j‚e .                                      
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00036.                             
000000          DISPLAY "HBHSS020-15 SQWTOKSK OPEN ERROR " ,                    
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00036.                                                                 
           DISPLAY "CX00036" UPON CONSOLE
000000       OPEN  OUTPUT  ‰ñŽûÏƒf[ƒ^‚v‚j‚e .                                          
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00037.                             
000000          DISPLAY "HBHSS020-16 SQWKSZDT OPEN ERROR " ,                    
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00037.                                                                 
           DISPLAY "CX00037" UPON CONSOLE
000000       INITIALIZE    ˆêŽžì‹ÆƒGƒŠƒA                                              
000000       SET PTR_SBCDBEFORE TO ADDRESS OF ‚v‚j|‚P‚UŽ¯•ÊƒR[ƒh.                       
000000       SET PTR_SBCDAFTER  TO ADDRESS OF ‚v‚j|‚Q‚SŽ¯•ÊƒR[ƒh.                       
000000     MOVE 1 TO BCH-RKEY                                                   
000000       READ  ƒoƒbƒ`‹N“®ŠÇ—‚e  INVALID CONTINUE.                                  
000000     IF NOT(FL-STS1 NOT = "00" AND "02") GO TO CX00038.                    
000000            DISPLAY "HBHSS020-17 VRBCHKID READ ERROR " ,                  
000000                     FL-STS1 "-" FL-STS2                                  
000000            STOP RUN .                                                  
000000 CX00038.                                                                 
           DISPLAY "CX00038" UPON CONSOLE
000000     MOVE 1 TO UNK-RKEY                                                   
000000       READ  ‰^—pŠÇ—‚e  INVALID CONTINUE.                                     
000000     IF NOT(FL-STS1 NOT = "00" AND "02") GO TO CX00039.                    
000000            DISPLAY "HBHSS020-18 VRUNYKAN READ ERROR " ,                  
000000                     FL-STS1 "-" FL-STS2                                  
000000            STOP RUN .                                                  
000000 CX00039.                                                                 
           DISPLAY "CX00039" UPON CONSOLE
      *20141105C³ŠJŽn                                                                 
000000*       ACCEPT  •Ï””Ì”„ƒ`ƒƒƒlƒ‹      FROM  SPCHANEL.                              
000000         OPEN  INPUT  •Ï””Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh‚e .                                          
000000     IF FL-STS1 NOT = ZERO                           
000000           DISPLAY "HBHSS020-99 NEWFILE OPEN  ERROR ",                   
000000                   FL-STS1 " " FL-STS2                                
000000           STOP RUN .
           READ •Ï””Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh‚e AT END CONTINUE. 
           MOVE SPCHANEL TO •Ï””Ì”„ƒ`ƒƒƒlƒ‹
000000         CLOSE •Ï””Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh‚e .                                                 
000000     IF FL-STS1 NOT = ZERO                           
000000           DISPLAY "HBHSS020-99 NEWFILE CLOSE ERROR ",                   
000000           STOP RUN . 
      *20141105C³I—¹
000000       INITIALIZE    Žx•¥‰ñŽû“Ë‡Œ‹‰Êˆê——‚v‚j‚q                                        
000000       INITIALIZE    Žx•¥‰ñŽû“Ë‡Œ‹‰Ê‡Œv‚v‚j‚q                                        
000000       INITIALIZE    ŽæÁ‰ñŽû“Ë‡Œ‹‰Êˆê——‚v‚j‚q                                        
000000       INITIALIZE    Œp‘±\ž•¡”“–‚¹‚ñ‚v‚j‚q                                         
000000     MOVE ‚t‚m‚j‚Pƒoƒbƒ`‹Æ–±“ú•t TO ‚v‚r‚s‚j“Ë‚«‡‚í‚¹ˆ—“ú                                     
000000     MOVE •Ï””Ì”„ƒ`ƒƒƒlƒ‹ TO ‚v‚r‚s‚j”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh                                       
000000     MOVE ‚t‚m‚j‚Pƒoƒbƒ`‹Æ–±“ú•t TO ‚v‚r‚f‚j“Ë‚«‡‚í‚¹ˆ—“ú                                     
000000     MOVE ‚t‚m‚j‚Pƒoƒbƒ`‹Æ–±“ú•t TO ‚v‚s‚n‚j“Ë‚«‡‚í‚¹ˆ—“ú                                     
000000     MOVE •Ï””Ì”„ƒ`ƒƒƒlƒ‹ TO ‚v‚s‚n‚j”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh                                       
000000     MOVE ‚t‚m‚j‚Pƒoƒbƒ`‹Æ–±“ú•t TO ‚v‚j‚y‚e“Ë‚«‡‚í‚¹ˆ—“ú .                                   
000000 CX00002. EXIT.                                                           
000000 P000-RTN .                                                               
000000     MOVE 1 TO ‚v‚j|•s‰ñƒQ[ƒ€ (1)                                               
000000     MOVE ZERO TO ‚v‚j|•s‰ñƒuƒƒbƒN (1)                                           
000000     MOVE 2 TO ‚v‚j|•s‰ñƒQ[ƒ€ (2)                                               
000000     MOVE ZERO TO ‚v‚j|•s‰ñƒuƒƒbƒN (2)                                           
000000     MOVE 4 TO ‚v‚j|•s‰ñƒQ[ƒ€ (3)                                               
000000     MOVE 1 TO ‚v‚j|•s‰ñƒuƒƒbƒN (3)                                              
000000     MOVE 5 TO ‚v‚j|•s‰ñƒQ[ƒ€ (4)                                               
000000     MOVE ZERO TO ‚v‚j|•s‰ñƒuƒƒbƒN (4)                                           
000000     MOVE 6 TO ‚v‚j|•s‰ñƒQ[ƒ€ (5)                                               
000000     MOVE ZERO TO ‚v‚j|•s‰ñƒuƒƒbƒN (5)                                           
000000     MOVE LOW-VALUE TO ‚v‚j|‘OXŒ‰ñŽûƒf[ƒ^                                        
000000     MOVE LOW-VALUE TO ‚v‚j|‘OŒ‰ñŽûƒf[ƒ^                                         
000000     MOVE ZERO TO SW-READEND                                              
000000     MOVE ZERO TO SW-WHILEEND                                             
000000       READ  ‰ñŽûÏƒ`ƒPƒbƒg‚v‚j‚e  NEXT  AT  END  CONTINUE .                        
000000     IF NOT(FL-STS1 = "00" OR "02") GO TO CX00040.                         
000000     MOVE ‰ñŽûÏƒ`ƒPƒbƒg‚v‚j‚q TO ‚v‚j|‘OŒ‰ñŽûƒf[ƒ^ .                                      
000000     IF NOT(‚j‚y‚l‚sŽ¯•ÊƒR[ƒh (17:8) = SPACE) GO TO CX00041.                       
000000     PERFORM ZMSSRLCV-RTN THRU CX00017                                    
000000     MOVE ‚j‚y‚l‚sŽ¯•ÊƒR[ƒh TO ‚v‚j|‚j‚y‚l‚sŽ¯•ÊƒR[ƒh                                       
000000     MOVE ZERO TO ‚v‚j|‚j‚y‚l‚sŽ¯•ÊƒR[ƒh‰º .                                         
000000     GO TO CX00042.                                                       
000000 CX00041.                                                                 
           DISPLAY "CX00041" UPON CONSOLE
000000     MOVE ‚j‚y‚l‚sŽ¯•ÊƒR[ƒhã TO ‚v‚j|‚Q‚SŽ¯•ÊƒR[ƒhã                                       
000000     MOVE ‚j‚y‚l‚sŽ¯•ÊƒR[ƒh’† TO ‚v‚j|‚Q‚SŽ¯•ÊƒR[ƒh’†                                       
000000     MOVE ‚j‚y‚l‚sŽ¯•ÊƒR[ƒh‰º TO ‚v‚j|‚Q‚SŽ¯•ÊƒR[ƒh‰º                                       
000000     MOVE ‚j‚y‚l‚sŽ¯•ÊƒR[ƒh TO ‚v‚j|‚j‚y‚l‚sŽ¯•ÊƒR[ƒh .                                     
000000 CX00042.                                                                 
           DISPLAY "CX00042" UPON CONSOLE
000000     MOVE ‚j‚y‚l‚sŽæ‚è‚Ü‚Æ‚ß“ú TO ‚v‚r‚s‚jŽæ‚è‚Ü‚Æ‚ß“ú                                        
000000     MOVE ‚j‚y‚l‚sŽæ‚è‚Ü‚Æ‚ß“ú TO ‚v‚r‚f‚jŽæ‚è‚Ü‚Æ‚ß“ú                                        
000000     MOVE ‚j‚y‚l‚sŽæ‚è‚Ü‚Æ‚ß“ú TO ‚v‚s‚n‚jŽæ‚è‚Ü‚Æ‚ß“ú                                        
000000     MOVE ‚j‚y‚l‚sŽæ‚è‚Ü‚Æ‚ß“ú TO ‚v‚j‚y‚eŽæ‚è‚Ü‚Æ‚ß“ú .                                      
000000     GO TO CX00043.                                                       
000000 CX00040. IF NOT(FL-STS1 = "10") GO TO CX00044.                            
           DISPLAY "CX00040" UPON CONSOLE
000000     MOVE 1 TO SW-READEND                                                 
000000     MOVE 1 TO SW-WHILEEND .                                              
000000     GO TO CX00043.                                                       
000000 CX00044.                                                                 
           DISPLAY "CX00044" UPON CONSOLE
000000           DISPLAY "HBHSS020-19 SQWKSZTK READ ERROR " ,                   
000000                                FL-STS1 " " FL-STS2                       
000000           STOP RUN .                                                   
000000 CX00043.                                                                 
           DISPLAY "CX00043" UPON CONSOLE
000000     IF NOT(SW-WHILEEND = 0) GO TO CX00045.                                
000000         READ  ‰ñŽûÏƒ`ƒPƒbƒg‚v‚j‚e  NEXT  AT  END  CONTINUE.                       
000000     IF NOT(FL-STS1 = "00" OR "02") GO TO CX00046.                         
000000     GO TO CX00047.                                                       
000000 CX00046. IF NOT(FL-STS1 = "10") GO TO CX00048.                            
           DISPLAY "CX00046" UPON CONSOLE
000000     MOVE HIGH-VALUE TO ‰ñŽûÏƒ`ƒPƒbƒg‚v‚j‚q                                        
000000     MOVE 1 TO SW-READEND .                                               
000000     GO TO CX00047.                                                       
000000 CX00048.                                                                 
           DISPLAY "CX00048" UPON CONSOLE
000000            DISPLAY "HBHSS020-XX SQWKSZTK READ ERROR " ,                  
000000                                 FL-STS1 " " FL-STS2                      
000000            STOP RUN .                                                  
000000 CX00047.                                                                 
           DISPLAY "CX00047" UPON CONSOLE
000000 CX00045.                                                                 
           DISPLAY "CX00045" UPON CONSOLE
000000 CX00049. IF NOT(SW-WHILEEND = ZERO) GO TO CX00050.                        
           DISPLAY "CX00049" UPON CONSOLE
000000     IF NOT(‚j‚y‚l‚sŽ¯•ÊƒR[ƒh = ‚a‚j‚y‚lŽ¯•ÊƒR[ƒh OR 
              ‚j‚y‚l‚sŽ¯•ÊƒR[ƒh = ‚`‚j‚y‚lŽ¯•ÊƒR[ƒh ) GO TO CX00051.                                                      
000000     IF NOT(‚j‚y‚l‚sŽ¯•ÊƒR[ƒh = ‚a‚j‚y‚lŽ¯•ÊƒR[ƒh) GO TO CX00052.                          
000000     PERFORM P500-RTN THRU CX00009 .                                      
000000     IF NOT(‚j‚y‚l‚sŽ¯•ÊƒR[ƒh NOT = 
           ‚`‚j‚y‚lŽ¯•ÊƒR[ƒh) GO TO CX00053.                      
000000     MOVE 0 TO ‚v‚j|“ÇžáŠQ“ü—Í˜A”Ô .                                              
000000 CX00053.                                                                 
           DISPLAY "CX00053" UPON CONSOLE
000000     GO TO CX00054.                                                       
000000 CX00052.                                                                 
           DISPLAY "CX00052" UPON CONSOLE
000000     IF NOT(‚j‚y‚l‚sŽ¯•ÊƒR[ƒh NOT = 
             ‚a‚j‚y‚lŽ¯•ÊƒR[ƒh) GO TO CX00055.                      
000000     MOVE ‚j‚y‚l‚s“ü—Í˜A”Ô† TO ‚v‚j|“ÇžáŠQ“ü—Í˜A”Ô .                                      
000000 CX00055.                                                                 
           DISPLAY "CX00055" UPON CONSOLE
000000     PERFORM P500-RTN THRU CX00009 .                                      
000000 CX00054.                                                                 
           DISPLAY "CX00054" UPON CONSOLE
000000     GO TO CX00056.                                                       
000000 CX00051.                                                                 
           DISPLAY "CX00051" UPON CONSOLE
000000     MOVE ZERO TO ®—Š®—¹ƒtƒ‰ƒO                                                 
000000     MOVE ZERO TO ‚r‚v|”»’è                                                   
000000     MOVE ‚v‚j|‚Q‚SŽ¯•ÊƒR[ƒhã TO ‚x‚t‚j‚nŽ¯•ÊƒR[ƒhã                                       
000000     MOVE ‚v‚j|‚Q‚SŽ¯•ÊƒR[ƒh’† TO ‚x‚t‚j‚nŽ¯•ÊƒR[ƒh’†                                       
000000     MOVE ‚v‚j|‚Q‚SŽ¯•ÊƒR[ƒh‰º TO ‚x‚t‚j‚nŽ¯•ÊƒR[ƒh‰º                                       
000000         READ —LŒø•\     INVALID KEY CONTINUE.                               
000000     IF NOT(FL-STS1 = "00" OR "02") GO TO CX00057.                         
000000     MOVE 1 TO ‚r‚v|”»’è .                                                    
000000     GO TO CX00058.                                                       
000000 CX00057. IF NOT(FL-STS1 = "23") GO TO CX00059.                            
           DISPLAY "CX00057" UPON CONSOLE
000000     MOVE ‚v‚j|‚Q‚SŽ¯•ÊƒR[ƒhã TO ‚j‚`‚h‚rŽ¯•ÊƒR[ƒhã                                       
000000     MOVE ‚v‚j|‚Q‚SŽ¯•ÊƒR[ƒh’† TO ‚j‚`‚h‚rŽ¯•ÊƒR[ƒh’†                                       
000000     MOVE ‚v‚j|‚Q‚SŽ¯•ÊƒR[ƒh‰º TO ‚j‚`‚h‚rŽ¯•ÊƒR[ƒh‰º                                       
000000           READ ‰ñŽûÏ•\   INVALID KEY CONTINUE.                              
000000     IF NOT(FL-STS1 = "00" OR "02") GO TO CX00060.                         
000000     MOVE 2 TO ‚r‚v|”»’è .                                                    
000000     GO TO CX00061.                                                       
000000 CX00060. IF NOT(FL-STS1 = "23") GO TO CX00062.                            
           DISPLAY "CX00060" UPON CONSOLE
000000     GO TO CX00061.                                                       
000000 CX00062.                                                                 
           DISPLAY "CX00062" UPON CONSOLE
000000              DISPLAY "HBHSS020-20 RQKAISYU READ ERROR " ,                
000000              FL-STS1 "-" FL-STS2                                         
000000              STOP RUN .                                                
000000 CX00061.                                                                 
           DISPLAY "CX00061" UPON CONSOLE
000000     GO TO CX00058.                                                       
000000 CX00059.                                                                 
           DISPLAY "CX00059" UPON CONSOLE
000000              DISPLAY "HBHSS020-21 RQYUKOU READ ERROR " ,                 
000000              FL-STS1 "-" FL-STS2                                         
000000              STOP RUN .                                                
000000 CX00058.                                                                 
           DISPLAY "CX00058" UPON CONSOLE
000000     IF NOT(‚j‚y‚l‚sƒ`ƒPƒbƒg‹æ•ª = 1) GO TO CX00063.                                 
000000     IF NOT(‚r‚v|”»’è = 1) GO TO CX00064.                                      
000000     IF NOT(‚x‚t‚j‚nŽx•¥Ž¯•ÊƒR[ƒhã = ZERO) GO TO CX00065.                            
000000     IF NOT(‚x‚t‚j‚nŽæÁŽ¯•ÊƒR[ƒhã NOT = ZERO) GO TO CX00066.                        
000000     MOVE 2 TO ‚v‚j|•s³ƒXƒe[ƒ^ƒX .                                               
000000     GO TO CX00067.                                                       
000000 CX00066.                                                                 
           DISPLAY "CX00066" UPON CONSOLE
000000     PERFORM P100-RTN THRU CX00005 .                                      
000000     IF NOT(‚x‚t‚j‚nƒŒƒR[ƒh‚h‚c = 7 OR 9) GO TO CX00068.                            
000000     IF NOT(‚v‚j|’Š‚¹‚ñ“–‚¹‚ñ‚r‚s‚r = 
                  –¢’Š‚¹‚ñE“–‚¹‚ñ—L‚è) GO TO CX00069.                      
000000     MOVE 3 TO ‚v‚j|•s³ƒXƒe[ƒ^ƒX .                                               
000000     GO TO CX00070.                                                       
000000 CX00069. IF NOT(‚v‚j|’Š‚¹‚ñ“–‚¹‚ñ‚r‚s‚r = 
                  –¢’Š‚¹‚ñE“–‚¹‚ñ–³‚µ) GO TO CX00071.                 
           DISPLAY "CX00069" UPON CONSOLE
000000     MOVE 4 TO ‚v‚j|•s³ƒXƒe[ƒ^ƒX .                                               
000000     GO TO CX00070.                                                       
000000 CX00071. IF NOT(‚v‚j|’Š‚¹‚ñ“–‚¹‚ñ‚r‚s‚r = 
                   ’Š‚¹‚ñÏE“–‚¹‚ñ—L‚è) GO TO CX00072.                 
           DISPLAY "CX00071" UPON CONSOLE
000000     MOVE 5 TO ‚v‚j|•s³ƒXƒe[ƒ^ƒX .                                               
000000     GO TO CX00070.                                                       
000000 CX00072. IF NOT(‚v‚j|’Š‚¹‚ñ“–‚¹‚ñ‚r‚s‚r = 
                ’Š‚¹‚ñÏE“–‚¹‚ñ–³‚µ) GO TO CX00073.                 
           DISPLAY "CX00072" UPON CONSOLE
000000     MOVE 1 TO ‚v‚j|•s³ƒXƒe[ƒ^ƒX .                                               
000000 CX00073.                                                                 
           DISPLAY "CX00073" UPON CONSOLE
000000 CX00070.                                                                 
           DISPLAY "CX00070" UPON CONSOLE
000000     GO TO CX00074.                                                       
000000 CX00068.                                                                 
           DISPLAY "CX00068" UPON CONSOLE
000000     IF NOT(‚v‚j|’Š‚¹‚ñ“–‚¹‚ñ‚r‚s‚r = 
                  –¢’Š‚¹‚ñE“–‚¹‚ñ—L‚è) GO TO CX00075.                      
000000     MOVE 6 TO ‚v‚j|•s³ƒXƒe[ƒ^ƒX .                                               
000000     GO TO CX00076.                                                       
000000 CX00075. IF NOT(‚v‚j|’Š‚¹‚ñ“–‚¹‚ñ‚r‚s‚r = 
                  –¢’Š‚¹‚ñE“–‚¹‚ñ–³‚µ) GO TO CX00077.                 
           DISPLAY "CX00075" UPON CONSOLE
000000     MOVE 7 TO ‚v‚j|•s³ƒXƒe[ƒ^ƒX .                                               
000000     GO TO CX00076.                                                       
000000 CX00077. IF NOT(‚v‚j|’Š‚¹‚ñ“–‚¹‚ñ‚r‚s‚r = 
                 ’Š‚¹‚ñÏE“–‚¹‚ñ—L‚è) GO TO CX00078.                 
           DISPLAY "CX00077" UPON CONSOLE
000000     MOVE 8 TO ‚v‚j|•s³ƒXƒe[ƒ^ƒX .                                               
000000     GO TO CX00076.                                                       
000000 CX00078. IF NOT(‚v‚j|’Š‚¹‚ñ“–‚¹‚ñ‚r‚s‚r = 
                 ’Š‚¹‚ñÏE“–‚¹‚ñ–³‚µ) GO TO CX00079.                 
           DISPLAY "CX00078" UPON CONSOLE
000000     MOVE 1 TO ‚v‚j|•s³ƒXƒe[ƒ^ƒX .                                               
000000 CX00079.                                                                 
           DISPLAY "CX00079" UPON CONSOLE
000000 CX00076.                                                                 
           DISPLAY "CX00076" UPON CONSOLE
000000 CX00074.                                                                 
           DISPLAY "CX00074" UPON CONSOLE
000000 CX00067.                                                                 
           DISPLAY "CX00067" UPON CONSOLE
000000     PERFORM P200-RTN THRU CX00006 .                                      
000000     GO TO CX00080.                                                       
000000 CX00065.                                                                 
           DISPLAY "CX00065" UPON CONSOLE
000000     IF NOT(‚x‚t‚j‚n‰ñŽû“ú = ZERO) GO TO CX00081.                                 
000000     IF NOT( (‚x‚t‚j‚n“–‰Œp‘±‰ñ†” NOT = 
              ‚x‚t‚j‚nŽÀŽ¿Œp‘±‰ñ†”) AND (‚x‚t‚j‚n‘ã‘ÖŽ¯•ÊƒR[ƒhã =          
000000     ZERO)) GO TO CX00082.                                                 
000000     MOVE 12 TO ‚v‚j|•s³ƒXƒe[ƒ^ƒX                                                
000000     PERFORM P200-RTN THRU CX00006 .                                      
000000     GO TO CX00083.                                                       
000000 CX00082.                                                                 
           DISPLAY "CX00082" UPON CONSOLE
000000     PERFORM P300-RTN THRU CX00007 .                                      
000000     IF NOT(®—Š®—¹ƒtƒ‰ƒO = 1) GO TO CX00084.                                    
000000     MOVE 10 TO ‚v‚j|•s³ƒXƒe[ƒ^ƒX                                                
000000     PERFORM P200-RTN THRU CX00006 .                                      
000000     GO TO CX00085.                                                       
000000 CX00084. IF NOT(®—Š®—¹ƒtƒ‰ƒO = 9) GO TO CX00086.                               
           DISPLAY "CX00084" UPON CONSOLE
000000     MOVE 1 TO ‚v‚j|•s³ƒXƒe[ƒ^ƒX                                                 
000000     PERFORM P200-RTN THRU CX00006 .                                      
000000 CX00086.                                                                 
           DISPLAY "CX00086" UPON CONSOLE
000000 CX00085.                                                                 
           DISPLAY "CX00085" UPON CONSOLE
000000 CX00083.                                                                 
           DISPLAY "CX00083" UPON CONSOLE
000000     GO TO CX00087.                                                       
000000 CX00081.                                                                 
           DISPLAY "CX00081" UPON CONSOLE
000000     MOVE 9 TO ‚v‚j|•s³ƒXƒe[ƒ^ƒX                                                 
000000     PERFORM P200-RTN THRU CX00006 .                                      
000000 CX00087.                                                                 
           DISPLAY "CX00087" UPON CONSOLE
000000 CX00080.                                                                 
           DISPLAY "CX00080" UPON CONSOLE
000000     GO TO CX00088.                                                       
000000 CX00064. IF NOT(‚r‚v|”»’è = 2) GO TO CX00089.                                 
           DISPLAY "CX00064" UPON CONSOLE
000000     MOVE 9 TO ‚v‚j|•s³ƒXƒe[ƒ^ƒX                                                 
000000     PERFORM P200-RTN THRU CX00006 .                                      
000000     GO TO CX00088.                                                       
000000 CX00089. IF NOT(‚r‚v|”»’è = ZERO) GO TO CX00090.                              
           DISPLAY "CX00089" UPON CONSOLE
000000     MOVE 1 TO ‚v‚j|•s³ƒXƒe[ƒ^ƒX                                                 
000000     PERFORM P200-RTN THRU CX00006 .                                      
000000 CX00090.                                                                 
           DISPLAY "CX00090" UPON CONSOLE
000000 CX00088.                                                                 
           DISPLAY "CX00088" UPON CONSOLE
000000     GO TO CX00091.                                                       
000000 CX00063. IF NOT(‚j‚y‚l‚sƒ`ƒPƒbƒg‹æ•ª = 2) GO TO CX00092.                            
           DISPLAY "CX00063" UPON CONSOLE
000000     IF NOT(‚r‚v|”»’è = 1) GO TO CX00093.                                      
000000     IF NOT(‚x‚t‚j‚nŽæÁŽ¯•ÊƒR[ƒhã = ZERO) GO TO CX00094.                            
000000     IF NOT(‚x‚t‚j‚nŽx•¥Ž¯•ÊƒR[ƒhã NOT = ZERO) GO TO CX00095.                        
000000     MOVE 2 TO ‚v‚j|•s³ƒXƒe[ƒ^ƒX .                                               
000000     GO TO CX00096.                                                       
000000 CX00095.                                                                 
           DISPLAY "CX00095" UPON CONSOLE
000000     PERFORM P100-RTN THRU CX00005 .                                      
000000     IF NOT(‚x‚t‚j‚nƒŒƒR[ƒh‚h‚c = 7 OR 9) GO TO CX00097.                            
000000     IF NOT(‚v‚j|’Š‚¹‚ñ“–‚¹‚ñ‚r‚s‚r = 
                    –¢’Š‚¹‚ñE“–‚¹‚ñ—L‚è) GO TO CX00098.                      
000000     MOVE 3 TO ‚v‚j|•s³ƒXƒe[ƒ^ƒX .                                               
000000     GO TO CX00099.                                                       
000000 CX00098. IF NOT(‚v‚j|’Š‚¹‚ñ“–‚¹‚ñ‚r‚s‚r = 
                   –¢’Š‚¹‚ñE“–‚¹‚ñ–³‚µ) GO TO CX00100.                 
           DISPLAY "CX00098" UPON CONSOLE
000000     MOVE 4 TO ‚v‚j|•s³ƒXƒe[ƒ^ƒX .                                               
000000     GO TO CX00099.                                                       
000000 CX00100. IF NOT(‚v‚j|’Š‚¹‚ñ“–‚¹‚ñ‚r‚s‚r = 
                  ’Š‚¹‚ñÏE“–‚¹‚ñ—L‚è) GO TO CX00101.                 
           DISPLAY "CX00100" UPON CONSOLE
000000     MOVE 5 TO ‚v‚j|•s³ƒXƒe[ƒ^ƒX .                                               
000000     GO TO CX00099.                                                       
000000 CX00101. IF NOT(‚v‚j|’Š‚¹‚ñ“–‚¹‚ñ‚r‚s‚r = 
                   ’Š‚¹‚ñÏE“–‚¹‚ñ–³‚µ) GO TO CX00102.                 
           DISPLAY "CX00101" UPON CONSOLE
000000     MOVE 1 TO ‚v‚j|•s³ƒXƒe[ƒ^ƒX .                                               
000000 CX00102.                                                                 
           DISPLAY "CX00102" UPON CONSOLE
000000 CX00099.                                                                 
           DISPLAY "CX00099" UPON CONSOLE
000000     GO TO CX00103.                                                       
000000 CX00097.                                                                 
           DISPLAY "CX00097" UPON CONSOLE
000000     IF NOT(‚v‚j|’Š‚¹‚ñ“–‚¹‚ñ‚r‚s‚r = 
                  –¢’Š‚¹‚ñE“–‚¹‚ñ—L‚è) GO TO CX00104.                      
000000     MOVE 6 TO ‚v‚j|•s³ƒXƒe[ƒ^ƒX .                                               
000000     GO TO CX00105.                                                       
000000 CX00104. IF NOT(‚v‚j|’Š‚¹‚ñ“–‚¹‚ñ‚r‚s‚r = 
                   –¢’Š‚¹‚ñE“–‚¹‚ñ–³‚µ) GO TO CX00106.                 
           DISPLAY "CX00104" UPON CONSOLE
000000     MOVE 7 TO ‚v‚j|•s³ƒXƒe[ƒ^ƒX .                                               
000000     GO TO CX00105.                                                       
000000 CX00106. IF NOT(‚v‚j|’Š‚¹‚ñ“–‚¹‚ñ‚r‚s‚r = 
               ’Š‚¹‚ñÏE“–‚¹‚ñ—L‚è) GO TO CX00107.                 
           DISPLAY "CX00106" UPON CONSOLE
000000     MOVE 8 TO ‚v‚j|•s³ƒXƒe[ƒ^ƒX .                                               
000000     GO TO CX00105.                                                       
000000 CX00107. IF NOT(‚v‚j|’Š‚¹‚ñ“–‚¹‚ñ‚r‚s‚r = 
                 ’Š‚¹‚ñÏE“–‚¹‚ñ–³‚µ) GO TO CX00108.                 
           DISPLAY "CX00107" UPON CONSOLE
000000     MOVE 1 TO ‚v‚j|•s³ƒXƒe[ƒ^ƒX .                                               
000000 CX00108.                                                                 
           DISPLAY "CX00108" UPON CONSOLE
000000 CX00105.                                                                 
           DISPLAY "CX00105" UPON CONSOLE
000000 CX00103.                                                                 
           DISPLAY "CX00103" UPON CONSOLE
000000 CX00096.                                                                 
           DISPLAY "CX00096" UPON CONSOLE
000000     PERFORM P200-RTN THRU CX00006 .                                      
000000     GO TO CX00109.                                                       
000000 CX00094.                                                                 
           DISPLAY "CX00094" UPON CONSOLE
000000     IF NOT(‚x‚t‚j‚n‰ñŽû“ú = ZERO) GO TO CX00110.                                 
000000     IF NOT(‚x‚t‚j‚nŽæÁ‹æ•ª = ZERO) GO TO CX00111.                                
000000     PERFORM P400-RTN THRU CX00008 .                                      
000000     IF NOT(®—Š®—¹ƒtƒ‰ƒO = 1) GO TO CX00112.                                    
000000     MOVE 10 TO ‚v‚j|•s³ƒXƒe[ƒ^ƒX                                                
000000     PERFORM P200-RTN THRU CX00006 .                                      
000000     GO TO CX00113.                                                       
000000 CX00112. IF NOT(®—Š®—¹ƒtƒ‰ƒO = 9) GO TO CX00114.                               
           DISPLAY "CX00112" UPON CONSOLE
000000     MOVE 1 TO ‚v‚j|•s³ƒXƒe[ƒ^ƒX                                                 
000000     PERFORM P200-RTN THRU CX00006 .                                      
000000 CX00114.                                                                 
           DISPLAY "CX00114" UPON CONSOLE
000000 CX00113.                                                                 
           DISPLAY "CX00113" UPON CONSOLE
000000     GO TO CX00115.                                                       
000000 CX00111.                                                                 
           DISPLAY "CX00111" UPON CONSOLE
000000     MOVE 1 TO ‚v‚j|•s³ƒXƒe[ƒ^ƒX                                                 
000000     PERFORM P200-RTN THRU CX00006 .                                      
000000 CX00115.                                                                 
           DISPLAY "CX00115" UPON CONSOLE
000000     GO TO CX00116.                                                       
000000 CX00110.                                                                 
           DISPLAY "CX00110" UPON CONSOLE
000000     MOVE 9 TO ‚v‚j|•s³ƒXƒe[ƒ^ƒX                                                 
000000     PERFORM P200-RTN THRU CX00006 .                                      
000000 CX00116.                                                                 
           DISPLAY "CX00116" UPON CONSOLE
000000 CX00109.                                                                 
           DISPLAY "CX00109" UPON CONSOLE
000000     GO TO CX00117.                                                       
000000 CX00093. IF NOT(‚r‚v|”»’è = 2) GO TO CX00118.                                 
           DISPLAY "CX00093" UPON CONSOLE
000000     MOVE 9 TO ‚v‚j|•s³ƒXƒe[ƒ^ƒX                                                 
000000     PERFORM P200-RTN THRU CX00006 .                                      
000000     GO TO CX00117.                                                       
000000 CX00118. IF NOT(‚r‚v|”»’è = ZERO) GO TO CX00119.                              
           DISPLAY "CX00118" UPON CONSOLE
000000     MOVE 1 TO ‚v‚j|•s³ƒXƒe[ƒ^ƒX                                                 
000000     PERFORM P200-RTN THRU CX00006 .                                      
000000 CX00119.                                                                 
           DISPLAY "CX00119" UPON CONSOLE
000000 CX00117.                                                                 
           DISPLAY "CX00117" UPON CONSOLE
000000 CX00092.                                                                 
           DISPLAY "CX00092" UPON CONSOLE
000000 CX00091.                                                                 
           DISPLAY "CX00091" UPON CONSOLE
000000 CX00056.                                                                 
           DISPLAY "CX00056" UPON CONSOLE
000000     MOVE ‚v‚j|‘OŒ‰ñŽûƒf[ƒ^ TO ‚v‚j|‘OXŒ‰ñŽûƒf[ƒ^                                       
000000     MOVE ‰ñŽûÏƒ`ƒPƒbƒg‚v‚j‚q TO ‚v‚j|‘OŒ‰ñŽûƒf[ƒ^ .                                      
000000     IF NOT(‚j‚y‚l‚sŽ¯•ÊƒR[ƒh (17:8) = SPACE) GO TO CX00120.                       
000000     PERFORM ZMSSRLCV-RTN THRU CX00017                                    
000000     MOVE ‚j‚y‚l‚sŽ¯•ÊƒR[ƒh TO ‚v‚j|‚j‚y‚l‚sŽ¯•ÊƒR[ƒh                                       
000000     MOVE ZERO TO ‚v‚j|‚j‚y‚l‚sŽ¯•ÊƒR[ƒh‰º .                                         
000000     GO TO CX00121.                                                       
000000 CX00120.                                                                 
           DISPLAY "CX00120" UPON CONSOLE
000000     MOVE ‚j‚y‚l‚sŽ¯•ÊƒR[ƒhã TO ‚v‚j|‚Q‚SŽ¯•ÊƒR[ƒhã                                       
000000     MOVE ‚j‚y‚l‚sŽ¯•ÊƒR[ƒh’† TO ‚v‚j|‚Q‚SŽ¯•ÊƒR[ƒh’†                                       
000000     MOVE ‚j‚y‚l‚sŽ¯•ÊƒR[ƒh‰º TO ‚v‚j|‚Q‚SŽ¯•ÊƒR[ƒh‰º                                       
000000     MOVE ‚j‚y‚l‚sŽ¯•ÊƒR[ƒh TO ‚v‚j|‚j‚y‚l‚sŽ¯•ÊƒR[ƒh .                                     
000000 CX00121.                                                                 
           DISPLAY "CX00121" UPON CONSOLE
000000     IF NOT(SW-READEND = 0) GO TO CX00122.                                 
000000           READ  ‰ñŽûÏƒ`ƒPƒbƒg‚v‚j‚e  NEXT  AT  END  CONTINUE .                    
000000     IF NOT(FL-STS1 = "00" OR "02") GO TO CX00123.                         
000000     GO TO CX00124.                                                       
000000 CX00123. IF NOT(FL-STS1 = "10") GO TO CX00125.                            
           DISPLAY "CX00123" UPON CONSOLE
000000     MOVE 1 TO SW-READEND                                                 
000000     MOVE HIGH-VALUE TO ‰ñŽûÏƒ`ƒPƒbƒg‚v‚j‚q .                                      
000000     GO TO CX00124.                                                       
000000 CX00125.                                                                 
           DISPLAY "CX00125" UPON CONSOLE
000000             DISPLAY "HBHSS020-22 SQWKSZTK READ ERROR " ,                 
000000                                  FL-STS1 " " FL-STS2                     
000000             STOP RUN .                                                 
000000 CX00124.                                                                 
           DISPLAY "CX00124" UPON CONSOLE
000000     GO TO CX00126.                                                       
000000 CX00122.                                                                 
           DISPLAY "CX00122" UPON CONSOLE
000000     MOVE 1 TO SW-WHILEEND .                                              
000000 CX00126.                                                                 
           DISPLAY "CX00126" UPON CONSOLE
000000     GO TO CX00049.                                                       
000000 CX00050.                                                                 
           DISPLAY "CX00050" UPON CONSOLE
000000       INITIALIZE    ‚v‚r‚s‚j•s³‰ñŽû–¾×                                           
000000     MOVE ‚v‚j|Žx•¥³í–‡” TO ‚v‚r‚s‚j³í–‡”                                           
000000     MOVE ‚v‚j|‘“–‚¹‚ñ‹à TO ‚v‚r‚s‚j‘“–‚¹‚ñ‹à                                           
000000     MOVE ‚v‚j|Œp‘±–‡” TO ‚v‚r‚s‚jŒp‘±–‡”                                             
000000     MOVE ‚v‚j|‘Œp‘±“–‚¹‚ñ‹à TO ‚v‚r‚s‚j‘Œp‘±“–‚¹‚ñ‹à                                       
000000     MOVE ‚v‚j|Žx•¥•s³–‡” TO ‚v‚r‚s‚j•s³–‡”                                           
000000     COMPUTE ‚v‚r‚s‚j‘–‡” = ‚v‚j|Žx•¥³í–‡” + 
                  ‚v‚j|Žx•¥•s³–‡”                              
000000       WRITE         Žx•¥‰ñŽû“Ë‡Œ‹‰Êˆê——‚v‚j‚q .                                      
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00127.                             
000000          DISPLAY "HBHSS020-23 SQWSIKSK WRITE ERROR " ,                   
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00127.                                                                 
           DISPLAY "CX00127" UPON CONSOLE
000000       INITIALIZE    ‚v‚s‚n‚j•s³‰ñŽû–¾×                                           
000000     MOVE ‚v‚j|ŽæÁ³í–‡” TO ‚v‚s‚n‚j³í–‡”                                           
000000     MOVE ‚v‚j|‘ŽæÁ‹à TO ‚v‚s‚n‚j‘ŽæÁ‹à                                             
000000     MOVE ‚v‚j|ŽæÁ•s³–‡” TO ‚v‚s‚n‚j•s³–‡”                                           
000000     COMPUTE ‚v‚s‚n‚j‘–‡” = ‚v‚j|ŽæÁ³í–‡” + 
             ‚v‚j|ŽæÁ•s³–‡”                              
000000       WRITE         ŽæÁ‰ñŽû“Ë‡Œ‹‰Êˆê——‚v‚j‚q .                                      
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00128.                             
000000          DISPLAY "HBHSS020-24 SQWTOKSK WRITE ERROR " ,                   
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00128.                                                                 
           DISPLAY "CX00128" UPON CONSOLE
000000     IF NOT(SW-WKZF-OUT = ZERO) GO TO CX00129.                             
000000     MOVE ZERO TO ‚v‚j‚y‚eƒoƒbƒ`‚m‚n                                               
000000     MOVE ZERO TO ‚v‚j‚y‚e“ü—Í˜A”Ô†                                               
000000     MOVE ZERO TO ‚v‚j‚y‚eŽ¯•ÊƒR[ƒhã                                              
000000     MOVE ZERO TO ‚v‚j‚y‚eŽ¯•ÊƒR[ƒh’†                                              
000000     MOVE ZERO TO ‚v‚j‚y‚eŽ¯•ÊƒR[ƒh‰º                                              
000000          WRITE  Œp‘±\ž•¡”“–‚¹‚ñ‚v‚j‚q .                                           
000000     IF NOT(FL-STS1 NOT = "00" AND "02") GO TO CX00130.                    
000000               DISPLAY "HBHSS020-25 SQWKZFKT WRITE ERROR " ,              
000000               FL-STS1 "-" FL-STS2                                        
000000               STOP RUN .                                               
000000 CX00130.                                                                 
           DISPLAY "CX00130" UPON CONSOLE
000000 CX00129.                                                                 
           DISPLAY "CX00129" UPON CONSOLE
000000 CX00003. EXIT.                                                           
000000 E000-RTN .                                                               
000000     IF NOT(‚a‚b‚g‚j‰Ò“­ƒtƒ‰ƒO = 1) GO TO CX00131.                                  
000000     PERFORM E100-RTN THRU CX00010 .                                      
000000 CX00131.                                                                 
           DISPLAY "CX00131" UPON CONSOLE
000000       COMMIT.                                                            
000000       CLOSE        ‰^—pŠÇ—‚e .                                               
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00132.                             
000000           DISPLAY "HBHSS020-27 VRUNYKAN CLOSE ERROR " ,                  
000000                                FL-STS1 " " FL-STS2                       
000000           STOP RUN .                                                   
000000 CX00132.                                                                 
           DISPLAY "CX00132" UPON CONSOLE
000000       CLOSE        ƒoƒbƒ`‹N“®ŠÇ—‚e .                                            
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00133.                             
000000           DISPLAY "HBHSS020-28 VRBCHKID CLOSE ERROR " ,                  
000000                                FL-STS1 " " FL-STS2                       
000000           STOP RUN .                                                   
000000 CX00133.                                                                 
           DISPLAY "CX00133" UPON CONSOLE
000000       CLOSE        ‰ñŽûÏƒ`ƒPƒbƒg‚v‚j‚e .                                          
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00134.                             
000000           DISPLAY "HBHSS020-29 SQWKSZTK CLOSE ERROR " ,                  
000000                                FL-STS1 " " FL-STS2                       
000000           STOP RUN .                                                   
000000 CX00134.                                                                 
           DISPLAY "CX00134" UPON CONSOLE
000000       CLOSE        —LŒø•\ .                                                 
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00135.                             
000000          DISPLAY "HBHSS020-30 RQYUKOU  CLOSE ERROR " ,                   
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00135.                                                                 
           DISPLAY "CX00135" UPON CONSOLE
000000       CLOSE        ‰ñŽûÏ•\ .                                                
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00136.                             
000000          DISPLAY "HBHSS020-31 RQKAISYU CLOSE ERROR " ,                   
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00136.                                                                 
           DISPLAY "CX00136" UPON CONSOLE
000000       CLOSE        ƒQ[ƒ€‚e .                                                
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00137.                             
000000          DISPLAY "HBHSS020-32 VIGAME CLOSE ERROR " ,                     
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00137.                                                                 
           DISPLAY "CX00137" UPON CONSOLE
000000       CLOSE        ƒQ[ƒ€ó‹µ‚e .                                              
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00138.                             
000000           DISPLAY "HBHSS020-33 VIGAMJYO CLOSE ERROR " ,                  
000000                                FL-STS1 " " FL-STS2                       
000000           STOP RUN .                                                   
000000 CX00138.                                                                 
           DISPLAY "CX00138" UPON CONSOLE
000000       CLOSE        ƒQ[ƒ€ƒ^ƒCƒv‚e .                                             
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00139.                             
000000          DISPLAY "HBHSS020-34 VIGMTYPE CLOSE ERROR " ,                   
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00139.                                                                 
           DISPLAY "CX00139" UPON CONSOLE
000000       CLOSE        ƒuƒƒbƒN‚e .                                               
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00140.                             
000000          DISPLAY "HBHSS020-35 VIBLOCK CLOSE ERROR " ,                    
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00140.                                                                 
           DISPLAY "CX00140" UPON CONSOLE
000000       CLOSE        ’Š‚¹‚ñŒ‹‰Ê‚e .                                              
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00141.                             
000000          DISPLAY "HBHSS020-36 VITYUKEK CLOSE ERROR " ,                   
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00141.                                                                 
           DISPLAY "CX00141" UPON CONSOLE
000000       CLOSE         ³í‰ñŽûƒ`ƒPƒbƒg‚e .                                          
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00142.                             
000000          DISPLAY "HBHSS020-37 SQWSZKST CLOSE ERROR " ,                   
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00142.                                                                 
           DISPLAY "CX00142" UPON CONSOLE
000000       CLOSE         ‰ñŽûŠm”FÏƒ`ƒPƒbƒg‚v‚j‚e .                                       
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00143.                             
000000          DISPLAY "HBHSS020-38 SQWKSKKN CLOSE ERROR " ,                   
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00143.                                                                 
           DISPLAY "CX00143" UPON CONSOLE
000000       CLOSE         Œp‘±\ž•¡”“–‚¹‚ñ‚v‚j‚e .                                       
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00144.                             
000000          DISPLAY "HBHSS020-39 SQWKZFKT CLOSE ERROR " ,                   
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00144.                                                                 
           DISPLAY "CX00144" UPON CONSOLE
000000       CLOSE         Žx•¥‰ñŽû“Ë‡Œ‹‰Êˆê——‚v‚j‚e .                                      
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00145.                             
000000          DISPLAY "HBHSS020-40 SQWSIKSK CLOSE ERROR " ,                   
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00145.                                                                 
           DISPLAY "CX00145" UPON CONSOLE
000000       CLOSE         Žx•¥‰ñŽû“Ë‡Œ‹‰Ê‡Œv‚v‚j‚e .                                      
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00146.                             
000000          DISPLAY "HBHSS020-59 SQWSIKGK CLOSE ERROR " ,                   
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00146.                                                                 
           DISPLAY "CX00146" UPON CONSOLE
000000       CLOSE         ŽæÁ‰ñŽû“Ë‡Œ‹‰Êˆê——‚v‚j‚e .                                      
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00147.                             
000000          DISPLAY "HBHSS020-41 SQWTOKSK CLOSE ERROR " ,                   
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00147.                                                                 
           DISPLAY "CX00147" UPON CONSOLE
000000       CLOSE         ‰ñŽûÏƒf[ƒ^‚v‚j‚e .                                          
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00148.                             
000000          DISPLAY "HBHSS020-42 SQWKSZDT CLOSE ERROR " ,                   
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00148.                                                                 
           DISPLAY "CX00148" UPON CONSOLE
      *20141117C³ŠJŽn
000000*       @ZCTMSGOT(MSGID=#BH001,                                            
000000*                 PROGID=HBHSS020); .                                      
      *20141117C³I—¹
000000 CX00004. EXIT.                                                           
000000 P100-RTN .                                                               
000000     MOVE ZERO TO ‚v‚j|’Š‚¹‚ñ“–‚¹‚ñ‚r‚s‚r .                                          
000000     IF NOT( (‚x‚t‚j‚nƒQ[ƒ€Ží•Ê = 1) OR (‚x‚t‚j‚nƒQ[ƒ€Ží•Ê = 2 
              AND ‚x‚t‚j‚n\žƒ^ƒCƒv (1)  = 2)) GO TO CX00149.                                                  
000000     MOVE ZERO TO ’Š‚¹‚ñ‚b‚m‚s                                                  
000000     MOVE ZERO TO “–‚¹‚ñ‚b‚m‚s                                                  
000000     MOVE 1 TO I .                                                        
000000     IF NOT(‚x‚t‚j‚nŽÀŽ¿Œp‘±‰ñ†” > 1) GO TO CX00150.                                
000000     MOVE ‚x‚t‚j‚nŽÀŽ¿Œp‘±‰ñ†” TO J .                                              
000000     GO TO CX00151.                                                       
000000 CX00150.                                                                 
           DISPLAY "CX00150" UPON CONSOLE
000000     MOVE ‚x‚t‚j‚nƒpƒlƒ‹” TO J .                                                 
000000 CX00151.                                                                 
           DISPLAY "CX00151" UPON CONSOLE
000000 CX00152. IF NOT(I <= J) GO TO CX00153.                                    
           DISPLAY "CX00152" UPON CONSOLE
000000     IF NOT(‚x‚t‚j‚n“–‚¹‚ñ”»’è‹æ•ª (I) NOT = ZERO) GO TO CX00154.                     
000000     COMPUTE ’Š‚¹‚ñ‚b‚m‚s = ’Š‚¹‚ñ‚b‚m‚s + 1 .                                        
000000     IF NOT(‚x‚t‚j‚n“–‚¹‚ñ”»’è‹æ•ª (I) = 1 OR 2) GO TO CX00155.                       
000000     COMPUTE “–‚¹‚ñ‚b‚m‚s = “–‚¹‚ñ‚b‚m‚s + 1 .                                        
000000 CX00155.                                                                 
           DISPLAY "CX00155" UPON CONSOLE
000000 CX00154.                                                                 
           DISPLAY "CX00154" UPON CONSOLE
000000     COMPUTE I = I + 1 .                                                  
000000     GO TO CX00152.                                                       
000000 CX00153.                                                                 
           DISPLAY "CX00153" UPON CONSOLE
000000     IF NOT(’Š‚¹‚ñ‚b‚m‚s = J) GO TO CX00156.                                     
000000     IF NOT(“–‚¹‚ñ‚b‚m‚s > ZERO) GO TO CX00157.                                  
000000     MOVE ’Š‚¹‚ñÏE“–‚¹‚ñ—L‚è TO ‚v‚j|’Š‚¹‚ñ“–‚¹‚ñ‚r‚s‚r .                                    
000000     GO TO CX00158.                                                       
000000 CX00157.                                                                 
           DISPLAY "CX00157" UPON CONSOLE
000000     MOVE ’Š‚¹‚ñÏE“–‚¹‚ñ–³‚µ TO ‚v‚j|’Š‚¹‚ñ“–‚¹‚ñ‚r‚s‚r .                                    
000000 CX00158.                                                                 
           DISPLAY "CX00158" UPON CONSOLE
000000     GO TO CX00159.                                                       
000000 CX00156.                                                                 
           DISPLAY "CX00156" UPON CONSOLE
000000     IF NOT(“–‚¹‚ñ‚b‚m‚s > ZERO) GO TO CX00160.                                  
000000     MOVE –¢’Š‚¹‚ñE“–‚¹‚ñ—L‚è TO ‚v‚j|’Š‚¹‚ñ“–‚¹‚ñ‚r‚s‚r .                                    
000000     GO TO CX00161.                                                       
000000 CX00160.                                                                 
           DISPLAY "CX00160" UPON CONSOLE
000000     MOVE –¢’Š‚¹‚ñE“–‚¹‚ñ–³‚µ TO ‚v‚j|’Š‚¹‚ñ“–‚¹‚ñ‚r‚s‚r .                                    
000000 CX00161.                                                                 
           DISPLAY "CX00161" UPON CONSOLE
000000 CX00159.                                                                 
           DISPLAY "CX00159" UPON CONSOLE
000000     GO TO CX00162.                                                       
000000 CX00149.                                                                 
           DISPLAY "CX00149" UPON CONSOLE
000000     MOVE ZERO TO ’Š‚¹‚ñ‚b‚m‚s                                                  
000000     MOVE ZERO TO “–‚¹‚ñ‚b‚m‚s                                                  
000000     MOVE 1 TO I .                                                        
000000 CX00163. IF NOT(I <= 11) GO TO CX00164.                                   
           DISPLAY "CX00163" UPON CONSOLE
000000     IF NOT(‚x‚t‚j‚nƒRƒ“ƒr“–”»’è‹æ•ª (I) NOT = ZERO) GO TO CX00165.                    
000000     COMPUTE ’Š‚¹‚ñ‚b‚m‚s = ’Š‚¹‚ñ‚b‚m‚s + 1 .                                        
000000     IF NOT(‚x‚t‚j‚nƒRƒ“ƒr“–”»’è‹æ•ª (I) = 1 OR 2) GO TO CX00166.                      
000000     COMPUTE “–‚¹‚ñ‚b‚m‚s = “–‚¹‚ñ‚b‚m‚s + 1 .                                        
000000 CX00166.                                                                 
           DISPLAY "CX00166" UPON CONSOLE
000000 CX00165.                                                                 
           DISPLAY "CX00165" UPON CONSOLE
000000     COMPUTE I = I + 1 .                                                  
000000     GO TO CX00163.                                                       
000000 CX00164.                                                                 
           DISPLAY "CX00164" UPON CONSOLE
000000     IF NOT(’Š‚¹‚ñ‚b‚m‚s = 11) GO TO CX00167.                                    
000000     IF NOT(“–‚¹‚ñ‚b‚m‚s > ZERO) GO TO CX00168.                                  
000000     MOVE ’Š‚¹‚ñÏE“–‚¹‚ñ—L‚è TO ‚v‚j|’Š‚¹‚ñ“–‚¹‚ñ‚r‚s‚r .                                    
000000     GO TO CX00169.                                                       
000000 CX00168.                                                                 
           DISPLAY "CX00168" UPON CONSOLE
000000     MOVE ’Š‚¹‚ñÏE“–‚¹‚ñ–³‚µ TO ‚v‚j|’Š‚¹‚ñ“–‚¹‚ñ‚r‚s‚r .                                    
000000 CX00169.                                                                 
           DISPLAY "CX00169" UPON CONSOLE
000000     GO TO CX00170.                                                       
000000 CX00167.                                                                 
           DISPLAY "CX00167" UPON CONSOLE
000000     IF NOT(“–‚¹‚ñ‚b‚m‚s > ZERO) GO TO CX00171.                                  
000000     MOVE –¢’Š‚¹‚ñE“–‚¹‚ñ—L‚è TO ‚v‚j|’Š‚¹‚ñ“–‚¹‚ñ‚r‚s‚r .                                    
000000     GO TO CX00172.                                                       
000000 CX00171.                                                                 
           DISPLAY "CX00171" UPON CONSOLE
000000     MOVE –¢’Š‚¹‚ñE“–‚¹‚ñ–³‚µ TO ‚v‚j|’Š‚¹‚ñ“–‚¹‚ñ‚r‚s‚r .                                    
000000 CX00172.                                                                 
           DISPLAY "CX00172" UPON CONSOLE
000000 CX00170.                                                                 
           DISPLAY "CX00170" UPON CONSOLE
000000 CX00162.                                                                 
           DISPLAY "CX00162" UPON CONSOLE
000000 CX00005. EXIT.                                                           
000000 P200-RTN .                                                               
000000     IF NOT(‚j‚y‚l‚sƒ`ƒPƒbƒg‹æ•ª = 1) GO TO CX00173.                                 
000000     MOVE ‚j‚y‚l‚sƒoƒbƒ`‚m‚n TO ‚v‚r‚s‚jƒoƒbƒ`‚m‚n                                          
000000     MOVE ‚j‚y‚l‚s“ü—Í˜A”Ô† TO ‚v‚r‚s‚j“ü—Í˜A”Ô†                                          
000000     MOVE ‚v‚j|‚j‚y‚l‚sŽ¯•ÊƒR[ƒhã TO ‚v‚r‚s‚jŽ¯•ÊƒR[ƒhã                                     
000000     MOVE ‚v‚j|‚j‚y‚l‚sŽ¯•ÊƒR[ƒh’† TO ‚v‚r‚s‚jŽ¯•ÊƒR[ƒh’†                                     
000000     MOVE ‚v‚j|‚j‚y‚l‚sŽ¯•ÊƒR[ƒh‰º TO ‚v‚r‚s‚jŽ¯•ÊƒR[ƒh‰º                                     
      *20141117C³ŠJŽn
000000*         @ZDTDTCMP(TICKETNO = ‚v‚j|‚Q‚SŽ¯•ÊƒR[ƒh’† ,                               
000000*                   BASEDATE = ‚t‚m‚j‚Pƒoƒbƒ`‹Æ–±“ú•t ,                               
000000*                   YYYYMMDD = ”­s“ú)                                        
      *** ‰Šú‰» ***                                                  
           INITIALIZE     DTCP-PARAM.                                           
      *** ƒpƒ‰ƒ[ƒ^@ƒ`ƒFƒbƒN ***                                    
           IF  ‚v‚j|‚Q‚SŽ¯•ÊƒR[ƒh’†  =  ZERO    THEN
                   DISPLAY "Ž¯•ÊƒR[ƒh‚ðŽw’è‚µ‚Ä‰º‚³‚¢"                           
                   STOP RUN.                                                         
           IF  ‚t‚m‚j‚Pƒoƒbƒ`‹Æ–±“ú•t  =  LOW-VALUE    THEN                                           
                   DISPLAY "Šî€“ú‚ðŽw’è‚µ‚Ä‰º‚³‚¢"                             
                   STOP RUN.                                                         
           IF  ”­s“ú  =  LOW-VALUE    THEN                                           
                   DISPLAY "¼—ï”NŒŽ“ú‚ÌŽó“ü€–Ú‚ðŽw’è‚µ‚Ä‰º‚³‚¢"               
                   STOP RUN.                                                         
      *** “ü—Íƒpƒ‰ƒ[ƒ^ˆÚ‘— ***
            MOVE ‚v‚j|‚Q‚SŽ¯•ÊƒR[ƒh’† TO  DTCP-TICKETNO
            MOVE ‚t‚m‚j‚Pƒoƒbƒ`‹Æ–±“ú•t TO  DTCP-BASEDATE
      *** “ú•tŽZoƒAƒNƒZƒXƒ‚ƒWƒ…[ƒ‹ŒÄ‚Ño‚µ ***                        
            CALL "HSAAL040" USING DTCP-PARAM
      *** o—Íƒpƒ‰ƒ[ƒ^ˆÚ‘— ***
            MOVE DTCP-YYYYMMDD TO ”­s“ú
      *20141117C³I—¹
000000     MOVE ”­s“úi”Nj TO ‚v‚r‚s‚j”­Œ””N                                               
000000     MOVE ”­s“úiŒŽj TO ‚v‚r‚s‚j”­Œ”ŒŽ .                                             
000000     IF NOT(®—Š®—¹ƒtƒ‰ƒO = 0 OR 9) GO TO CX00174.                               
000000     COMPUTE ‚v‚j|Žx•¥•s³–‡” = ‚v‚j|Žx•¥•s³–‡” + 1 .                                  
000000 CX00174.                                                                 
           DISPLAY "CX00174" UPON CONSOLE
000000     MOVE ZERO TO ‚v‚r‚s‚j“ÇžáŠQ“ü—Í’Ê”Ô                                            
000000     MOVE ‚v‚j|•s³ƒXƒe[ƒ^ƒX TO ‚v‚r‚s‚j•s³ƒXƒe[ƒ^ƒX                                       
000000     MOVE ‚t‚m‚j‚Pƒoƒbƒ`‹Æ–±“ú•t TO ‚v‚r‚s‚j“Ë‚«‡‚í‚¹ˆ—“ú                                     
000000     MOVE ‚j‚y‚l‚sŽæ‚è‚Ü‚Æ‚ß“ú TO ‚v‚r‚s‚jŽæ‚è‚Ü‚Æ‚ß“ú                                        
000000         WRITE       Žx•¥‰ñŽû“Ë‡Œ‹‰Êˆê——‚v‚j‚q .                                      
000000     IF NOT(FL-STS1 NOT = "00" AND "02") GO TO CX00175.                    
000000           DISPLAY "HBHSS020-43 SQWSIKSK WRITE ERROR " ,                  
000000           FL-STS1 "-" FL-STS2                                            
000000           STOP RUN .                                                   
000000 CX00175.                                                                 
           DISPLAY "CX00175" UPON CONSOLE
000000     IF NOT(®—Š®—¹ƒtƒ‰ƒO NOT = 1) GO TO CX00176.                                
000000     PERFORM P210-RTN THRU CX00011 .                                      
000000 CX00176.                                                                 
           DISPLAY "CX00176" UPON CONSOLE
000000     GO TO CX00177.                                                       
000000 CX00173. IF NOT(‚j‚y‚l‚sƒ`ƒPƒbƒg‹æ•ª = 2) GO TO CX00178.                            
           DISPLAY "CX00173" UPON CONSOLE
000000     MOVE ‚j‚y‚l‚sƒoƒbƒ`‚m‚n TO ‚v‚s‚n‚jƒoƒbƒ`‚m‚n                                          
000000     MOVE ‚j‚y‚l‚s“ü—Í˜A”Ô† TO ‚v‚s‚n‚j“ü—Í˜A”Ô†                                          
000000     MOVE ‚v‚j|‚j‚y‚l‚sŽ¯•ÊƒR[ƒhã TO ‚v‚s‚n‚jŽ¯•ÊƒR[ƒhã                                     
000000     MOVE ‚v‚j|‚j‚y‚l‚sŽ¯•ÊƒR[ƒh’† TO ‚v‚s‚n‚jŽ¯•ÊƒR[ƒh’†                                     
000000     MOVE ‚v‚j|‚j‚y‚l‚sŽ¯•ÊƒR[ƒh‰º TO ‚v‚s‚n‚jŽ¯•ÊƒR[ƒh‰º .                                   
000000     IF NOT(®—Š®—¹ƒtƒ‰ƒO = 0 OR 9) GO TO CX00179.                               
000000     COMPUTE ‚v‚j|ŽæÁ•s³–‡” = ‚v‚j|ŽæÁ•s³–‡” + 1 .                                  
000000 CX00179.                                                                 
           DISPLAY "CX00179" UPON CONSOLE
000000     MOVE ZERO TO ‚v‚s‚n‚j“ÇžáŠQ“ü—Í˜A”Ô                                            
000000     MOVE ‚v‚j|•s³ƒXƒe[ƒ^ƒX TO ‚v‚s‚n‚j•s³ƒXƒe[ƒ^ƒX                                       
000000     MOVE ‚t‚m‚j‚Pƒoƒbƒ`‹Æ–±“ú•t TO ‚v‚s‚n‚j“Ë‚«‡‚í‚¹ˆ—“ú                                     
000000     MOVE ‚j‚y‚l‚sŽæ‚è‚Ü‚Æ‚ß“ú TO ‚v‚s‚n‚jŽæ‚è‚Ü‚Æ‚ß“ú                                        
000000         WRITE       ŽæÁ‰ñŽû“Ë‡Œ‹‰Êˆê——‚v‚j‚q .                                      
000000     IF NOT(FL-STS1 NOT = "00" AND "02") GO TO CX00180.                    
000000           DISPLAY "HBHSS020-44 SQWTOKSK WRITE ERROR " ,                  
000000           FL-STS1 "-" FL-STS2                                            
000000           STOP RUN .                                                   
000000 CX00180.                                                                 
           DISPLAY "CX00180" UPON CONSOLE
000000 CX00178.                                                                 
           DISPLAY "CX00178" UPON CONSOLE
000000 CX00177.                                                                 
           DISPLAY "CX00177" UPON CONSOLE
000000 CX00006. EXIT.                                                           
000000 P300-RTN .                                                               
000000     IF NOT(‚x‚t‚j‚nŽž”F’è“ú = ZERO) GO TO CX00181.                               
      *20141117C³ŠJŽn
000000*         @ZDTDTCMP(TICKETNO = ‚x‚t‚j‚nŽx•¥Ž¯•ÊƒR[ƒh’† ,                              
000000*                   BASEDATE = ‚t‚m‚j‚Pƒoƒbƒ`‹Æ–±“ú•t  ,                              
000000*                   YYYYMMDD = ‚v‚j|Žx•¥“ú); .                                  
      *** ‰Šú‰» ***                                                  
           INITIALIZE     DTCP-PARAM.                                           
      *** ƒpƒ‰ƒ[ƒ^@ƒ`ƒFƒbƒN ***                                    
           IF  ‚x‚t‚j‚nŽx•¥Ž¯•ÊƒR[ƒh’†  =  ZERO    THEN
                   DISPLAY "Ž¯•ÊƒR[ƒh‚ðŽw’è‚µ‚Ä‰º‚³‚¢"                           
                   STOP RUN.                                                         
           IF  ‚t‚m‚j‚Pƒoƒbƒ`‹Æ–±“ú•t  =  LOW-VALUE    THEN                                           
                   DISPLAY "Šî€“ú‚ðŽw’è‚µ‚Ä‰º‚³‚¢"                             
                   STOP RUN.                                                         
           IF  ‚v‚j|Žx•¥“ú  =  LOW-VALUE    THEN                                           
                   DISPLAY "¼—ï”NŒŽ“ú‚ÌŽó“ü€–Ú‚ðŽw’è‚µ‚Ä‰º‚³‚¢"               
                   STOP RUN.                                                         
      *** “ü—Íƒpƒ‰ƒ[ƒ^ˆÚ‘— ***
            MOVE ‚x‚t‚j‚nŽx•¥Ž¯•ÊƒR[ƒh’† TO  DTCP-TICKETNO
            MOVE ‚t‚m‚j‚Pƒoƒbƒ`‹Æ–±“ú•t TO  DTCP-BASEDATE
      *** “ú•tŽZoƒAƒNƒZƒXƒ‚ƒWƒ…[ƒ‹ŒÄ‚Ño‚µ ***                        
            CALL "HSAAL040" USING DTCP-PARAM
      *** o—Íƒpƒ‰ƒ[ƒ^ˆÚ‘— ***
            MOVE DTCP-YYYYMMDD TO ‚v‚j|Žx•¥“ú
      *20141117C³I—¹
000000     GO TO CX00182.                                                       
000000 CX00181.                                                                 
           DISPLAY "CX00181" UPON CONSOLE
000000     MOVE ‚x‚t‚j‚nŽž”F’è“ú TO ‚v‚j|Žx•¥“ú .                                           
000000 CX00182.                                                                 
           DISPLAY "CX00182" UPON CONSOLE
000000       INITIALIZE  ‚v‚j|“–‚¹‚ñƒe[ƒuƒ‹.                                            
000000     IF NOT( (‚x‚t‚j‚nƒQ[ƒ€Ží•Ê = 1) OR 
             ( (‚x‚t‚j‚nƒQ[ƒ€Ží•Ê = 2) AND 
             (‚x‚t‚j‚n\žƒ^ƒCƒv (1) = 2) )) GO TO CX00183.                                            
000000     MOVE 1 TO Œp‘±‚b‚m‚s                                                      
000000     MOVE ZERO TO “–‚¹‚ñ‚b‚m‚s                                                  
000000     MOVE ‚x‚t‚j‚nƒQ[ƒ€ƒ^ƒCƒv TO ‚v‚j|ƒQ[ƒ€ƒ^ƒCƒv                                         
000000     MOVE ‚x‚t‚j‚nƒuƒƒbƒNƒR[ƒh TO ‚v‚j|ƒuƒƒbƒNƒR[ƒh .                                     
000000 CX00184. IF NOT(Œp‘±‚b‚m‚s <= 
                  ‚x‚t‚j‚nŽÀŽ¿Œp‘±‰ñ†”) GO TO CX00185.                      
           DISPLAY "CX00184" UPON CONSOLE
000000     COMPUTE ‚v‚j|‰ñ† = ‚x‚t‚j‚nŠJŽn‰ñ† + Œp‘±‚b‚m‚s - 1                                 
000000     PERFORM GAME-SERCH-RTN THRU CX00013 .                                
000000     IF NOT(‚f‚`‚l‚dŽÀŽ¿Žx•¥I—¹“ú >= ‚v‚j|Žx•¥“ú) GO TO CX00186.                          
000000     IF NOT(‚x‚t‚j‚nŽÀŽ¿Œp‘±‰ñ†” > 1) GO TO CX00187.                                
000000     MOVE Œp‘±‚b‚m‚s TO I                                                      
000000     PERFORM SHKIN-RTN THRU CX00014 .                                     
000000     IF NOT(‚v‚j|“™‹‰ƒrƒbƒg‚q NOT = ‚m‚t‚k‚k) GO TO CX00188.                           
000000     COMPUTE “–‚¹‚ñ‚b‚m‚s = “–‚¹‚ñ‚b‚m‚s + 1                                          
000000     MOVE ‚v‚j|‰ñ† TO ‚v‚j|“–‚¹‚ñ‰ñ† (“–‚¹‚ñ‚b‚m‚s)                                      
000000     MOVE ‚v‚j|“™‹‰ƒrƒbƒg‚q TO ‚v‚j|“–‚¹‚ñ“™‹‰ (“–‚¹‚ñ‚b‚m‚s)                                  
000000     MOVE ‚v‚j|‹àŠz TO ‚v‚j|Žx•¥‹à (“–‚¹‚ñ‚b‚m‚s) .                                      
000000     IF NOT(‚v‚j|‰ñ† <= ‚f‚l‚i‚xÅI®—Š®—¹‰ñ†) GO TO CX00189.                          
000000     MOVE 1 TO ‚v‚j|®—Š®—¹ƒtƒ‰ƒO (“–‚¹‚ñ‚b‚m‚s)                                        
000000     MOVE 1 TO ®—Š®—¹ƒtƒ‰ƒO .                                                  
000000     GO TO CX00190.                                                       
000000 CX00189.                                                                 
           DISPLAY "CX00189" UPON CONSOLE
000000     MOVE ZERO TO ‚v‚j|®—Š®—¹ƒtƒ‰ƒO (“–‚¹‚ñ‚b‚m‚s) .                                   
000000 CX00190.                                                                 
           DISPLAY "CX00190" UPON CONSOLE
000000 CX00188.                                                                 
           DISPLAY "CX00188" UPON CONSOLE
000000     GO TO CX00191.                                                       
000000 CX00187.                                                                 
           DISPLAY "CX00187" UPON CONSOLE
000000     MOVE 1 TO I .                                                        
000000 CX00192. IF NOT(I <= ‚x‚t‚j‚nƒpƒlƒ‹”) GO TO CX00193.                             
           DISPLAY "CX00192" UPON CONSOLE
000000     PERFORM SHKIN-RTN THRU CX00014 .                                     
000000     IF NOT(‚v‚j|“™‹‰ƒrƒbƒg‚q NOT = ‚m‚t‚k‚k) GO TO CX00194.                           
000000     COMPUTE “–‚¹‚ñ‚b‚m‚s = “–‚¹‚ñ‚b‚m‚s + 1                                          
000000     MOVE ‚v‚j|‰ñ† TO ‚v‚j|“–‚¹‚ñ‰ñ† (“–‚¹‚ñ‚b‚m‚s)                                      
000000     MOVE ‚v‚j|“™‹‰ƒrƒbƒg‚q TO ‚v‚j|“–‚¹‚ñ“™‹‰ (“–‚¹‚ñ‚b‚m‚s)                                  
000000     MOVE ‚v‚j|‹àŠz TO ‚v‚j|Žx•¥‹à (“–‚¹‚ñ‚b‚m‚s) .                                      
000000     IF NOT(‚v‚j|‰ñ† <= ‚f‚l‚i‚xÅI®—Š®—¹‰ñ†) GO TO CX00195.                          
000000     MOVE 1 TO ‚v‚j|®—Š®—¹ƒtƒ‰ƒO (“–‚¹‚ñ‚b‚m‚s)                                        
000000     MOVE 1 TO ®—Š®—¹ƒtƒ‰ƒO .                                                  
000000     GO TO CX00196.                                                       
000000 CX00195.                                                                 
           DISPLAY "CX00195" UPON CONSOLE
000000     MOVE ZERO TO ‚v‚j|®—Š®—¹ƒtƒ‰ƒO (“–‚¹‚ñ‚b‚m‚s) .                                   
000000 CX00196.                                                                 
           DISPLAY "CX00196" UPON CONSOLE
000000 CX00194.                                                                 
           DISPLAY "CX00194" UPON CONSOLE
000000     COMPUTE I = I + 1 .                                                  
000000     GO TO CX00192.                                                       
000000 CX00193.                                                                 
           DISPLAY "CX00193" UPON CONSOLE
000000 CX00191.                                                                 
           DISPLAY "CX00191" UPON CONSOLE
000000 CX00186.                                                                 
           DISPLAY "CX00186" UPON CONSOLE
000000     COMPUTE Œp‘±‚b‚m‚s = Œp‘±‚b‚m‚s + 1 .                                          
000000     GO TO CX00184.                                                       
000000 CX00185.                                                                 
           DISPLAY "CX00185" UPON CONSOLE
000000     IF NOT( (“–‚¹‚ñ‚b‚m‚s > 0) AND 
               (‚v‚j|®—Š®—¹ƒtƒ‰ƒO (“–‚¹‚ñ‚b‚m‚s) = 1) ) GO TO CX00197.                                                      
000000     MOVE 9 TO ®—Š®—¹ƒtƒ‰ƒO                                                    
000000     GO TO CX00007.                                                       
000000 CX00198. GO TO CX00199.                                                  
           DISPLAY "CX00198" UPON CONSOLE
000000 CX00197.                                                                 
           DISPLAY "CX00197" UPON CONSOLE
000000           INITIALIZE ³í‰ñŽûƒ`ƒPƒbƒg‚q                                           
000000     MOVE ‚x‚t‚j‚nƒQ[ƒ€ƒ^ƒCƒv TO ‚v‚r‚j‚rƒQ[ƒ€ƒ^ƒCƒv                                        
000000     MOVE ‚x‚t‚j‚nƒuƒƒbƒNƒR[ƒh TO ‚v‚r‚j‚rƒuƒƒbƒNƒR[ƒh                                      
000000     MOVE ‚x‚t‚j‚nŽæÁŽx•¥”„êƒR[ƒh TO ‚v‚r‚j‚rŽx•¥”„ê                                       
000000     MOVE ‚x‚t‚j‚n”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh TO ‚v‚r‚j‚r”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh                                  
000000     MOVE ‚x‚t‚j‚nŒû” TO ‚v‚r‚j‚rŽx•¥Œû”                                              
000000           INITIALIZE ‰ñŽûŠm”FÏƒ`ƒPƒbƒg‚v‚j‚q                                        
000000     MOVE 1 TO ‚j‚m‚l‚sƒ`ƒPƒbƒg‹æ•ª                                                 
000000     MOVE ‚j‚y‚l‚sŽæ‚è‚Ü‚Æ‚ß“ú TO ‚j‚m‚l‚sŽæ‚è‚Ü‚Æ‚ß“ú                                        
000000     MOVE ‚j‚y‚l‚sƒoƒbƒ`‚m‚n TO ‚j‚m‚l‚sƒoƒbƒ`‚m‚n                                          
000000     MOVE ‚j‚y‚l‚s“ü—Í˜A”Ô† TO ‚j‚m‚l‚s“ü—Í˜A”Ô†                                          
000000     MOVE ‚j‚y‚l‚sŽ¯•ÊƒR[ƒh TO ‚j‚m‚l‚sŽ¯•ÊƒR[ƒh                                          
000000     MOVE ‚x‚t‚j‚nƒuƒƒbƒNƒR[ƒh TO ‚j‚m‚l‚sƒuƒƒbƒNƒR[ƒh                                      
000000     MOVE ‚x‚t‚j‚nŽæÁŽx•¥”„êƒR[ƒh TO ‚j‚m‚l‚sŽx•¥”„êƒR[ƒh                                    
000000     MOVE ‚x‚t‚j‚nŒû” TO ‚j‚m‚l‚sŒû” .                                              
000000     IF NOT( (‚x‚t‚j‚nŽÀŽ¿Œp‘±‰ñ†” > 1) AND 
                (“–‚¹‚ñ‚b‚m‚s > 1)) GO TO CX00200.            
000000             INITIALIZE Œp‘±\ž•¡”“–‚¹‚ñ‚v‚j‚q                                      
000000     COMPUTE ‚v‚j|Œp‘±–‡” = ‚v‚j|Œp‘±–‡” + 1                                        
000000     MOVE ‚t‚m‚j‚Pƒoƒbƒ`‹Æ–±“ú•t TO ‚v‚j‚y‚e“Ë‚«‡‚í‚¹ˆ—“ú                                     
000000     MOVE ‚j‚y‚l‚sƒoƒbƒ`‚m‚n TO ‚v‚j‚y‚eƒoƒbƒ`‚m‚n                                          
000000     MOVE ‚j‚y‚l‚s“ü—Í˜A”Ô† TO ‚v‚j‚y‚e“ü—Í˜A”Ô†                                          
000000     MOVE ‚v‚j|‚j‚y‚l‚sŽ¯•ÊƒR[ƒhã TO ‚v‚j‚y‚eŽ¯•ÊƒR[ƒhã                                     
000000     MOVE ‚v‚j|‚j‚y‚l‚sŽ¯•ÊƒR[ƒh’† TO ‚v‚j‚y‚eŽ¯•ÊƒR[ƒh’†                                     
000000     MOVE ‚v‚j|‚j‚y‚l‚sŽ¯•ÊƒR[ƒh‰º TO ‚v‚j‚y‚eŽ¯•ÊƒR[ƒh‰º                                     
000000     MOVE ‚j‚y‚l‚sŽæ‚è‚Ü‚Æ‚ß“ú TO ‚v‚j‚y‚eŽæ‚è‚Ü‚Æ‚ß“ú                                        
000000     MOVE ‚x‚t‚j‚nƒQ[ƒ€ƒ^ƒCƒv TO ‚f‚l‚s‚xƒQ[ƒ€ƒ^ƒCƒv                                        
000000             READ   ƒQ[ƒ€ƒ^ƒCƒv‚e  INVALID  CONTINUE.                           
000000     IF NOT(FL-STS1 NOT = "00" AND "02") GO TO CX00201.                    
000000                DISPLAY "HBHSS020-45 VIGMTYPE READ ERROR " ,              
000000                         FL-STS1 "-" FL-STS2                              
000000                STOP RUN.                                               
000000 CX00201.                                                                 
           DISPLAY "CX00201" UPON CONSOLE
000000     MOVE ‚f‚l‚s‚x‚fƒ^ƒCƒv–¼Ì‚m TO ‚v‚j‚y‚eƒQ[ƒ€ƒ^ƒCƒv–¼                                      
000000     MOVE ‚a‚k‚j‚QƒuƒƒbƒN–¼Ì TO ‚v‚j‚y‚eƒuƒƒbƒN–¼Ì                                        
000000     MOVE 0 TO I                                                          
000000     MOVE 1 TO J .                                                        
000000 CX00202. IF NOT(J <= “–‚¹‚ñ‚b‚m‚s) GO TO CX00203.                               
           DISPLAY "CX00202" UPON CONSOLE
000000     MOVE ‚v‚j|“–‚¹‚ñ‰ñ† (J) TO ‚v‚j‚y‚e‰ñ† (J)                                      
000000     MOVE ‚v‚j|Žx•¥‹à (J) TO ‚v‚j‚y‚e“–‚¹‚ñ‹à (J) .                                    
000000     IF NOT(‚v‚j|®—Š®—¹ƒtƒ‰ƒO (J) = 1) GO TO CX00204.                             
000000     MOVE 1 TO ‚v‚j‚y‚e®—Š®—¹ƒtƒ‰ƒO (J) .                                          
000000     GO TO CX00205.                                                       
000000 CX00204.                                                                 
           DISPLAY "CX00204" UPON CONSOLE
000000     COMPUTE I = I + 1                                                    
000000     MOVE ‚v‚j|“–‚¹‚ñ‰ñ† (J) TO ‚v‚r‚j‚rŽx•¥‰ñ† (I)                                    
000000     MOVE ‚v‚j|“–‚¹‚ñ“™‹‰ (J) TO ‚v‚r‚j‚rŽx•¥“™‹‰ (I)                                    
000000     COMPUTE ‚v‚r‚j‚rŽx•¥‹àŠz = ‚v‚r‚j‚rŽx•¥‹àŠz + 
                 ‚v‚j|Žx•¥‹à (J)                             
000000     MOVE ‚v‚j|“–‚¹‚ñ‰ñ† (J) TO ‚j‚m‚l‚s‰ñ† (I)                                      
000000     PERFORM P310-RTN THRU CX00012 .                                      
000000 CX00205.                                                                 
           DISPLAY "CX00205" UPON CONSOLE
000000     COMPUTE J = J + 1 .                                                  
000000     GO TO CX00202.                                                       
000000 CX00203.                                                                 
           DISPLAY "CX00203" UPON CONSOLE
000000             WRITE         Œp‘±\ž•¡”“–‚¹‚ñ‚v‚j‚q .                                 
000000     IF NOT(FL-STS1 NOT = "00" AND "02") GO TO CX00206.                    
000000                  DISPLAY "HBHSS020-46 SQWKZFKT WRITE ERROR " ,           
000000                  FL-STS1 "-" FL-STS2                                     
000000                  STOP RUN .                                            
000000 CX00206.                                                                 
           DISPLAY "CX00206" UPON CONSOLE
000000     MOVE 1 TO SW-WKZF-OUT                                                
000000     COMPUTE ‚v‚j|‘Œp‘±“–‚¹‚ñ‹à = ‚v‚j|‘Œp‘±“–‚¹‚ñ‹à + 
                   ‚v‚r‚j‚rŽx•¥‹àŠz .                         
000000     GO TO CX00207.                                                       
000000 CX00200.                                                                 
           DISPLAY "CX00200" UPON CONSOLE
000000     MOVE 1 TO I                                                          
000000     MOVE 1 TO J .                                                        
000000 CX00208. IF NOT(I <= “–‚¹‚ñ‚b‚m‚s) GO TO CX00209.                               
           DISPLAY "CX00208" UPON CONSOLE
000000     MOVE ‚v‚j|“–‚¹‚ñ‰ñ† (J) TO ‚v‚r‚j‚rŽx•¥‰ñ† (I)                                    
000000     MOVE ‚v‚j|“–‚¹‚ñ“™‹‰ (J) TO ‚v‚r‚j‚rŽx•¥“™‹‰ (I)                                    
000000     COMPUTE ‚v‚r‚j‚rŽx•¥‹àŠz = 
                    ‚v‚r‚j‚rŽx•¥‹àŠz + ‚v‚j|Žx•¥‹à (J)                             
000000     MOVE ‚v‚j|“–‚¹‚ñ‰ñ† (J) TO ‚j‚m‚l‚s‰ñ† (I)                                      
000000     PERFORM P310-RTN THRU CX00012                                        
000000     COMPUTE I = I + 1                                                    
000000     COMPUTE J = J + 1 .                                                  
000000     GO TO CX00208.                                                       
000000 CX00209.                                                                 
           DISPLAY "CX00209" UPON CONSOLE
000000 CX00207.                                                                 
           DISPLAY "CX00207" UPON CONSOLE
000000 CX00199.                                                                 
           DISPLAY "CX00199" UPON CONSOLE
000000     COMPUTE ‚v‚j|‘“–‚¹‚ñ‹à = ‚v‚j|‘“–‚¹‚ñ‹à + 
                   ‚v‚r‚j‚rŽx•¥‹àŠz .                             
000000     GO TO CX00210.                                                       
000000 CX00183.                                                                 
           DISPLAY "CX00183" UPON CONSOLE
000000     MOVE ‚x‚t‚j‚nƒQ[ƒ€ƒ^ƒCƒv TO ‚v‚j|ƒQ[ƒ€ƒ^ƒCƒv                                         
000000     MOVE ‚x‚t‚j‚nƒuƒƒbƒNƒR[ƒh TO ‚v‚j|ƒuƒƒbƒNƒR[ƒh                                       
000000     MOVE ‚x‚t‚j‚nŠJŽn‰ñ† TO ‚v‚j|‰ñ†                                               
000000     PERFORM GAME-SERCH-RTN THRU CX00013 .                                
000000     IF NOT(‚x‚t‚j‚nŠJŽn‰ñ† <= 
                 ‚f‚l‚i‚xÅI®—Š®—¹‰ñ†) GO TO CX00211.                       
000000     MOVE 9 TO ®—Š®—¹ƒtƒ‰ƒO                                                    
000000     GO TO CX00007.                                                       
000000 CX00211.                                                                 
           DISPLAY "CX00211" UPON CONSOLE
000000         INITIALIZE ³í‰ñŽûƒ`ƒPƒbƒg‚q                                             
000000     MOVE ‚x‚t‚j‚nƒQ[ƒ€ƒ^ƒCƒv TO ‚v‚r‚j‚rƒQ[ƒ€ƒ^ƒCƒv                                        
000000     MOVE ‚x‚t‚j‚nƒuƒƒbƒNƒR[ƒh TO ‚v‚r‚j‚rƒuƒƒbƒNƒR[ƒh                                      
000000     MOVE ‚x‚t‚j‚nŽæÁŽx•¥”„êƒR[ƒh TO ‚v‚r‚j‚rŽx•¥”„ê                                       
000000     MOVE 1 TO ‚v‚r‚j‚rƒƒgƒRƒ“ƒrƒtƒ‰ƒO                                               
000000     MOVE ‚x‚t‚j‚nŠJŽn‰ñ† TO ‚v‚r‚j‚rƒRƒ“ƒrŽx•¥‰ñ†                                         
000000     MOVE ‚x‚t‚j‚nŠJŽn‰ñ† TO ‚v‚r‚j‚rŽx•¥‰ñ† (1)                                        
000000     MOVE ‚x‚t‚j‚nŽx•¥‹àŠz TO ‚v‚r‚j‚rƒRƒ“ƒrŽx•¥‹àŠz                                         
000000     MOVE ‚x‚t‚j‚nƒRƒ“ƒr“–‚¹‚ñŒû” (1) TO ‚v‚r‚j‚rƒRƒ“ƒrŒû”‚P                                  
000000     MOVE ‚x‚t‚j‚nƒRƒ“ƒr“–‚¹‚ñŒû” (2) TO ‚v‚r‚j‚rƒRƒ“ƒrŒû”‚Q                                  
000000     MOVE ‚x‚t‚j‚nƒRƒ“ƒr“–‚¹‚ñŒû” (3) TO ‚v‚r‚j‚rƒRƒ“ƒrŒû”‚R                                  
000000     MOVE ‚x‚t‚j‚nƒRƒ“ƒr“–‚¹‚ñŒû” (4) TO ‚v‚r‚j‚rƒRƒ“ƒrŒû”‚S                                  
000000     MOVE ‚x‚t‚j‚nƒRƒ“ƒr“–‚¹‚ñŒû” (5) TO ‚v‚r‚j‚rƒRƒ“ƒrŒû”‚T                                  
000000     MOVE ‚x‚t‚j‚nƒRƒ“ƒr“–‚¹‚ñŒû” (6) TO ‚v‚r‚j‚rƒRƒ“ƒrŒû”‚U                                  
000000     MOVE ‚x‚t‚j‚nƒRƒ“ƒr“–‚¹‚ñŒû” (7) TO ‚v‚r‚j‚rƒRƒ“ƒrŒû”‚V                                  
000000     MOVE ‚x‚t‚j‚nƒRƒ“ƒr“–‚¹‚ñŒû” (8) TO ‚v‚r‚j‚rƒRƒ“ƒrŒû”‚W                                  
000000     MOVE ‚x‚t‚j‚nƒRƒ“ƒr“–‚¹‚ñŒû” (9) TO ‚v‚r‚j‚rƒRƒ“ƒrŒû”‚X                                  
000000     MOVE ‚x‚t‚j‚nƒRƒ“ƒr“–‚¹‚ñŒû” (10) TO ‚v‚r‚j‚rƒRƒ“ƒrŒû”‚P‚O                                
000000     MOVE ‚x‚t‚j‚nƒRƒ“ƒr“–‚¹‚ñŒû” (11) TO ‚v‚r‚j‚rƒRƒ“ƒrŒû”‚P‚P                                
000000     MOVE ‚x‚t‚j‚n”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh TO ‚v‚r‚j‚r”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh                                  
000000         INITIALIZE ‰ñŽûŠm”FÏƒ`ƒPƒbƒg‚v‚j‚q                                          
000000     MOVE 1 TO ‚j‚m‚l‚sƒ`ƒPƒbƒg‹æ•ª                                                 
000000     MOVE ‚j‚y‚l‚sŽæ‚è‚Ü‚Æ‚ß“ú TO ‚j‚m‚l‚sŽæ‚è‚Ü‚Æ‚ß“ú                                        
000000     MOVE ‚j‚y‚l‚sƒoƒbƒ`‚m‚n TO ‚j‚m‚l‚sƒoƒbƒ`‚m‚n                                          
000000     MOVE ‚j‚y‚l‚s“ü—Í˜A”Ô† TO ‚j‚m‚l‚s“ü—Í˜A”Ô†                                          
000000     MOVE ‚j‚y‚l‚sŽ¯•ÊƒR[ƒh TO ‚j‚m‚l‚sŽ¯•ÊƒR[ƒh                                          
000000     MOVE ‚x‚t‚j‚nƒuƒƒbƒNƒR[ƒh TO ‚j‚m‚l‚sƒuƒƒbƒNƒR[ƒh                                      
000000     MOVE ‚x‚t‚j‚nŽæÁŽx•¥”„êƒR[ƒh TO ‚j‚m‚l‚sŽx•¥”„êƒR[ƒh                                    
000000     MOVE ‚x‚t‚j‚nŒû” TO ‚j‚m‚l‚sŒû”                                                
000000     MOVE ‚x‚t‚j‚nŠJŽn‰ñ† TO ‚j‚m‚l‚s‰ñ† (1)                                          
000000     MOVE 1 TO I                                                          
000000     PERFORM SHKIN-RTN THRU CX00014                                       
000000     MOVE ‚v‚j|“™‹‰ƒrƒbƒg‚q TO ‚v‚j|“–‚¹‚ñ“™‹‰ (1)                                       
000000     MOVE 1 TO J                                                          
000000     PERFORM P310-RTN THRU CX00012                                        
000000     COMPUTE ‚v‚j|‘“–‚¹‚ñ‹à = ‚v‚j|‘“–‚¹‚ñ‹à + 
                   ‚v‚r‚j‚rƒRƒ“ƒrŽx•¥‹àŠz .                          
000000 CX00210.                                                                 
           DISPLAY "CX00210" UPON CONSOLE
000000     COMPUTE ‚v‚j|Žx•¥³í–‡” = ‚v‚j|Žx•¥³í–‡” + 1                                    
000000       WRITE         ³í‰ñŽûƒ`ƒPƒbƒg‚q .                                          
000000     IF NOT(FL-STS1 NOT = "00" AND "02") GO TO CX00212.                    
000000          DISPLAY "HBHSS020-47 SQWSZKST WRITE ERROR " ,                   
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00212.                                                                 
           DISPLAY "CX00212" UPON CONSOLE
000000       WRITE         ‰ñŽûŠm”FÏƒ`ƒPƒbƒg‚v‚j‚q .                                       
000000     IF NOT(FL-STS1 NOT = "00" AND "02") GO TO CX00213.                    
000000          DISPLAY "HBHSS020-48 SQWKSKKN WRITE ERROR " ,                   
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00213.                                                                 
           DISPLAY "CX00213" UPON CONSOLE
000000     MOVE ‚t‚m‚j‚Pƒoƒbƒ`‹Æ–±“ú•t TO ‚x‚t‚j‚n‰ñŽû“ú                                          
000000     MOVE —LŒø•\‚q TO ‰ñŽûÏƒf[ƒ^‚v‚j‚q                                               
000000       WRITE         ‰ñŽûÏƒf[ƒ^‚v‚j‚q .                                          
000000     IF NOT(FL-STS1 NOT = "00" AND "02") GO TO CX00214.                    
000000          DISPLAY "HBHSS020-49 SQWKSZDT WRITE ERROR " ,                   
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00214.                                                                 
           DISPLAY "CX00214" UPON CONSOLE
000000 CX00007. EXIT.                                                           
000000 P400-RTN .                                                               
000000     MOVE ‚x‚t‚j‚nƒQ[ƒ€ƒ^ƒCƒv TO ‚v‚j|ƒQ[ƒ€ƒ^ƒCƒv                                         
000000     MOVE ‚x‚t‚j‚nƒuƒƒbƒNƒR[ƒh TO ‚v‚j|ƒuƒƒbƒNƒR[ƒh                                       
000000     COMPUTE ‚v‚j|‰ñ† = ‚x‚t‚j‚nŠJŽn‰ñ† + 
                   ‚x‚t‚j‚nŽÀŽ¿Œp‘±‰ñ†” - 1                           
000000     PERFORM GAME-SERCH-RTN THRU CX00013 .                                
000000 CX00215. IF NOT( (‚v‚j|‰ñ† >= ‚x‚t‚j‚nŠJŽn‰ñ†) AND 
                (®—Š®—¹ƒtƒ‰ƒO = 0)) GO TO CX00216.                                                      
           DISPLAY "CX00215" UPON CONSOLE
000000     IF NOT(‚v‚j|‰ñ† <= ‚f‚l‚i‚xÅI®—Š®—¹‰ñ†) GO TO CX00217.                          
000000     MOVE 1 TO ®—Š®—¹ƒtƒ‰ƒO .                                                  
000000     GO TO CX00218.                                                       
000000 CX00217.                                                                 
           DISPLAY "CX00217" UPON CONSOLE
000000     COMPUTE ‚v‚j|‰ñ† = ‚v‚j|‰ñ† - 1 .                                          
000000 CX00218.                                                                 
           DISPLAY "CX00218" UPON CONSOLE
000000     GO TO CX00215.                                                       
000000 CX00216.                                                                 
           DISPLAY "CX00216" UPON CONSOLE
000000     IF NOT( (®—Š®—¹ƒtƒ‰ƒO > 0) AND (‚v‚j|‰ñ† = 
      *20141117C³ŠJŽn
            ‚x‚t‚j‚nŠJŽn‰ñ† + ‚x‚t‚j‚nŽÀŽ¿Œp‘±‰ñ†” - 1)) GO TO CX00219.                                                    
      *20141117C³I—¹
000000     MOVE 9 TO ®—Š®—¹ƒtƒ‰ƒO .                                                  
000000     GO TO CX00220.                                                       
000000 CX00219.                                                                 
           DISPLAY "CX00219" UPON CONSOLE
000000     COMPUTE ‚v‚j|ŽæÁ³í–‡” = ‚v‚j|ŽæÁ³í–‡” + 1                                    
000000     COMPUTE ‚v‚j|‘ŽæÁ‹à = ‚v‚j|‘ŽæÁ‹à + ‚x‚t‚j‚n‹àŠz                                   
000000     MOVE ‚t‚m‚j‚Pƒoƒbƒ`‹Æ–±“ú•t TO ‚x‚t‚j‚n‰ñŽû“ú                                          
000000     MOVE —LŒø•\‚q TO ‰ñŽûÏƒf[ƒ^‚v‚j‚q                                               
000000         WRITE         ‰ñŽûÏƒf[ƒ^‚v‚j‚q .                                        
000000     IF NOT(FL-STS1 NOT = "00" AND "02") GO TO CX00221.                    
000000            DISPLAY "HBHSS020-50 SQWKSZDT WRITE ERROR " ,                 
000000            FL-STS1 "-" FL-STS2                                           
000000            STOP RUN .                                                  
000000 CX00221.                                                                 
           DISPLAY "CX00221" UPON CONSOLE
000000 CX00220.                                                                 
           DISPLAY "CX00220" UPON CONSOLE
000000 CX00008. EXIT.                                                           
000000 P500-RTN .                                                               
000000     IF NOT(‚j‚y‚l‚sƒ`ƒPƒbƒg‹æ•ª = 1) GO TO CX00222.                                 
000000     MOVE ‚j‚y‚l‚sƒoƒbƒ`‚m‚n TO ‚v‚r‚s‚jƒoƒbƒ`‚m‚n                                          
000000     MOVE ‚j‚y‚l‚s“ü—Í˜A”Ô† TO ‚v‚r‚s‚j“ü—Í˜A”Ô†                                          
000000     MOVE ‚v‚j|‚j‚y‚l‚sŽ¯•ÊƒR[ƒhã TO ‚v‚r‚s‚jŽ¯•ÊƒR[ƒhã                                     
000000     MOVE ‚v‚j|‚j‚y‚l‚sŽ¯•ÊƒR[ƒh’† TO ‚v‚r‚s‚jŽ¯•ÊƒR[ƒh’†                                     
000000     MOVE ‚v‚j|‚j‚y‚l‚sŽ¯•ÊƒR[ƒh‰º TO ‚v‚r‚s‚jŽ¯•ÊƒR[ƒh‰º                                     
      *20141117C³ŠJŽn
000000*         @ZDTDTCMP(TICKETNO = ‚v‚j|‚Q‚SŽ¯•ÊƒR[ƒh’† ,                               
000000*                   BASEDATE = ‚t‚m‚j‚Pƒoƒbƒ`‹Æ–±“ú•t ,                               
000000*                   YYYYMMDD = ”­s“ú)                                        
      *** ‰Šú‰» ***                                                  
           INITIALIZE     DTCP-PARAM.                                           
      *** ƒpƒ‰ƒ[ƒ^@ƒ`ƒFƒbƒN ***                                    
           IF  ‚v‚j|‚Q‚SŽ¯•ÊƒR[ƒh’†  =  ZERO    THEN
                   DISPLAY "Ž¯•ÊƒR[ƒh‚ðŽw’è‚µ‚Ä‰º‚³‚¢"                           
                   STOP RUN.                                                         
           IF  ‚t‚m‚j‚Pƒoƒbƒ`‹Æ–±“ú•t  =  LOW-VALUE    THEN                                           
                   DISPLAY "Šî€“ú‚ðŽw’è‚µ‚Ä‰º‚³‚¢"                             
                   STOP RUN.                                                         
           IF  ”­s“ú  =  LOW-VALUE    THEN                                           
                   DISPLAY "¼—ï”NŒŽ“ú‚ÌŽó“ü€–Ú‚ðŽw’è‚µ‚Ä‰º‚³‚¢"               
                   STOP RUN.                                                         
      *** “ü—Íƒpƒ‰ƒ[ƒ^ˆÚ‘— ***
            MOVE ‚v‚j|‚Q‚SŽ¯•ÊƒR[ƒh’† TO  DTCP-TICKETNO
            MOVE ‚t‚m‚j‚Pƒoƒbƒ`‹Æ–±“ú•t TO  DTCP-BASEDATE
      *** “ú•tŽZoƒAƒNƒZƒXƒ‚ƒWƒ…[ƒ‹ŒÄ‚Ño‚µ ***                        
            CALL "HSAAL040" USING DTCP-PARAM
      *** o—Íƒpƒ‰ƒ[ƒ^ˆÚ‘— ***
            MOVE DTCP-YYYYMMDD TO ”­s“ú
      *20141117C³I—¹
000000     MOVE ”­s“úi”Nj TO ‚v‚r‚s‚j”­Œ””N                                               
000000     MOVE ”­s“úiŒŽj TO ‚v‚r‚s‚j”­Œ”ŒŽ                                               
000000     MOVE 11 TO ‚v‚r‚s‚j•s³ƒXƒe[ƒ^ƒX                                               
000000     MOVE ‚v‚j|“ÇžáŠQ“ü—Í˜A”Ô TO ‚v‚r‚s‚j“ÇžáŠQ“ü—Í’Ê”Ô                                     
000000     MOVE ‚t‚m‚j‚Pƒoƒbƒ`‹Æ–±“ú•t TO ‚v‚r‚s‚j“Ë‚«‡‚í‚¹ˆ—“ú                                     
000000     MOVE ‚j‚y‚l‚sŽæ‚è‚Ü‚Æ‚ß“ú TO ‚v‚r‚s‚jŽæ‚è‚Ü‚Æ‚ß“ú                                        
000000     COMPUTE ‚v‚j|Žx•¥•s³–‡” = ‚v‚j|Žx•¥•s³–‡” + 1                                    
000000         WRITE       Žx•¥‰ñŽû“Ë‡Œ‹‰Êˆê——‚v‚j‚q .                                      
000000     IF NOT(FL-STS1 NOT = "00" AND "02") GO TO CX00223.                    
000000           DISPLAY "HBHSS020-XX SQWSIKSK WRITE ERROR " ,                  
000000           FL-STS1 "-" FL-STS2                                            
000000           STOP RUN .                                                   
000000 CX00223.                                                                 
           DISPLAY "CX00223" UPON CONSOLE
000000     PERFORM P210-RTN THRU CX00011 .                                      
000000     GO TO CX00224.                                                       
000000 CX00222. IF NOT(‚j‚y‚l‚sƒ`ƒPƒbƒg‹æ•ª = 2) GO TO CX00225.                            
           DISPLAY "CX00222" UPON CONSOLE
000000     MOVE ‚j‚y‚l‚sƒoƒbƒ`‚m‚n TO ‚v‚s‚n‚jƒoƒbƒ`‚m‚n                                          
000000     MOVE ‚j‚y‚l‚s“ü—Í˜A”Ô† TO ‚v‚s‚n‚j“ü—Í˜A”Ô†                                          
000000     MOVE ‚v‚j|‚j‚y‚l‚sŽ¯•ÊƒR[ƒhã TO ‚v‚s‚n‚jŽ¯•ÊƒR[ƒhã                                     
000000     MOVE ‚v‚j|‚j‚y‚l‚sŽ¯•ÊƒR[ƒh’† TO ‚v‚s‚n‚jŽ¯•ÊƒR[ƒh’†                                     
000000     MOVE ‚v‚j|‚j‚y‚l‚sŽ¯•ÊƒR[ƒh‰º TO ‚v‚s‚n‚jŽ¯•ÊƒR[ƒh‰º                                     
000000     MOVE 11 TO ‚v‚s‚n‚j•s³ƒXƒe[ƒ^ƒX                                               
000000     MOVE ‚v‚j|“ÇžáŠQ“ü—Í˜A”Ô TO ‚v‚s‚n‚j“ÇžáŠQ“ü—Í˜A”Ô                                     
000000     MOVE ‚t‚m‚j‚Pƒoƒbƒ`‹Æ–±“ú•t TO ‚v‚s‚n‚j“Ë‚«‡‚í‚¹ˆ—“ú                                     
000000     MOVE ‚j‚y‚l‚sŽæ‚è‚Ü‚Æ‚ß“ú TO ‚v‚s‚n‚jŽæ‚è‚Ü‚Æ‚ß“ú                                        
000000     COMPUTE ‚v‚j|ŽæÁ•s³–‡” = ‚v‚j|ŽæÁ•s³–‡” + 1                                    
000000         WRITE       ŽæÁ‰ñŽû“Ë‡Œ‹‰Êˆê——‚v‚j‚q .                                      
000000     IF NOT(FL-STS1 NOT = "00" AND "02") GO TO CX00226.                    
000000           DISPLAY "HBHSS020-XX SQWTOKSK WRITE ERROR " ,                  
000000           FL-STS1 "-" FL-STS2                                            
000000           STOP RUN .                                                   
000000 CX00226.                                                                 
           DISPLAY "CX00226" UPON CONSOLE
000000 CX00225.                                                                 
           DISPLAY "CX00225" UPON CONSOLE
000000 CX00224.                                                                 
           DISPLAY "CX00224" UPON CONSOLE
000000 CX00009. EXIT.                                                           
000000 E100-RTN .                                                               
000000     MOVE 1 TO IX1 .                                                      
000000 CX00227. IF NOT( (IX1 <= 50) AND (‚v‚j|•s‰ñ‚f‚l‚a‚k (IX1) NOT =
                  ZERO) ) GO TO CX00228.                                                      
           DISPLAY "CX00227" UPON CONSOLE
000000     MOVE ‚v‚j|•s‰ñƒQ[ƒ€ (IX1) TO ‚v‚r‚f‚jƒQ[ƒ€ƒ^ƒCƒv                                    
000000     MOVE ‚v‚j|•s‰ñƒuƒƒbƒN (IX1) TO ‚v‚r‚f‚jƒuƒƒbƒNƒR[ƒh .                                
000000     MOVE 1 TO IX2 GO TO CX00229.                                         
000000 CX00230. ADD 1 TO IX2.                                                   
           DISPLAY "CX00230" UPON CONSOLE
000000 CX00229. IF (IX2 > 18) GO TO CX00231.                                      
           DISPLAY "CX00229" UPON CONSOLE
000000     MOVE ‚v‚j|•s³‰ñŽû‡Œv–‡” (IX1 IX2) TO 
                ‚v‚r‚f‚j•s³‰ñŽû‡Œv–‡” (IX2) .                   
000000     GO TO CX00230.                                                       
000000 CX00231.                                                                 
           DISPLAY "CX00231" UPON CONSOLE
000000          WRITE  Žx•¥‰ñŽû“Ë‡Œ‹‰Ê‡Œv‚v‚j‚q.                                           
000000     IF NOT(FL-STS1 NOT = "00" AND "02") GO TO CX00232.                    
000000             DISPLAY "HBHSS020-58 SQWSIKGK WRITE ERROR " ,                
000000             FL-STS1 "-" FL-STS2                                          
000000             STOP RUN .                                                 
000000 CX00232.                                                                 
           DISPLAY "CX00232" UPON CONSOLE
000000     COMPUTE IX1 = IX1 + 1 .                                              
000000     GO TO CX00227.                                                       
000000 CX00228.                                                                 
           DISPLAY "CX00228" UPON CONSOLE
000000 CX00010. EXIT.                                                           
000000 P210-RTN .                                                               
000000     MOVE ‚v‚j|‚Q‚SŽ¯•ÊƒR[ƒhã TO ‚v‚j|Ž¯•ÊƒR[ƒhã                                        
000000     MOVE ‚v‚j|Ž¯•Ê‚f TO ‚v‚j|‚f‚aƒQ[ƒ€ .                                            
000000     IF NOT(‚r‚v|”»’è = 1) GO TO CX00233.                                      
000000     MOVE ‚x‚t‚j‚nƒuƒƒbƒNƒR[ƒh TO ‚v‚j|‚f‚aƒuƒƒbƒN .                                      
000000     GO TO CX00234.                                                       
000000 CX00233. IF NOT(‚r‚v|”»’è = 2) GO TO CX00235.                                 
           DISPLAY "CX00233" UPON CONSOLE
000000     MOVE ‚j‚`‚h‚rƒuƒƒbƒNƒR[ƒh TO ‚v‚j|‚f‚aƒuƒƒbƒN .                                      
000000     GO TO CX00234.                                                       
000000 CX00235.                                                                 
           DISPLAY "CX00235" UPON CONSOLE
000000     MOVE ‚v‚j|Ž¯•Ê‚a‚j TO ‚v‚j|‚f‚aƒuƒƒbƒN .                                          
000000 CX00234.                                                                 
           DISPLAY "CX00234" UPON CONSOLE
000000     COMPUTE M = (‚v‚r‚s‚jˆ—”N - ‚v‚r‚s‚j”­Œ””N) * 12 + 
                   (‚v‚r‚s‚jˆ—ŒŽ - ‚v‚r‚s‚j”­Œ”ŒŽ) + 1 .                                                                
000000     IF NOT(M > 17) GO TO CX00236.                                         
000000     MOVE 17 TO M .                                                       
000000 CX00236.                                                                 
           DISPLAY "CX00236" UPON CONSOLE
000000     MOVE 1 TO IX1 .                                                      
000000 CX00237. IF NOT(IX1 <= 50) GO TO CX00238.                                 
           DISPLAY "CX00237" UPON CONSOLE
000000     IF NOT(‚v‚j|•s‰ñ‚f‚l‚a‚k (IX1) = 
              ‚v‚j|‚f‚l‚a‚k‚j) GO TO CX00239.                     
000000     COMPUTE ‚v‚j|•s³‰ñŽû‡Œv–‡” (IX1 M) = 
                   ‚v‚j|•s³‰ñŽû‡Œv–‡” (IX1 M) + 1                
000000     COMPUTE ‚v‚j|•s³‰ñŽû‡Œv–‡” (IX1 18) = 
                   ‚v‚j|•s³‰ñŽû‡Œv–‡” (IX1 18) + 1              
000000     MOVE 99 TO IX1 .                                                     
000000     GO TO CX00240.                                                       
000000 CX00239. IF NOT(‚v‚j|•s‰ñ‚f‚l‚a‚k (IX1) = ZERO) GO TO CX00241.                    
           DISPLAY "CX00239" UPON CONSOLE
000000     MOVE ‚v‚j|‚f‚l‚a‚k‚j TO ‚v‚j|•s‰ñ‚f‚l‚a‚k (IX1)                                     
000000     COMPUTE ‚v‚j|•s³‰ñŽû‡Œv–‡” (IX1 M) = 
                   ‚v‚j|•s³‰ñŽû‡Œv–‡” (IX1 M) + 1                
000000     COMPUTE ‚v‚j|•s³‰ñŽû‡Œv–‡” (IX1 18) = 
                   ‚v‚j|•s³‰ñŽû‡Œv–‡” (IX1 18) + 1              
000000     MOVE 99 TO IX1 .                                                     
000000     GO TO CX00240.                                                       
000000 CX00241.                                                                 
           DISPLAY "CX00241" UPON CONSOLE
000000     COMPUTE IX1 = IX1 + 1 .                                              
000000     IF NOT(IX1 > 50) GO TO CX00242.                                       
000000              DISPLAY "HBHSS020-57 •s³‰ñŽû‡Œvƒe[ƒuƒ‹ƒI[ƒo["                        
000000              DISPLAY "“o˜^‰Â”\ƒQ[ƒ€”‚Í‚T‚O‚Ü‚Å‚Å‚·"                                   
000000              STOP  RUN .                                               
000000 CX00242.                                                                 
           DISPLAY "CX00242" UPON CONSOLE
000000 CX00240.                                                                 
           DISPLAY "CX00240" UPON CONSOLE
000000     GO TO CX00237.                                                       
000000 CX00238.                                                                 
           DISPLAY "CX00238" UPON CONSOLE
000000 CX00011. EXIT.                                                           
000000 P310-RTN .                                                               
000000     MOVE ZERO TO ‚v‚j|“™‹‰”—ñ                                                 
000000     MOVE ‚v‚j|“–‚¹‚ñ“™‹‰ (J) TO ‚v‚j|“™‹‰ƒrƒbƒg‚q .                                     
      *20141117C³ŠJŽn
000000*     IF NOT(‚v‚j|“™‹‰‚P‚a = B"1") GO TO CX00243.                                 
           COMBINE SHIFT = ‚v‚j|“™‹‰ƒrƒbƒg‚q  AND ""8000""
           IF NOT(SHIFT > 0) GO TO CX00243. 
      *20141117C³I—¹
000000     MOVE 1 TO ‚v‚j|“™‹‰” (1) .                                               
000000 CX00243.                                                                 
           DISPLAY "CX00243" UPON CONSOLE
      *20141117C³ŠJŽn
000000*     IF NOT(‚v‚j|“™‹‰‚Q‚a = B"1") GO TO CX00244.                                 
           COMBINE SHIFT = ‚v‚j|“™‹‰ƒrƒbƒg‚q  AND ""4000""
           IF NOT(SHIFT > 0) GO TO CX00244.
      *20141117C³I—¹
000000     MOVE 1 TO ‚v‚j|“™‹‰” (2) .                                               
000000 CX00244.                                                                 
           DISPLAY "CX00244" UPON CONSOLE
      *20141117C³ŠJŽn
000000*     IF NOT(‚v‚j|“™‹‰‚R‚a = B"1") GO TO CX00245.                                 
           COMBINE SHIFT = ‚v‚j|“™‹‰ƒrƒbƒg‚q  AND ""2000""
           IF NOT(SHIFT > 0) GO TO CX00245.
      *20141117C³I—¹
000000     MOVE 1 TO ‚v‚j|“™‹‰” (3) .                                               
000000 CX00245.                                                                 
           DISPLAY "CX00245" UPON CONSOLE
      *20141117C³ŠJŽn
000000*     IF NOT(‚v‚j|“™‹‰‚S‚a = B"1") GO TO CX00246.                                 
           COMBINE SHIFT = ‚v‚j|“™‹‰ƒrƒbƒg‚q  AND ""1000""
           IF NOT(SHIFT > 0) GO TO CX00246.
      *20141117C³I—¹
000000     MOVE 1 TO ‚v‚j|“™‹‰” (4) .                                               
000000 CX00246.                                                                 
           DISPLAY "CX00246" UPON CONSOLE
      *20141117C³ŠJŽn
000000*     IF NOT(‚v‚j|“™‹‰‚T‚a = B"1") GO TO CX00247.                                 
           COMBINE SHIFT = ‚v‚j|“™‹‰ƒrƒbƒg‚q  AND ""0800""
           IF NOT(SHIFT > 0) GO TO CX00247.
      *20141117C³I—¹
000000     MOVE 1 TO ‚v‚j|“™‹‰” (5) .                                               
000000 CX00247.                                                                 
           DISPLAY "CX00247" UPON CONSOLE
      *20141117C³ŠJŽn
000000*     IF NOT(‚v‚j|“™‹‰‚U‚a = B"1") GO TO CX00248.                                 
           COMBINE SHIFT = ‚v‚j|“™‹‰ƒrƒbƒg‚q  AND ""0400""
           IF NOT(SHIFT > 0) GO TO CX00248.
      *20141117C³I—¹
000000     MOVE 1 TO ‚v‚j|“™‹‰” (6) .                                               
000000 CX00248.                                                                 
           DISPLAY "CX00248" UPON CONSOLE
      *20141117C³ŠJŽn
000000*     IF NOT(‚v‚j|“™‹‰‚V‚a = B"1") GO TO CX00249.                                 
           COMBINE SHIFT = ‚v‚j|“™‹‰ƒrƒbƒg‚q  AND ""0200""
           IF NOT(SHIFT > 0) GO TO CX00249.
      *20141117C³I—¹
000000     MOVE 1 TO ‚v‚j|“™‹‰” (7) .                                               
000000 CX00249.                                                                 
           DISPLAY "CX00249" UPON CONSOLE
      *20141117C³ŠJŽn
000000*     IF NOT(‚v‚j|“™‹‰‚W‚a = B"1") GO TO CX00250.                                 
           COMBINE SHIFT = ‚v‚j|“™‹‰ƒrƒbƒg‚q  AND ""0100""
           IF NOT(SHIFT > 0) GO TO CX00250.
      *20141117C³I—¹
000000     MOVE 1 TO ‚v‚j|“™‹‰” (8) .                                               
000000 CX00250.                                                                 
           DISPLAY "CX00250" UPON CONSOLE
      *20141117C³ŠJŽn
000000*     IF NOT(‚v‚j|“™‹‰‚X‚a = B"1") GO TO CX00251.                                 
           COMBINE SHIFT = ‚v‚j|“™‹‰ƒrƒbƒg‚q  AND ""0080""
           IF NOT(SHIFT > 0) GO TO CX00251.
      *20141117C³I—¹
000000     MOVE 1 TO ‚v‚j|“™‹‰” (9) .                                               
000000 CX00251.                                                                 
           DISPLAY "CX00251" UPON CONSOLE
      *20141117C³ŠJŽn
000000*     IF NOT(‚v‚j|“™‹‰‚P‚O‚a = B"1") GO TO CX00252.                                
           COMBINE SHIFT = ‚v‚j|“™‹‰ƒrƒbƒg‚q  AND ""0040""
           IF NOT(SHIFT > 0) GO TO CX00252.
      *20141117C³I—¹
000000     MOVE 1 TO ‚v‚j|“™‹‰” (10) .                                              
000000 CX00252.                                                                 
           DISPLAY "CX00252" UPON CONSOLE
      *20141117C³ŠJŽn
000000*     IF NOT(‚v‚j|“™‹‰‚P‚P‚a = B"1") GO TO CX00253.                                
           COMBINE SHIFT = ‚v‚j|“™‹‰ƒrƒbƒg‚q  AND ""0020""
           IF NOT(SHIFT > 0) GO TO CX00253.
      *20141117C³I—¹
000000     MOVE 1 TO ‚v‚j|“™‹‰” (11) .                                              
000000 CX00253.                                                                 
           DISPLAY "CX00253" UPON CONSOLE
      *20141117C³ŠJŽn
000000*     IF NOT(‚v‚j|“™‹‰‚P‚Q‚a = B"1") GO TO CX00254.                                
           COMBINE SHIFT = ‚v‚j|“™‹‰ƒrƒbƒg‚q  AND ""0010""
           IF NOT(SHIFT > 0) GO TO CX00254.
      *20141117C³I—¹
000000     MOVE 1 TO ‚v‚j|“™‹‰” (12) .                                              
000000 CX00254.                                                                 
           DISPLAY "CX00254" UPON CONSOLE
      *20141117C³ŠJŽn
000000*     IF NOT(‚v‚j|“™‹‰‚P‚R‚a = B"1") GO TO CX00255.                                
           COMBINE SHIFT = ‚v‚j|“™‹‰ƒrƒbƒg‚q  AND ""0008""
           IF NOT(SHIFT > 0) GO TO CX00255.
      *20141117C³I—¹
000000     MOVE 1 TO ‚v‚j|“™‹‰” (13) .                                              
000000 CX00255.                                                                 
           DISPLAY "CX00255" UPON CONSOLE
      *20141117C³ŠJŽn
000000*     IF NOT(‚v‚j|“™‹‰‚P‚S‚a = B"1") GO TO CX00256.                                
           COMBINE SHIFT = ‚v‚j|“™‹‰ƒrƒbƒg‚q  AND ""0004""
           IF NOT(SHIFT > 0) GO TO CX00256.
      *20141117C³I—¹
000000     MOVE 1 TO ‚v‚j|“™‹‰” (14) .                                              
000000 CX00256.                                                                 
           DISPLAY "CX00256" UPON CONSOLE
      *20141117C³ŠJŽn
000000*     IF NOT(‚v‚j|“™‹‰‚P‚T‚a = B"1") GO TO CX00257.                                
           COMBINE SHIFT = ‚v‚j|“™‹‰ƒrƒbƒg‚q  AND ""0002""
           IF NOT(SHIFT > 0) GO TO CX00257.
      *20141117C³I—¹
000000     MOVE 1 TO ‚v‚j|“™‹‰” (15) .                                              
000000 CX00257.                                                                 
           DISPLAY "CX00257" UPON CONSOLE
      *20141117C³ŠJŽn
000000*     IF NOT(‚v‚j|“™‹‰‚P‚U‚a = B"1") GO TO CX00258.                                
           COMBINE SHIFT = ‚v‚j|“™‹‰ƒrƒbƒg‚q  AND ""0001""
           IF NOT(SHIFT > 0) GO TO CX00258.
      *20141117C³I—¹
000000     MOVE 1 TO ‚v‚j|“™‹‰” (16) .                                              
000000 CX00258.                                                                 
           DISPLAY "CX00258" UPON CONSOLE
000000     MOVE ‚v‚j|“™‹‰”—ñ TO ‚j‚m‚l‚s“™‹‰ (I) .                                         
000000 CX00012. EXIT.                                                           
000000 GAME-SERCH-RTN .                                                         
000000     MOVE ‚v‚j|ƒQ[ƒ€ƒ^ƒCƒv TO ‚f‚`‚l‚dƒQ[ƒ€ƒ^ƒCƒv                                         
000000     MOVE ‚v‚j|ƒuƒƒbƒNƒR[ƒh TO ‚f‚`‚l‚dƒuƒƒbƒNƒR[ƒh                                       
000000     MOVE ‚v‚j|‰ñ† TO ‚f‚`‚l‚d‰ñ†                                                 
000000       READ   ƒQ[ƒ€‚e  INVALID  CONTINUE.                                    
000000     IF NOT(FL-STS1 NOT = "00" AND "02") GO TO CX00259.                    
000000          DISPLAY "HBHSS020-51 VIGAME READ ERROR " ,                      
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN.                                                     
000000 CX00259.                                                                 
           DISPLAY "CX00259" UPON CONSOLE
000000     MOVE ‚v‚j|ƒQ[ƒ€ƒ^ƒCƒv TO ‚f‚l‚i‚xƒQ[ƒ€ƒ^ƒCƒv                                         
000000     MOVE ‚v‚j|ƒuƒƒbƒNƒR[ƒh TO ‚f‚l‚i‚xƒuƒƒbƒNƒR[ƒh                                       
000000       READ   ƒQ[ƒ€ó‹µ‚e  INVALID  CONTINUE.                                  
000000     IF NOT(FL-STS1 NOT = "00" AND "02") GO TO CX00260.                    
000000          DISPLAY "HBHSS020-52 VIGAMJYO READ ERROR " ,                    
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN.                                                     
000000 CX00260.                                                                 
           DISPLAY "CX00260" UPON CONSOLE
000000     MOVE ‚v‚j|ƒQ[ƒ€ƒ^ƒCƒv TO ‚s‚x‚j‚dƒQ[ƒ€ƒ^ƒCƒv                                         
000000     MOVE ‚v‚j|ƒuƒƒbƒNƒR[ƒh TO ‚s‚x‚j‚dƒuƒƒbƒNƒR[ƒh                                       
000000     MOVE ‚v‚j|‰ñ† TO ‚s‚x‚j‚d‰ñ†                                                 
000000       READ   ’Š‚¹‚ñŒ‹‰Ê‚e  INVALID  CONTINUE.                                  
000000     IF NOT(FL-STS1 NOT = "00" AND "02") GO TO CX00261.                    
000000          DISPLAY "HBHSS020-53 VITYUKEK READ ERROR " ,                    
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN.                                                     
000000 CX00261.                                                                 
           DISPLAY "CX00261" UPON CONSOLE
000000     MOVE ‚v‚j|ƒuƒƒbƒNƒR[ƒh TO ‚a‚k‚j‚PƒuƒƒbƒNƒR[ƒh                                       
000000     MOVE ZERO TO ‚a‚k‚j‚PƒuƒƒbƒNŽ}”Ô                                              
000000     MOVE ZERO TO ‚a‚k‚j‚P”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh                                           
000000       START ƒuƒƒbƒN‚e  KEY >=  ‚a‚k‚j‚PƒŒƒR[ƒhƒL[ ,                                  
000000             INVALID CONTINUE.                                            
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00262.                             
000000          DISPLAY "HBHSS020-54 VIBLOCK START ERROR " ,                    
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN.                                                     
000000 CX00262.                                                                 
           DISPLAY "CX00262" UPON CONSOLE
000000       READ  ƒuƒƒbƒN‚e  NEXT  AT  END  CONTINUE.                              
000000     IF NOT(FL-STS1 NOT = "00" AND "02") GO TO CX00263.                    
000000          DISPLAY "HBHSS020-55 VIBLOCK READ ERROR " ,                     
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN.                                                     
000000 CX00263.                                                                 
           DISPLAY "CX00263" UPON CONSOLE
000000 CX00013. EXIT.                                                           
000000 SHKIN-RTN .                                                              
000000     MOVE ZERO TO ‚v‚j|‹àŠz                                                   
000000     MOVE ‚m‚t‚k‚k TO ‚v‚j|“™‹‰ƒrƒbƒg‚q .                                             
000000     IF NOT( (‚x‚t‚j‚nƒQ[ƒ€Ží•Ê = 1) OR (‚x‚t‚j‚nƒQ[ƒ€Ží•Ê = 2 
              AND ‚x‚t‚j‚n\žƒ^ƒCƒv (1) = 2)) GO TO CX00264.                                                  
000000     PERFORM NORMAL-TOSENKIN-RTN THRU CX00015 .                           
000000     GO TO CX00265.                                                       
000000 CX00264.                                                                 
           DISPLAY "CX00264" UPON CONSOLE
000000     PERFORM COMBI-TOSENKIN-RTN THRU CX00016 .                            
000000 CX00265.                                                                 
           DISPLAY "CX00265" UPON CONSOLE
000000     COMPUTE ‚v‚j|‹àŠz = ‚v‚j|‹àŠz * ‚x‚t‚j‚nŒû” .                                     
000000 CX00014. EXIT.                                                           
000000 NORMAL-TOSENKIN-RTN .                                                    
000000     IF NOT(‚x‚t‚j‚n“–‚¹‚ñ”»’è‹æ•ª (I) = 1 OR 2) GO TO CX00266.                       
000000     MOVE ‚x‚t‚j‚n“–‚¹‚ñ“™‹‰ (I) TO L                                              
000000     PERFORM TOKYUBIT-SET-RTN THRU CX00018                                
000000     MOVE ‚s‚x‚j‚dŽÀ“–‚¹‚ñ‹à (L) TO ‚v‚j|‹àŠz .                                        
000000 CX00266.                                                                 
           DISPLAY "CX00266" UPON CONSOLE
000000 CX00015. EXIT.                                                           
000000 COMBI-TOSENKIN-RTN .                                                     
000000     MOVE 1 TO K .                                                        
000000 CX00267. IF NOT(K <= 11) GO TO CX00268.                                   
           DISPLAY "CX00267" UPON CONSOLE
000000     IF NOT(‚x‚t‚j‚nƒRƒ“ƒr“–”»’è‹æ•ª (K) = 1 OR 2) GO TO CX00269.                      
000000     MOVE K TO L                                                          
000000     PERFORM TOKYUBIT-SET-RTN THRU CX00018                                
000000     COMPUTE ‚v‚j|‹àŠz = ‚v‚j|‹àŠz + ‚s‚x‚j‚dŽÀ“–‚¹‚ñ‹à (K) * 
                   ‚x‚t‚j‚nƒRƒ“ƒr“–‚¹‚ñŒû” (K) .           
000000 CX00269.                                                                 
           DISPLAY "CX00269" UPON CONSOLE
000000     COMPUTE K = K + 1 .                                                  
000000     GO TO CX00267.                                                       
000000 CX00268.                                                                 
           DISPLAY "CX00268" UPON CONSOLE
000000 CX00016. EXIT.                                                           
000000 ZMSSRLCV-RTN .                                                           
000000     MOVE ‚j‚y‚l‚sŽ¯•ÊƒR[ƒhã TO ‚v‚j|‚P‚UŽ¯•ÊƒR[ƒhã                                       
000000     MOVE ‚j‚y‚l‚sŽ¯•ÊƒR[ƒh’† TO ‚v‚j|‚P‚UŽ¯•ÊƒR[ƒh‰º                                       
      *20141117C³ŠJŽn
000000*       @ZMSSRLCV(MODE = 2 ,                                               
000000*                 SBCDBEFORE  = PTR_SBCDBEFORE  ,                          
000000*                 SBCDAFTER   = PTR_SBCDAFTER  ) .                         
      *** ‰Šú‰» ***                                                
           INITIALIZE     SRLC-PARAM.                                           
      *** ƒpƒ‰ƒ[ƒ^@ƒ`ƒFƒbƒN ***                                    
           IF  PTR_SBCDBEFORE  =  NULL   THEN                                         
                   DISPLAY "•ÏŠ·Œ³Ž¯•ÊƒR[ƒh‚ðŽw’è‚µ‚Ä‰º‚³‚¢"                   
                   STOP RUN.
           IF  PTR_SBCDAFTER  =  NULL   THEN                                          
                   DISPLAY "•ÏŠ·æŽ¯•ÊƒR[ƒh‚ðŽw’è‚µ‚Ä‰º‚³‚¢"                   
                   STOP RUN.
      *** “ü—Íƒpƒ‰ƒ[ƒ^ˆÚ‘— ***                                      
            MOVE 2 TO SRLC-MODE                                             
            SET  SRLC-SBCDBEF  TO  PTR_SBCDBEFORE                                  
            SET  SRLC-SBCDAFT  TO  PTR_SBCDAFTER                                   
      *** Ž¯•ÊƒR[ƒh•ÏŠ·ƒ‚ƒWƒ…[ƒ‹ŒÄ‚Ño‚µ ***                          
            CALL "HSAAL060" USING SRLC-PARAM.
      *20141117C³I—¹
000000 CX00017. EXIT.                                                           
000000 TOKYUBIT-SET-RTN .                                                       
000000     IF NOT(L = 1) GO TO CX00270.                                          
      *20141117C³ŠJŽn
000000*     MOVE B"1" TO ‚v‚j|“™‹‰‚P‚a .                                               
           COMBINE ‚v‚j|“™‹‰ƒrƒbƒg—ñ = ‚v‚j|“™‹‰ƒrƒbƒg—ñ  OR ""8000""
      *20141117C³I—¹
000000     GO TO CX00271.                                                       
000000 CX00270. IF NOT(L = 2) GO TO CX00272.                                     
           DISPLAY "CX00270" UPON CONSOLE
      *20141117C³ŠJŽn
000000*     MOVE B"1" TO ‚v‚j|“™‹‰‚Q‚a .                                               
           COMBINE ‚v‚j|“™‹‰ƒrƒbƒg—ñ = ‚v‚j|“™‹‰ƒrƒbƒg—ñ  OR ""4000""
      *20141117C³I—¹
000000     GO TO CX00271.                                                       
000000 CX00272. IF NOT(L = 3) GO TO CX00273.                                     
           DISPLAY "CX00272" UPON CONSOLE
      *20141117C³ŠJŽn
000000*     MOVE B"1" TO ‚v‚j|“™‹‰‚R‚a .                                               
           COMBINE ‚v‚j|“™‹‰ƒrƒbƒg—ñ = ‚v‚j|“™‹‰ƒrƒbƒg—ñ  OR ""2000""
      *20141117C³I—¹
000000     GO TO CX00271.                                                       
000000 CX00273. IF NOT(L = 4) GO TO CX00274.                                     
           DISPLAY "CX00273" UPON CONSOLE
      *20141117C³ŠJŽn
000000*     MOVE B"1" TO ‚v‚j|“™‹‰‚S‚a .                                               
           COMBINE ‚v‚j|“™‹‰ƒrƒbƒg—ñ = ‚v‚j|“™‹‰ƒrƒbƒg—ñ  OR ""1000""
      *20141117C³I—¹
000000     GO TO CX00271.                                                       
000000 CX00274. IF NOT(L = 5) GO TO CX00275.                                     
           DISPLAY "CX00274" UPON CONSOLE
      *20141117C³ŠJŽn
000000*     MOVE B"1" TO ‚v‚j|“™‹‰‚T‚a .                                               
           COMBINE ‚v‚j|“™‹‰ƒrƒbƒg—ñ = ‚v‚j|“™‹‰ƒrƒbƒg—ñ  OR ""0800""
      *20141117C³I—¹
000000     GO TO CX00271.                                                       
000000 CX00275. IF NOT(L = 6) GO TO CX00276.                                     
           DISPLAY "CX00275" UPON CONSOLE
      *20141117C³ŠJŽn
000000*     MOVE B"1" TO ‚v‚j|“™‹‰‚U‚a .                                               
           COMBINE ‚v‚j|“™‹‰ƒrƒbƒg—ñ = ‚v‚j|“™‹‰ƒrƒbƒg—ñ  OR ""0400""
      *20141117C³I—¹
000000     GO TO CX00271.                                                       
000000 CX00276. IF NOT(L = 7) GO TO CX00277.                                     
           DISPLAY "CX00276" UPON CONSOLE
      *20141117C³ŠJŽn
000000*     MOVE B"1" TO ‚v‚j|“™‹‰‚V‚a .                                               
           COMBINE ‚v‚j|“™‹‰ƒrƒbƒg—ñ = ‚v‚j|“™‹‰ƒrƒbƒg—ñ  OR ""0200""
      *20141117C³I—¹
000000     GO TO CX00271.                                                       
000000 CX00277. IF NOT(L = 8) GO TO CX00278.                                     
           DISPLAY "CX00277" UPON CONSOLE
      *20141117C³ŠJŽn
000000*     MOVE B"1" TO ‚v‚j|“™‹‰‚W‚a .                                               
           COMBINE ‚v‚j|“™‹‰ƒrƒbƒg—ñ = ‚v‚j|“™‹‰ƒrƒbƒg—ñ  OR ""0100""
      *20141117C³I—¹
000000     GO TO CX00271.                                                       
000000 CX00278. IF NOT(L = 9) GO TO CX00279.                                     
           DISPLAY "CX00278" UPON CONSOLE
      *20141117C³ŠJŽn
000000*     MOVE B"1" TO ‚v‚j|“™‹‰‚X‚a .                                               
           COMBINE ‚v‚j|“™‹‰ƒrƒbƒg—ñ = ‚v‚j|“™‹‰ƒrƒbƒg—ñ  OR ""0080""
      *20141117C³I—¹
000000     GO TO CX00271.                                                       
000000 CX00279. IF NOT(L = 10) GO TO CX00280.                                    
           DISPLAY "CX00279" UPON CONSOLE
      *20141117C³ŠJŽn
000000*     MOVE B"1" TO ‚v‚j|“™‹‰‚P‚O‚a .                                              
           COMBINE ‚v‚j|“™‹‰ƒrƒbƒg—ñ = ‚v‚j|“™‹‰ƒrƒbƒg—ñ  OR ""0040""
      *20141117C³I—¹
000000     GO TO CX00271.                                                       
000000 CX00280. IF NOT(L = 11) GO TO CX00281.                                    
           DISPLAY "CX00280" UPON CONSOLE
      *20141117C³ŠJŽn
000000*     MOVE B"1" TO ‚v‚j|“™‹‰‚P‚P‚a .                                              
           COMBINE ‚v‚j|“™‹‰ƒrƒbƒg—ñ = ‚v‚j|“™‹‰ƒrƒbƒg—ñ  OR ""0020""
      *20141117C³I—¹
000000     GO TO CX00271.                                                       
000000 CX00281. IF NOT(L = 12) GO TO CX00282.                                    
           DISPLAY "CX00281" UPON CONSOLE
      *20141117C³ŠJŽn
000000*     MOVE B"1" TO ‚v‚j|“™‹‰‚P‚Q‚a .                                              
           COMBINE ‚v‚j|“™‹‰ƒrƒbƒg—ñ = ‚v‚j|“™‹‰ƒrƒbƒg—ñ  OR ""0010""
      *20141117C³I—¹
000000     GO TO CX00271.                                                       
000000 CX00282. IF NOT(L = 13) GO TO CX00283.                                    
           DISPLAY "CX00282" UPON CONSOLE
      *20141117C³ŠJŽn
000000*     MOVE B"1" TO ‚v‚j|“™‹‰‚P‚R‚a .                                              
           COMBINE ‚v‚j|“™‹‰ƒrƒbƒg—ñ = ‚v‚j|“™‹‰ƒrƒbƒg—ñ  OR ""0008""
      *20141117C³I—¹
000000     GO TO CX00271.                                                       
000000 CX00283. IF NOT(L = 14) GO TO CX00284.                                    
           DISPLAY "CX00283" UPON CONSOLE
      *20141117C³ŠJŽn
000000*     MOVE B"1" TO ‚v‚j|“™‹‰‚P‚S‚a .                                              
           COMBINE ‚v‚j|“™‹‰ƒrƒbƒg—ñ = ‚v‚j|“™‹‰ƒrƒbƒg—ñ  OR ""0004""
      *20141117C³I—¹
000000     GO TO CX00271.                                                       
000000 CX00284. IF NOT(L = 15) GO TO CX00285.                                    
           DISPLAY "CX00284" UPON CONSOLE
      *20141117C³ŠJŽn
000000*     MOVE B"1" TO ‚v‚j|“™‹‰‚P‚T‚a .                                              
           COMBINE ‚v‚j|“™‹‰ƒrƒbƒg—ñ = ‚v‚j|“™‹‰ƒrƒbƒg—ñ  OR ""0002""
      *20141117C³I—¹
000000     GO TO CX00271.                                                       
000000 CX00285. IF NOT(L = 16) GO TO CX00286.                                    
           DISPLAY "CX00285" UPON CONSOLE
      *20141117C³ŠJŽn
000000*     MOVE B"1" TO ‚v‚j|“™‹‰‚P‚U‚a .                                              
           COMBINE ‚v‚j|“™‹‰ƒrƒbƒg—ñ = ‚v‚j|“™‹‰ƒrƒbƒg—ñ  OR ""0001""
      *20141117C³I—¹
000000 CX00286.                                                                 
000000 CX00271.                                                                 
           DISPLAY "CX00271" UPON CONSOLE
000000 CX00018. EXIT.                                                           

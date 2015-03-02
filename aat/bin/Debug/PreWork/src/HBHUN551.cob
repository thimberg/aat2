000000 IDENTIFICATION DIVISION.                                                 
000000 PROGRAM-ID. HBHUN551 .                                                   
000000 DATE-WRITTEN.                                                            
000000 DATE-COMPILED.                                                           
000000 ENVIRONMENT DIVISION.                                                    
000000 CONFIGURATION SECTION.                                                   
000000 SOURCE-COMPUTER.        ACOS.                                            
000000 OBJECT-COMPUTER.        ACOS.                                            
      *20141114èCê≥äJén
000000* SPECIAL-NAMES.                                                           
000000*     ITG005  IS  SPCOMMIT.                                                
      *20141114èCê≥èIóπ
000000 INPUT-OUTPUT SECTION.                                                     
000000 FILE-CONTROL.                                                            
000000     SELECT â^ópä«óùÇe                                                         
000000                  ASSIGN             VRUNYKAN-MSD                             
000000                  ORGANIZATION       IS  RELATIVE                       
000000                  ACCESS             RANDOM                               
000000                  RELATIVE           UNK-RKEY                             
000000*                  FILE STATUS          FL-STS1  FL-STS2.                   
000000                  FILE STATUS          FL-STS1.                   
000000     SELECT ê¢ë„ï â^ópä«óùÇe                                                      
000000                  ASSIGN             VRSEUNKN-MSD                             
000000                  ORGANIZATION       IS  RELATIVE                       
000000                  ACCESS             RANDOM                               
000000                  RELATIVE           SUK-RKEY                             
000000*                  FILE STATUS          FL-STS1  FL-STS2.                   
000000                  FILE STATUS          FL-STS1.                   
000000     SELECT î≠îÑäJénÉQÅ[ÉÄÇeÅ|Ç`                                                    
000000                  ASSIGN             VIKASGMA-MSD                             
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       RANDOM                               
000000                  RECORD  KEY        ÇjÇ`ÇfÇlÉQÅ[ÉÄÇhÇc                            
000000*                  FILE STATUS          FL-STS1  FL-STS2.                   
000000                  FILE STATUS          FL-STS1.                   
000000     SELECT î≠îÑäJénÉQÅ[ÉÄÇeÅ|Ça                                                    
000000                  ASSIGN             VIKASGMB-MSD                             
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       RANDOM                               
000000                  RECORD  KEY        ÇjÇ`ÇfÇlÇaÉQÅ[ÉÄÇhÇc                           
000000*                  FILE STATUS          FL-STS1  FL-STS2.                   
000000                  FILE STATUS          FL-STS1.                   
000000     SELECT ì˙ï îÃîÑÇbÇgï îÑèÍîÑè„ÇvÇe                                                 
000000                  ASSIGN             SQWHURCH-MSD                             
000000                  ORGANIZATION       SEQUENTIAL                           
000000                  ACCESS  MODE       SEQUENTIAL                           
000000*                  FILE STATUS          FL-STS1  FL-STS2.                   
000000                  FILE STATUS          FL-STS1.                   
000000     SELECT îÑèÍÇe                                                           
000000                  ASSIGN             VIURIBA-MSD                              
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       RANDOM                               
000000                  RECORD  KEY        ÇtÇqÇaÇ`îÑèÍÉRÅ[Éh                            
000000*                  FILE STATUS          FL-STS1  FL-STS2.                   
000000                  FILE STATUS          FL-STS1.                   
000000     SELECT ã∆é“Çe                                                           
000000                  ASSIGN             VIGYOSYA-MSD                             
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       RANDOM                               
000000                  RECORD  KEY        ÇfÇxÇrÇ`ã∆é“ÉRÅ[ÉhÇw                            
000000*                  FILE STATUS          FL-STS1  FL-STS2.                   
000000                  FILE STATUS          FL-STS1.                   
000000     SELECT ì˙ï îÃîÑÇbÇgï îÑè„ó›åvÇe                                                  
000000                  ASSIGN             VIHCHNUR-MSD                             
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       DYNAMIC                              
000000                  RECORD  KEY        ÇgÇbÇgÇmÉåÉRÅ[ÉhÉLÅ[                           
000000*                  FILE STATUS          FL-STS1  FL-STS2.                   
000000                  FILE STATUS          FL-STS1.                   
000000     SELECT îÃîÑÉ`ÉÉÉlÉãï îÑè„ó›åvÇe                                                  
000000                  ASSIGN             VICHNURI-MSD                             
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       RANDOM                               
000000                  RECORD  KEY        ÇbÇgÇtÇqÉåÉRÅ[ÉhÉLÅ[                           
000000*                  FILE STATUS          FL-STS1  FL-STS2.                   
000000                  FILE STATUS          FL-STS1.                   
000000 DATA DIVISION.                                                           
000000 FILE SECTION.                                                            
000000 FD  ì˙ï îÃîÑÇbÇgï îÑèÍîÑè„ÇvÇe                                                        
000000     LABEL RECORD STANDARD                                               
      *20141114í«â¡äJén
           VALUE  OF IDENTIFICATION IS "SQWHURCH".
      *20141114í«â¡èIóπ
000000 01  ì˙ï îÃîÑÇbÇgï îÑèÍîÑè„ÇvÇq.                                                       
000000     COPY CFWUBU .                                                        
000000 FD  î≠îÑäJénÉQÅ[ÉÄÇeÅ|Ç`                                                           
000000     LABEL RECORD STANDARD                                               
      *20141114í«â¡äJén
           VALUE  OF IDENTIFICATION IS "VIKASGMA".
      *20141114í«â¡èIóπ
000000 01  î≠îÑäJénÉQÅ[ÉÄÇqÅ|Ç`.                                                          
000000     COPY CFKAGM .                                                        
000000 FD  î≠îÑäJénÉQÅ[ÉÄÇeÅ|Ça                                                           
000000     LABEL RECORD STANDARD                                               
      *20141114í«â¡äJén
           VALUE  OF IDENTIFICATION IS "VIKASGMB".
      *20141114í«â¡èIóπ
000000 01  î≠îÑäJénÉQÅ[ÉÄÇqÅ|Ça.                                                          
000000     COPY CFKAGM REPLACING                                                
000000                 //ÇjÇ`ÇfÇl//  BY  //ÇjÇ`ÇfÇlÇa// .                                
000000 FD  â^ópä«óùÇe                                                                
      *20141114èCê≥äJén                                                          
000000*     RECORD  VARYING  IN  SIZE
           LABEL RECORD STANDARD
      *20141114èCê≥èIóπ
      *20141114í«â¡äJén
           VALUE  OF IDENTIFICATION IS "VRUNYKAN".
      *20141114í«â¡èIóπ
000000* 01  â^ópä«óùÇqÇQ.                                                              
000000*     COPY CFUNK2 .                                                        
000000 01  â^ópä«óùÇqÇP.                                                              
000000     COPY CFUNK1 .                                                        
000000* 01  â^ópä«óùÇqÇR.                                                              
000000*     COPY CFUNK3 .                                                        
000000 FD  ê¢ë„ï â^ópä«óùÇe                                                             
      *20141114èCê≥äJén                                                          
000000*     RECORD  VARYING  IN  SIZE
           LABEL RECORD STANDARD
      *20141114èCê≥èIóπ
      *20141114í«â¡äJén
           VALUE  OF IDENTIFICATION IS "VRSEUNKN".
      *20141114í«â¡èIóπ
000000 01  ê¢ë„ï â^ópä«óùÇq.                                                            
000000     COPY CFSUK1 .                                                        
000000 FD  ã∆é“Çe                                                                  
000000     LABEL RECORD STANDARD                                               
      *20141114í«â¡äJén
           VALUE  OF IDENTIFICATION IS "VIGYOSYA".
      *20141114í«â¡èIóπ
000000 01  ã∆é“Çq.                                                                 
000000     COPY CFGYSA .                                                        
000000 FD  îÑèÍÇe                                                                  
000000     LABEL RECORD STANDARD                                               
      *20141114í«â¡äJén
           VALUE  OF IDENTIFICATION IS "VIURIBA".
      *20141114í«â¡èIóπ
000000 01  îÑèÍÇq.                                                                 
000000     COPY CFURBA .                                                        
000000 FD  ì˙ï îÃîÑÇbÇgï îÑè„ó›åvÇe                                                         
000000     LABEL RECORD STANDARD                                               
      *20141114í«â¡äJén
           VALUE  OF IDENTIFICATION IS "VIHCHNUR".
      *20141114í«â¡èIóπ
000000 01  ì˙ï îÃîÑÇbÇgï îÑè„ó›åvÇq.                                                        
000000     COPY CFHCHN .                                                        
000000 FD  îÃîÑÉ`ÉÉÉlÉãï îÑè„ó›åvÇe                                                         
000000     LABEL RECORD STANDARD                                               
      *20141114í«â¡äJén
           VALUE  OF IDENTIFICATION IS "VICHNURI".
      *20141114í«â¡èIóπ
000000 01  îÃîÑÉ`ÉÉÉlÉãï îÑè„ó›åvÇq.                                                        
000000     COPY CFCHUR .                                                        
000000 WORKING-STORAGE SECTION.                                                 
000000 01  çÏã∆ÉGÉäÉA.                                                               
000000   03  ÇvÇjÅ|îÑè„ã‡äz               PIC 9(13)  USAGE  COMP-3.                    
000000   03  ÇvÇjÅ|ê¢ë„ãÊï™               PIC 9(01).                                   
000000   03  ÇvÇjÅ|îNìx                   PIC 9(04).                                 
000000   03  ÇvÇjÅ|ÉoÉbÉ`ã∆ñ±ì˙ït         PIC 9(08).                                      
000000   03  ÇvÇjÅ|îÑèÍÉRÅ[Éh             PIC X(06).                                    
000000   03  ÇvÇjÅ|ÉQÅ[ÉÄÇhÇc.                                                          
000000     05  ÇvÇjÅ|ÉQÅ[ÉÄÉ^ÉCÉv         PIC 9(02).                                     
000000     05  ÇvÇjÅ|ÉuÉçÉbÉNÉRÅ[Éh       USAGE COMP-1.                                   
000000     05  ÇvÇjÅ|âÒçÜ                 USAGE COMP-1.                              
000000   03  ÇvÇjÅ|îÑè„ÇsÇaÇk             USAGE COMP-1.                                 
000000   03  ÇvÇjÅ|é¿î≠îÑäJénì˙           PIC 9(08).                                     
000000   03  ÇvÇjÅ|é¿î≠îÑäJénì˙Çq         REDEFINES  ÇvÇjÅ|é¿î≠îÑäJénì˙.                           
000000     05  ÇvÇjÅ|é¿î≠îÑäJénì˙Çx       PIC 9(04).                                      
000000     05  ÇvÇjÅ|é¿î≠îÑäJénì˙Çl       PIC 9(02).                                      
000000     05  ÇvÇjÅ|é¿î≠îÑäJénì˙Çc       PIC 9(02).                                      
000000 01  óòópé“êßå‰ïœêîÉGÉäÉA.                                                          
000000   03  ïœêîÇbÇnÇlÇlÇhÇsåèêî         PIC 9(05).                                      
000000 01  ÉJÉEÉìÉ^.                                                                
000000   03  ÇbÇmÇsÉQÅ[ÉÄèIóπèÛë‘         USAGE COMP-1.                                   
000000   03  ÇbÇmÇsÅ|îÑè„ÇsÇaÇk           USAGE COMP-1.                                  
000000   03  CNT-COMMIT                   PIC 9(05).                            
000000 01  ëäëŒÉLÅ[.                                                                
      *20141114èCê≥äJén
000000*   03  UNK-RKEY                     USAGE COMP-2.                         
000000*   03  SUK-RKEY                     USAGE COMP-2.                         
000000   03  UNK-RKEY                     PIC 9(08).                         
000000   03  SUK-RKEY                     PIC 9(08).                         
      *20141114èCê≥èIóπ
000000 01  ÉtÉâÉO.                                                                 
000000   03  ÉtÉ@ÉCÉãÉXÉeÅ[É^ÉX.                                                         
000000     05  FL-STS1                    PIC X(02).                            
000000     05  FL-STS2                    PIC 9(05).                            
000000   03  ÉtÉ@ÉCÉãèIóπÉtÉâÉO.                                                         
000000     05  ÇdÇmÇcÅ|îÑè„ÇvÇe           PIC 9(01).                                    
000000   03  ÉeÅ[ÉuÉãèIóπÉtÉâÉO.                                                         
000000     05  ÇdÇmÇcÅ|ÉQÅ[ÉÄèIóπèÛë‘     PIC 9(01).                                       
000000 01  Çsì˙ï îÃîÑÇbÇgï îÑè„ó›åv.                                                        
      *20141114èCê≥äJén
000000*   02  Çsó›åvì˙ï îÃîÑÇbÇgï ó›åv    OCCURS 15000.                                      
         02  Çsó›åvì˙ï îÃîÑÇbÇgï ó›åv    OCCURS 1500.
      *20141114èCê≥èIóπ
000000     03  Çsó›åvÉåÉRÅ[ÉhÉLÅ[.                                                       
000000       05  Çsó›åvîNìx                    PIC 9(4).                             
000000       05  Çsó›åvîÃîÑÉ`ÉÉÉlÉã            PIC 9(2).                                 
000000       05  Çsó›åvÉQÅ[ÉÄÇhÇc.                                                      
000000         07  Çsó›åvÉQÅ[ÉÄÉ^ÉCÉv          PIC 9(2).                                 
000000         07  Çsó›åvÉuÉçÉbÉNÉRÅ[Éh        USAGE COMP-1.                              
000000         07  Çsó›åvâÒçÜ                  USAGE COMP-1.                         
000000     03  Çsó›åvîÑè„ã‡äz        PIC 9(13) USAGE COMP-3.                           
000000 PROCEDURE DIVISION .                                                     
000000 MAIN-RTN .                                                               
000000     PERFORM S000-RTN THRU CX00002                                        
000000     PERFORM P000-RTN THRU CX00003                                        
000000     PERFORM E000-RTN THRU CX00004 .                                      
           DISPLAY "--Before --LINE:209--  CX00001" UPON CONSOLE
000000 CX00001. STOP RUN.                                                       
           DISPLAY "--After --LINE:211--  CX00001" UPON CONSOLE
000000 S000-RTN .                                                               
      *20141114èCê≥äJén
000000*       ACCEPT  ïœêîÇbÇnÇlÇlÇhÇsåèêî  FROM  SPCOMMIT.                                
             MOVE ZERO TO ïœêîÇbÇnÇlÇlÇhÇsåèêî.
      *20141114èCê≥èIóπ
000000       OPEN INPUT â^ópä«óùÇe .                                                 
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00011.                             
000000         DISPLAY "HBHUN551-01 VRUNYKAN OPEN ERROR " ,                     
000000                           FL-STS1 " " FL-STS2.                           
000000         STOP RUN .                                                     
           DISPLAY "--Before --LINE:222--  CX00011" UPON CONSOLE
000000 CX00011.                                                                 
           DISPLAY "--After --LINE:224--  CX00011" UPON CONSOLE
000000       OPEN INPUT ê¢ë„ï â^ópä«óùÇe .                                              
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00012.                             
000000         DISPLAY "HBHUN551-02 VRSEUNKN OPEN ERROR " ,                     
000000                           FL-STS1 " " FL-STS2.                           
000000         STOP RUN .                                                     
           DISPLAY "--Before --LINE:230--  CX00012" UPON CONSOLE
000000 CX00012.                                                                 
           DISPLAY "--After --LINE:232--  CX00012" UPON CONSOLE
000000       OPEN INPUT îÑèÍÇe .                                                   
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00013.                             
000000         DISPLAY "HBHUN551-03 VIURIBA OPEN ERROR " ,                      
000000                           FL-STS1 " " FL-STS2.                           
000000         STOP RUN .                                                     
           DISPLAY "--Before --LINE:238--  CX00013" UPON CONSOLE
000000 CX00013.                                                                 
           DISPLAY "--After --LINE:240--  CX00013" UPON CONSOLE
000000       OPEN INPUT ã∆é“Çe .                                                   
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00014.                             
000000         DISPLAY "HBHUN551-04 VIGYOSYA OPEN ERROR " ,                     
000000                           FL-STS1 " " FL-STS2.                           
000000         STOP RUN .                                                     
           DISPLAY "--Before --LINE:246--  CX00014" UPON CONSOLE
000000 CX00014.                                                                 
           DISPLAY "--After --LINE:248--  CX00014" UPON CONSOLE
000000       OPEN INPUT ì˙ï îÃîÑÇbÇgï îÑèÍîÑè„ÇvÇe .                                         
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00015.                             
000000         DISPLAY "HBHUN551-05 SQWHURCH OPEN ERROR " ,                     
000000                           FL-STS1 " " FL-STS2.                           
000000         STOP RUN .                                                     
           DISPLAY "--Before --LINE:254--  CX00015" UPON CONSOLE
000000 CX00015.                                                                 
           DISPLAY "--After --LINE:256--  CX00015" UPON CONSOLE
000000       OPEN I-O   ì˙ï îÃîÑÇbÇgï îÑè„ó›åvÇe .                                          
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00016.                             
000000         DISPLAY "HBHUN551-06 VIHCHNUR OPEN ERROR " ,                     
000000                           FL-STS1 " " FL-STS2.                           
000000         STOP RUN .                                                     
           DISPLAY "--Before --LINE:262--  CX00016" UPON CONSOLE
000000 CX00016.                                                                 
           DISPLAY "--After --LINE:264--  CX00016" UPON CONSOLE
000000       OPEN I-O   îÃîÑÉ`ÉÉÉlÉãï îÑè„ó›åvÇe .                                          
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00017.                             
000000         DISPLAY "HBHUN551-07 VICHNURI OPEN ERROR " ,                     
000000                           FL-STS1 " " FL-STS2.                           
000000         STOP RUN .                                                     
           DISPLAY "--Before --LINE:270--  CX00017" UPON CONSOLE
000000 CX00017.                                                                 
           DISPLAY "--After --LINE:272--  CX00017" UPON CONSOLE
000000     MOVE 1 TO UNK-RKEY                                                   
000000       READ  â^ópä«óùÇe INVALID CONTINUE .                                     
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00018.                             
000000         DISPLAY "HBHUN551-08 VRUNYKAN READ ERROR ",                      
000000                     FL-STS1 " " FL-STS2                                  
000000         STOP RUN .                                                     
           DISPLAY "--Before --LINE:279--  CX00018" UPON CONSOLE
000000 CX00018.                                                                 
           DISPLAY "--After --LINE:281--  CX00018" UPON CONSOLE
000000     IF NOT(ÇtÇmÇjÇPã∆ñ±ì˙ït = 
            ÇtÇmÇjÇPÉoÉbÉ`ã∆ñ±ì˙ït) GO TO CX00019.                         
000000     MOVE ÇtÇmÇjÇPê¢ë„ãÊï™ TO ÇvÇjÅ|ê¢ë„ãÊï™ .                                           
000000     GO TO CX00020.                                                       
           DISPLAY "--Before --LINE:286--  CX00019" UPON CONSOLE
000000 CX00019.                                                                 
           DISPLAY "--After --LINE:288--  CX00019" UPON CONSOLE
000000     IF NOT(ÇtÇmÇjÇPê¢ë„ãÊï™ = 1) GO TO CX00021.                                   
000000     MOVE 2 TO ÇvÇjÅ|ê¢ë„ãÊï™ .                                                  
000000     GO TO CX00022.                                                       
           DISPLAY "--Before --LINE:292--  CX00021" UPON CONSOLE
000000 CX00021.                                                                 
           DISPLAY "--After --LINE:294--  CX00021" UPON CONSOLE
000000     MOVE 1 TO ÇvÇjÅ|ê¢ë„ãÊï™ .                                                  
           DISPLAY "--Before --LINE:296--  CX00022" UPON CONSOLE
000000 CX00022.                                                                 
           DISPLAY "--After --LINE:298--  CX00022" UPON CONSOLE
           DISPLAY "--Before --LINE:299--  CX00020" UPON CONSOLE
000000 CX00020.                                                                 
           DISPLAY "--After --LINE:301--  CX00020" UPON CONSOLE
000000     IF NOT(ÇvÇjÅ|ê¢ë„ãÊï™ = 1) GO TO CX00023.                                    
000000         OPEN  INPUT  î≠îÑäJénÉQÅ[ÉÄÇeÅ|Ç` .                                        
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00024.                             
000000           DISPLAY "HBHUN551-09 VIKASGMA OPEN ERROR ",                    
000000                     FL-STS1 " " FL-STS2                                  
000000           STOP RUN .                                                   
           DISPLAY "--Before --LINE:308--  CX00024" UPON CONSOLE
000000 CX00024.                                                                 
           DISPLAY "--After --LINE:310--  CX00024" UPON CONSOLE
000000     GO TO CX00025.                                                       
           DISPLAY "--Before --LINE:312--  CX00023" UPON CONSOLE
000000 CX00023.                                                                 
           DISPLAY "--After --LINE:314--  CX00023" UPON CONSOLE
000000         OPEN  INPUT  î≠îÑäJénÉQÅ[ÉÄÇeÅ|Ça .                                        
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00026.                             
000000           DISPLAY "HBHUN551-10 VIKASGMB OPEN ERROR ",                    
000000                     FL-STS1 " " FL-STS2                                  
000000           STOP RUN .                                                   
           DISPLAY "--Before --LINE:320--  CX00026" UPON CONSOLE
000000 CX00026.                                                                 
           DISPLAY "--After --LINE:322--  CX00026" UPON CONSOLE
           DISPLAY "--Before --LINE:323--  CX00025" UPON CONSOLE
000000 CX00025.                                                                 
           DISPLAY "--After --LINE:325--  CX00025" UPON CONSOLE
000000       INITIALIZE Çsì˙ï îÃîÑÇbÇgï îÑè„ó›åv .                                          
000000 CX00002. EXIT.                                                           
000000 P000-RTN .                                                               
000000     PERFORM P100-RTN THRU CX00005                                        
000000     PERFORM P200-RTN THRU CX00006                                        
000000     PERFORM P300-RTN THRU CX00009 .                                      
000000 CX00003. EXIT.                                                           
000000 E000-RTN .                                                               
000000       COMMIT                                                             
000000       CLOSE â^ópä«óùÇe .                                                      
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00027.                             
000000         DISPLAY "HBHUN551-11 VRUNYKAN CLOSE ERROR " ,                    
000000                          FL-STS1 " " FL-STS2.                            
000000         STOP RUN .                                                     
           DISPLAY "--Before --LINE:340--  CX00027" UPON CONSOLE
000000 CX00027.                                                                 
           DISPLAY "--After --LINE:342--  CX00027" UPON CONSOLE
000000       CLOSE ê¢ë„ï â^ópä«óùÇe .                                                   
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00028.                             
000000         DISPLAY "HBHUN551-12 VRSEUNKN CLOSE ERROR " ,                    
000000                          FL-STS1 " " FL-STS2.                            
000000         STOP RUN .                                                     
           DISPLAY "--Before --LINE:348--  CX00028" UPON CONSOLE
000000 CX00028.                                                                 
           DISPLAY "--After --LINE:350--  CX00028" UPON CONSOLE
000000       CLOSE îÑèÍÇe .                                                        
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00029.                             
000000         DISPLAY "HBHUN551-13 VIURIBA CLOSE ERROR " ,                     
000000                          FL-STS1 " " FL-STS2.                            
000000         STOP RUN .                                                     
           DISPLAY "--Before --LINE:356--  CX00029" UPON CONSOLE
000000 CX00029.                                                                 
           DISPLAY "--After --LINE:358--  CX00029" UPON CONSOLE
000000       CLOSE ã∆é“Çe .                                                        
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00030.                             
000000         DISPLAY "HBHUN551-14 VIGYOSYA CLOSE ERROR " ,                    
000000                          FL-STS1 " " FL-STS2.                            
000000         STOP RUN .                                                     
           DISPLAY "--Before --LINE:364--  CX00030" UPON CONSOLE
000000 CX00030.                                                                 
           DISPLAY "--After --LINE:366--  CX00030" UPON CONSOLE
000000       CLOSE ì˙ï îÃîÑÇbÇgï îÑèÍîÑè„ÇvÇe .                                              
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00031.                             
000000         DISPLAY "HBHUN551-15 SQWHURCH CLOSE ERROR " ,                    
000000                          FL-STS1 " " FL-STS2.                            
000000         STOP RUN .                                                     
           DISPLAY "--Before --LINE:372--  CX00031" UPON CONSOLE
000000 CX00031.                                                                 
           DISPLAY "--After --LINE:374--  CX00031" UPON CONSOLE
000000       CLOSE ì˙ï îÃîÑÇbÇgï îÑè„ó›åvÇe .                                               
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00032.                             
000000         DISPLAY "HBHUN551-16 VIHCHNUR CLOSE ERROR " ,                    
000000                          FL-STS1 " " FL-STS2.                            
000000         STOP RUN .                                                     
           DISPLAY "--Before --LINE:380--  CX00032" UPON CONSOLE
000000 CX00032.                                                                 
           DISPLAY "--After --LINE:382--  CX00032" UPON CONSOLE
000000       CLOSE îÃîÑÉ`ÉÉÉlÉãï îÑè„ó›åvÇe .                                               
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00033.                             
000000         DISPLAY "HBHUN551-17 VICHNURI CLOSE ERROR " ,                    
000000                          FL-STS1 " " FL-STS2.                            
000000         STOP RUN .                                                     
           DISPLAY "--Before --LINE:388--  CX00033" UPON CONSOLE
000000 CX00033.                                                                 
           DISPLAY "--After --LINE:390--  CX00033" UPON CONSOLE
000000     IF NOT(ÇvÇjÅ|ê¢ë„ãÊï™ = 1) GO TO CX00034.                                    
000000         CLOSE  î≠îÑäJénÉQÅ[ÉÄÇeÅ|Ç` .                                              
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00035.                             
000000           DISPLAY "HBHUN551-18 VIKASGMA CLOSE ERROR ",                   
000000                     FL-STS1 " " FL-STS2                                  
000000           STOP RUN .                                                   
           DISPLAY "--Before --LINE:397--  CX00035" UPON CONSOLE
000000 CX00035.                                                                 
           DISPLAY "--After --LINE:399--  CX00035" UPON CONSOLE
000000     GO TO CX00036.                                                       
           DISPLAY "--Before --LINE:401--  CX00034" UPON CONSOLE
000000 CX00034.                                                                 
           DISPLAY "--After --LINE:403--  CX00034" UPON CONSOLE
000000         CLOSE  î≠îÑäJénÉQÅ[ÉÄÇeÅ|Ça .                                              
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00037.                             
000000           DISPLAY "HBHUN551-19 VIKASGMB CLOSE ERROR ",                   
000000                     FL-STS1 " " FL-STS2                                  
000000           STOP RUN .                                                   
           DISPLAY "--Before --LINE:409--  CX00037" UPON CONSOLE
000000 CX00037.                                                                 
           DISPLAY "--After --LINE:411--  CX00037" UPON CONSOLE
           DISPLAY "--Before --LINE:412--  CX00036" UPON CONSOLE
000000 CX00036.                                                                 
           DISPLAY "--After --LINE:414--  CX00036" UPON CONSOLE
      *20141114èCê≥äJén
000000*       @ZCTMSGOT(MSGID = #BH001,                                          
000000*                 PROGID = HBHUN551); .                                    
      *20141114èCê≥èIóπ
000000 CX00004. EXIT.                                                           
000000 P100-RTN .                                                               
000000     MOVE 0 TO ÇdÇmÇcÅ|îÑè„ÇvÇe                                                   
000000     MOVE 0 TO ÇvÇjÅ|îÑè„ã‡äz                                                    
000000     MOVE 0 TO CNT-COMMIT                                                 
000000       READ ì˙ï îÃîÑÇbÇgï îÑèÍîÑè„ÇvÇe AT END    ,                                     
000000                        MOVE 1 TO ÇdÇmÇcÅ|îÑè„ÇvÇe.                               
000000     IF NOT(FL-STS1 NOT = "00" AND "10") GO TO CX00038.                    
000000         DISPLAY "HBHUN551-20 SQWHURCH READ ERROR " ,                     
000000                          FL-STS1 " " FL-STS2                             
000000         STOP RUN .                                                     
           DISPLAY "--Before --LINE:430--  CX00038" UPON CONSOLE
000000 CX00038.                                                                 
           DISPLAY "--After --LINE:432--  CX00038" UPON CONSOLE
000000     MOVE ÇvÇtÇaÇtîÑèÍÉRÅ[Éh TO ÇvÇjÅ|îÑèÍÉRÅ[Éh .                                         
000000     MOVE ÇvÇtÇaÇtÉQÅ[ÉÄÇhÇc TO ÇvÇjÅ|ÉQÅ[ÉÄÇhÇc .                                         
           DISPLAY "--Before --LINE:435--  CX00039" UPON CONSOLE
000000 CX00039. IF NOT(ÇdÇmÇcÅ|îÑè„ÇvÇe = 0) GO TO CX00040.                              
           DISPLAY "--After --LINE:437--  CX00039" UPON CONSOLE
           DISPLAY "--Before --LINE:438--  CX00041" UPON CONSOLE
000000 CX00041. IF NOT( (ÇdÇmÇcÅ|îÑè„ÇvÇe = 0) AND 
            (ÇvÇjÅ|îÑèÍÉRÅ[Éh = ÇvÇtÇaÇtîÑèÍÉRÅ[Éh) AND           
000000     (ÇvÇjÅ|ÉQÅ[ÉÄÇhÇc = ÇvÇtÇaÇtÉQÅ[ÉÄÇhÇc)) GO TO CX00042.                                
           DISPLAY "--After --LINE:442--  CX00041" UPON CONSOLE
000000     COMPUTE ÇvÇjÅ|îÑè„ã‡äz = ÇvÇjÅ|îÑè„ã‡äz +                                          
000000                             ÇvÇtÇaÇtîÑè„ã‡äz                                     
000000           READ ì˙ï îÃîÑÇbÇgï îÑèÍîÑè„ÇvÇe AT END    ,                                 
000000                        MOVE 1 TO ÇdÇmÇcÅ|îÑè„ÇvÇe .                              
000000     IF NOT(FL-STS1 NOT = "00" AND "10") GO TO CX00043.                    
000000             DISPLAY "HBHUN551-21 SQWHURCH READ ERROR " ,                 
000000                          FL-STS1 " " FL-STS2                             
000000             STOP RUN .                                                 
           DISPLAY "--Before --LINE:451--  CX00043" UPON CONSOLE
000000 CX00043.                                                                 
           DISPLAY "--After --LINE:453--  CX00043" UPON CONSOLE
000000     GO TO CX00041.                                                       
           DISPLAY "--Before --LINE:455--  CX00042" UPON CONSOLE
000000 CX00042.                                                                 
           DISPLAY "--After --LINE:457--  CX00042" UPON CONSOLE
000000     IF NOT(ÇvÇjÅ|ê¢ë„ãÊï™ = 1) GO TO CX00044.                                    
000000     MOVE ÇvÇjÅ|ÉQÅ[ÉÄÇhÇc TO ÇjÇ`ÇfÇlÉQÅ[ÉÄÇhÇc                                           
000000           READ  î≠îÑäJénÉQÅ[ÉÄÇeÅ|Ç` INVALID CONTINUE .                            
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00045.                             
000000             DISPLAY "HBHUN551-22 VIKASGMA READ ERROR ",                  
000000                       FL-STS1 " " FL-STS2                                
000000             STOP RUN .                                                 
           DISPLAY "--Before --LINE:465--  CX00045" UPON CONSOLE
000000 CX00045.                                                                 
           DISPLAY "--After --LINE:467--  CX00045" UPON CONSOLE
000000     MOVE ÇjÇ`ÇfÇlé¿î≠îÑäJénì˙ TO ÇvÇjÅ|é¿î≠îÑäJénì˙ .                                       
000000     GO TO CX00046.                                                       
           DISPLAY "--Before --LINE:470--  CX00044" UPON CONSOLE
000000 CX00044.                                                                 
           DISPLAY "--After --LINE:472--  CX00044" UPON CONSOLE
000000     MOVE ÇvÇjÅ|ÉQÅ[ÉÄÇhÇc TO ÇjÇ`ÇfÇlÇaÉQÅ[ÉÄÇhÇc                                          
000000           READ  î≠îÑäJénÉQÅ[ÉÄÇeÅ|Ça INVALID CONTINUE .                            
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00047.                             
000000             DISPLAY "HBHUN551-23 VIKASGMB READ ERROR ",                  
000000                       FL-STS1 " " FL-STS2                                
000000             STOP RUN .                                                 
           DISPLAY "--Before --LINE:479--  CX00047" UPON CONSOLE
000000 CX00047.                                                                 
           DISPLAY "--After --LINE:481--  CX00047" UPON CONSOLE
000000     MOVE ÇjÇ`ÇfÇlÇaé¿î≠îÑäJénì˙ TO ÇvÇjÅ|é¿î≠îÑäJénì˙ .                                      
           DISPLAY "--Before --LINE:483--  CX00046" UPON CONSOLE
000000 CX00046.                                                                 
           DISPLAY "--After --LINE:485--  CX00046" UPON CONSOLE
000000     IF NOT(ÇvÇjÅ|é¿î≠îÑäJénì˙Çl >= 1 AND 
            ÇvÇjÅ|é¿î≠îÑäJénì˙Çl <= 3) GO TO CX00048.            
000000     COMPUTE ÇvÇjÅ|îNìx = ÇvÇjÅ|é¿î≠îÑäJénì˙Çx - 1 .                                     
000000     GO TO CX00049.                                                       
           DISPLAY "--Before --LINE:490--  CX00048" UPON CONSOLE
000000 CX00048.                                                                 
           DISPLAY "--After --LINE:492--  CX00048" UPON CONSOLE
000000     MOVE ÇvÇjÅ|é¿î≠îÑäJénì˙Çx TO ÇvÇjÅ|îNìx .                                           
           DISPLAY "--Before --LINE:494--  CX00049" UPON CONSOLE
000000 CX00049.                                                                 
           DISPLAY "--After --LINE:496--  CX00049" UPON CONSOLE
000000     MOVE ÇvÇjÅ|îÑèÍÉRÅ[Éh TO ÇtÇqÇaÇ`îÑèÍÉRÅ[Éh                                           
000000         READ  îÑèÍÇe INVALID CONTINUE .                                     
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00050.                             
000000           DISPLAY "HBHUN551-24 VIURIBA READ ERROR ",                     
000000                     FL-STS1 " " FL-STS2                                  
000000           STOP RUN .                                                   
           DISPLAY "--Before --LINE:503--  CX00050" UPON CONSOLE
000000 CX00050.                                                                 
           DISPLAY "--After --LINE:505--  CX00050" UPON CONSOLE
000000     MOVE ÇtÇqÇaÇ`ã∆é“ÉRÅ[Éh TO ÇfÇxÇrÇ`ã∆é“ÉRÅ[Éh                                          
000000         READ  ã∆é“Çe INVALID CONTINUE .                                     
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00051.                             
000000           DISPLAY "HBHUN551-25 VIGYOSYA READ ERROR ",                    
000000                     FL-STS1 " " FL-STS2                                  
000000           STOP RUN .                                                   
           DISPLAY "--Before --LINE:512--  CX00051" UPON CONSOLE
000000 CX00051.                                                                 
           DISPLAY "--After --LINE:514--  CX00051" UPON CONSOLE
000000     MOVE ÇvÇjÅ|îNìx TO ÇgÇbÇgÇmîNìx                                                 
000000     MOVE ÇfÇxÇrÇ`îÃîÑÉ`ÉÉÉlÉãÉRÅ[Éh TO ÇgÇbÇgÇmîÃîÑÉ`ÉÉÉlÉã                                     
000000     MOVE ÇvÇjÅ|ÉQÅ[ÉÄÇhÇc TO ÇgÇbÇgÇmÉQÅ[ÉÄÇhÇc                                           
000000         READ  ì˙ï îÃîÑÇbÇgï îÑè„ó›åvÇe ,                                             
000000                                  INVALID CONTINUE .                      
000000     IF NOT(FL-STS1 = "00") GO TO CX00052.                                 
000000     COMPUTE ÇgÇbÇgÇmîÑè„ã‡äz = ÇgÇbÇgÇmîÑè„ã‡äz + ÇvÇjÅ|îÑè„ã‡äz                                
000000           REWRITE ì˙ï îÃîÑÇbÇgï îÑè„ó›åvÇq ,                                         
000000                                    INVALID CONTINUE .                    
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00053.                             
000000             DISPLAY "HBHUN551-26 VIHCHNUR REWRITE ERROR ",               
000000                       FL-STS1 " " FL-STS2                                
000000             STOP RUN .                                                 
           DISPLAY "--Before --LINE:528--  CX00053" UPON CONSOLE
000000 CX00053.                                                                 
           DISPLAY "--After --LINE:530--  CX00053" UPON CONSOLE
000000     GO TO CX00054.                                                       
           DISPLAY "--Before --LINE:532--  CX00052" UPON CONSOLE
000000 CX00052. IF NOT(FL-STS1 = "23") GO TO CX00055.                            
           DISPLAY "--After --LINE:534--  CX00052" UPON CONSOLE
000000     MOVE ÇvÇjÅ|îNìx TO ÇgÇbÇgÇmîNìx                                                 
000000     MOVE ÇfÇxÇrÇ`îÃîÑÉ`ÉÉÉlÉãÉRÅ[Éh TO ÇgÇbÇgÇmîÃîÑÉ`ÉÉÉlÉã                                     
000000     MOVE ÇvÇjÅ|ÉQÅ[ÉÄÇhÇc TO ÇgÇbÇgÇmÉQÅ[ÉÄÇhÇc                                           
000000     MOVE ÇvÇjÅ|îÑè„ã‡äz TO ÇgÇbÇgÇmîÑè„ã‡äz                                             
000000     MOVE SPACE TO ÇgÇbÇgÇmó\îı                                                 
000000           WRITE ì˙ï îÃîÑÇbÇgï îÑè„ó›åvÇq ,                                           
000000                                    INVALID CONTINUE .                    
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00056.                             
000000             DISPLAY "HBHUN551-27 VIHCHNUR WRITE ERROR ",                 
000000                       FL-STS1 " " FL-STS2                                
000000             STOP RUN .                                                 
           DISPLAY "--Before --LINE:546--  CX00056" UPON CONSOLE
000000 CX00056.                                                                 
           DISPLAY "--After --LINE:548--  CX00056" UPON CONSOLE
000000     GO TO CX00054.                                                       
           DISPLAY "--Before --LINE:550--  CX00055" UPON CONSOLE
000000 CX00055.                                                                 
           DISPLAY "--After --LINE:552--  CX00055" UPON CONSOLE
000000           DISPLAY "HBHUN551-28 VIHCHNUR READ ERROR ",                    
000000                     FL-STS1 " " FL-STS2                                  
000000           STOP RUN .                                                   
           DISPLAY "--Before --LINE:556--  CX00054" UPON CONSOLE
000000 CX00054.                                                                 
           DISPLAY "--After --LINE:558--  CX00054" UPON CONSOLE
000000     COMPUTE CNT-COMMIT = CNT-COMMIT + 1 .                                
000000     IF NOT(ïœêîÇbÇnÇlÇlÇhÇsåèêî < CNT-COMMIT) GO TO CX00057.                        
000000           COMMIT                                                         
000000     MOVE 0 TO CNT-COMMIT .                                               
           DISPLAY "--Before --LINE:563--  CX00057" UPON CONSOLE
000000 CX00057.                                                                 
           DISPLAY "--After --LINE:565--  CX00057" UPON CONSOLE
000000     COMPUTE CNT-COMMIT = CNT-COMMIT + 1 .                                
000000     IF NOT(ïœêîÇbÇnÇlÇlÇhÇsåèêî < CNT-COMMIT) GO TO CX00058.                        
000000           COMMIT                                                         
000000     MOVE 0 TO CNT-COMMIT .                                               
           DISPLAY "--Before --LINE:570--  CX00058" UPON CONSOLE
000000 CX00058.                                                                 
           DISPLAY "--After --LINE:572--  CX00058" UPON CONSOLE
000000     MOVE ÇvÇtÇaÇtîÑèÍÉRÅ[Éh TO ÇvÇjÅ|îÑèÍÉRÅ[Éh                                           
000000     MOVE ÇvÇtÇaÇtÉQÅ[ÉÄÇhÇc TO ÇvÇjÅ|ÉQÅ[ÉÄÇhÇc                                           
000000     MOVE 0 TO ÇvÇjÅ|îÑè„ã‡äz .                                                  
000000     GO TO CX00039.                                                       
           DISPLAY "--Before --LINE:577--  CX00040" UPON CONSOLE
000000 CX00040.                                                                 
           DISPLAY "--After --LINE:579--  CX00040" UPON CONSOLE
000000 CX00005. EXIT.                                                           
000000 P200-RTN .                                                               
000000     PERFORM P210-RTN THRU CX00007 .                                      
000000     IF NOT(ÇvÇjÅ|ê¢ë„ãÊï™ = 1) GO TO CX00059.                                    
000000     MOVE 1 TO SUK-RKEY .                                                 
000000     GO TO CX00060.                                                       
           DISPLAY "--Before --LINE:586--  CX00059" UPON CONSOLE
000000 CX00059.                                                                 
           DISPLAY "--After --LINE:588--  CX00059" UPON CONSOLE
000000     MOVE 2 TO SUK-RKEY .                                                 
           DISPLAY "--Before --LINE:590--  CX00060" UPON CONSOLE
000000 CX00060.                                                                 
           DISPLAY "--After --LINE:592--  CX00060" UPON CONSOLE
000000       READ  ê¢ë„ï â^ópä«óùÇe INVALID CONTINUE .                                  
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00061.                             
000000         DISPLAY "HBHUN551-29 VRSEUNKN READ ERROR ",                      
000000                     FL-STS1 " " FL-STS2                                  
000000         STOP RUN .                                                     
           DISPLAY "--Before --LINE:598--  CX00061" UPON CONSOLE
000000 CX00061.                                                                 
           DISPLAY "--After --LINE:600--  CX00061" UPON CONSOLE
000000     MOVE 0 TO ÇdÇmÇcÅ|ÉQÅ[ÉÄèIóπèÛë‘ .                                              
000000     MOVE 1 TO ÇbÇmÇsÉQÅ[ÉÄèIóπèÛë‘ .                                               
           DISPLAY "--Before --LINE:603--  CX00062" UPON CONSOLE
000000 CX00062. IF NOT( (ÇdÇmÇcÅ|ÉQÅ[ÉÄèIóπèÛë‘ = 0) AND 
            (ÇbÇmÇsÉQÅ[ÉÄèIóπèÛë‘ <= 90)                
000000     ) GO TO CX00063.                                                      
           DISPLAY "--After --LINE:607--  CX00062" UPON CONSOLE
000000     IF NOT( (ÇrÇtÇjÇPÉQÅ[ÉÄÉ^ÉCÉv (ÇbÇmÇsÉQÅ[ÉÄèIóπèÛë‘) = 0) 
         AND (ÇrÇtÇjÇPÉuÉçÉbÉNÉRÅ[Éh (             
000000     ÇbÇmÇsÉQÅ[ÉÄèIóπèÛë‘) = 0) AND 
           (ÇrÇtÇjÇPâÒçÜ (ÇbÇmÇsÉQÅ[ÉÄèIóπèÛë‘) = 0)                       
000000     ) GO TO CX00064.                                                      
000000     MOVE 1 TO ÇdÇmÇcÅ|ÉQÅ[ÉÄèIóπèÛë‘ .                                              
000000     GO TO CX00065.                                                       
           DISPLAY "--Before --LINE:615--  CX00064" UPON CONSOLE
000000 CX00064.                                                                 
           DISPLAY "--After --LINE:617--  CX00064" UPON CONSOLE
000000     IF NOT(ÇrÇtÇjÇPÇfï íäÇπÇÒëŒè€Çr (ÇbÇmÇsÉQÅ[ÉÄèIóπèÛë‘) = 
           1) GO TO CX00066.                  
000000     PERFORM P220-RTN THRU CX00008 .                                      
           DISPLAY "--Before --LINE:621--  CX00066" UPON CONSOLE
000000 CX00066.                                                                 
           DISPLAY "--After --LINE:623--  CX00066" UPON CONSOLE
           DISPLAY "--Before --LINE:624--  CX00065" UPON CONSOLE
000000 CX00065.                                                                 
           DISPLAY "--After --LINE:626--  CX00065" UPON CONSOLE
000000     COMPUTE ÇbÇmÇsÉQÅ[ÉÄèIóπèÛë‘ = ÇbÇmÇsÉQÅ[ÉÄèIóπèÛë‘ + 1 .                                
000000     GO TO CX00062.                                                       
           DISPLAY "--Before --LINE:629--  CX00063" UPON CONSOLE
000000 CX00063.                                                                 
           DISPLAY "--After --LINE:631--  CX00063" UPON CONSOLE
000000 CX00006. EXIT.                                                           
000000 P210-RTN .                                                               
000000     MOVE 0 TO ÇdÇmÇcÅ|îÑè„ÇvÇe .                                                 
000000     MOVE 0 TO ÇbÇmÇsÅ|îÑè„ÇsÇaÇk .                                                
000000     MOVE LOW-VALUE TO ÇgÇbÇgÇmÉåÉRÅ[ÉhÉLÅ[ .                                       
000000       START ì˙ï îÃîÑÇbÇgï îÑè„ó›åvÇe KEY > ,                                         
000000                                      ÇgÇbÇgÇmÉåÉRÅ[ÉhÉLÅ[                          
000000             INVALID CONTINUE.                                            
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00067.                             
000000           DISPLAY "HBHUN551-30 VIHCHNUR START ERROR " ,                  
000000                       FL-STS1 " " FL-STS2                                
000000           STOP RUN .                                                   
           DISPLAY "--Before --LINE:644--  CX00067" UPON CONSOLE
000000 CX00067.                                                                 
           DISPLAY "--After --LINE:646--  CX00067" UPON CONSOLE
           DISPLAY "--Before --LINE:647--  CX00068" UPON CONSOLE
000000 CX00068. IF NOT(ÇdÇmÇcÅ|îÑè„ÇvÇe = 0) GO TO CX00069.                              
           DISPLAY "--After --LINE:649--  CX00068" UPON CONSOLE
000000         READ ì˙ï îÃîÑÇbÇgï îÑè„ó›åvÇe NEXT ,                                         
000000                          AT END MOVE 1 TO ÇdÇmÇcÅ|îÑè„ÇvÇe .                     
000000     IF NOT(FL-STS1 NOT = "00" AND "10") GO TO CX00070.                    
000000           DISPLAY "HBHUN551-31 VIHCHNUR READ ERROR " ,                   
000000                            FL-STS1 " " FL-STS2.                          
000000           STOP RUN .                                                   
           DISPLAY "--Before --LINE:656--  CX00070" UPON CONSOLE
000000 CX00070.                                                                 
           DISPLAY "--After --LINE:658--  CX00070" UPON CONSOLE
000000     IF NOT(ÇdÇmÇcÅ|îÑè„ÇvÇe = 0) GO TO CX00071.                                   
000000     COMPUTE ÇbÇmÇsÅ|îÑè„ÇsÇaÇk = ÇbÇmÇsÅ|îÑè„ÇsÇaÇk + 1                                    
000000     MOVE ÇgÇbÇgÇmîNìx TO Çsó›åvîNìx (ÇbÇmÇsÅ|îÑè„ÇsÇaÇk)                                     
000000     MOVE ÇgÇbÇgÇmîÃîÑÉ`ÉÉÉlÉã TO 
           Çsó›åvîÃîÑÉ`ÉÉÉlÉã (ÇbÇmÇsÅ|îÑè„ÇsÇaÇk)                             
000000     MOVE ÇgÇbÇgÇmÉQÅ[ÉÄÉ^ÉCÉv TO 
           Çsó›åvÉQÅ[ÉÄÉ^ÉCÉv (ÇbÇmÇsÅ|îÑè„ÇsÇaÇk)                             
000000     MOVE ÇgÇbÇgÇmÉuÉçÉbÉNÉRÅ[Éh TO 
           Çsó›åvÉuÉçÉbÉNÉRÅ[Éh (ÇbÇmÇsÅ|îÑè„ÇsÇaÇk)                           
000000     MOVE ÇgÇbÇgÇmâÒçÜ TO 
           Çsó›åvâÒçÜ (ÇbÇmÇsÅ|îÑè„ÇsÇaÇk)                                     
000000     MOVE ÇgÇbÇgÇmîÑè„ã‡äz TO Çsó›åvîÑè„ã‡äz (ÇbÇmÇsÅ|îÑè„ÇsÇaÇk) .                               
           DISPLAY "--Before --LINE:671--  CX00071" UPON CONSOLE
000000 CX00071.                                                                 
           DISPLAY "--After --LINE:673--  CX00071" UPON CONSOLE
000000     GO TO CX00068.                                                       
           DISPLAY "--Before --LINE:675--  CX00069" UPON CONSOLE
000000 CX00069.                                                                 
           DISPLAY "--After --LINE:677--  CX00069" UPON CONSOLE
000000     MOVE ÇbÇmÇsÅ|îÑè„ÇsÇaÇk TO ÇvÇjÅ|îÑè„ÇsÇaÇk .                                         
000000       COMMIT                                                             
000000       CLOSE ì˙ï îÃîÑÇbÇgï îÑè„ó›åvÇe.                                                
      *********
             DISPLAY "CLOSEED".
      *********
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00072.                             
000000         DISPLAY "HBHUN551-32 VIHCHNUR CLOSE ERROR " ,                    
000000                          FL-STS1 " " FL-STS2.                            
000000         STOP RUN .                                                     
           DISPLAY "--Before --LINE:688--  CX00072" UPON CONSOLE
000000 CX00072.                                                                 
           DISPLAY "--After --LINE:690--  CX00072" UPON CONSOLE
000000 CX00007. EXIT.                                                           
000000 P220-RTN .                                                               
000000     MOVE 1 TO ÇbÇmÇsÅ|îÑè„ÇsÇaÇk                                                  
000000     MOVE ZERO TO CNT-COMMIT .                                            
           DISPLAY "--Before --LINE:695--  CX00073" UPON CONSOLE
000000 CX00073. IF NOT(ÇbÇmÇsÅ|îÑè„ÇsÇaÇk <= 
           ÇvÇjÅ|îÑè„ÇsÇaÇk) GO TO CX00074.                     
           DISPLAY "--After --LINE:698--  CX00073" UPON CONSOLE
000000     IF NOT(ÇrÇtÇjÇPÉQÅ[ÉÄÇhÇc (ÇbÇmÇsÉQÅ[ÉÄèIóπèÛë‘) = 
            Çsó›åvÉQÅ[ÉÄÇhÇc (ÇbÇmÇsÅ|îÑè„ÇsÇaÇk)                 
000000     ) GO TO CX00075.                                                      
000000     MOVE Çsó›åvîNìx (ÇbÇmÇsÅ|îÑè„ÇsÇaÇk) TO ÇbÇgÇtÇqîNìx                                     
000000     MOVE Çsó›åvîÃîÑÉ`ÉÉÉlÉã (ÇbÇmÇsÅ|îÑè„ÇsÇaÇk) TO 
            ÇbÇgÇtÇqîÃîÑÉ`ÉÉÉlÉãÉRÅ[Éh                          
000000             READ îÃîÑÉ`ÉÉÉlÉãï îÑè„ó›åvÇe INVALID CONTINUE.                          
000000     IF NOT(FL-STS1 = "00") GO TO CX00076.                                 
000000     COMPUTE ÇbÇgÇtÇqîÑè„ã‡äz = ÇbÇgÇtÇqîÑè„ã‡äz + 
           Çsó›åvîÑè„ã‡äz (ÇbÇmÇsÅ|îÑè„ÇsÇaÇk)                    
000000                 REWRITE îÃîÑÉ`ÉÉÉlÉãï îÑè„ó›åvÇq ,                                   
000000                                     INVALID CONTINUE .                   
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00077.                             
000000                   DISPLAY "HBHUN551-33 VICHNURI REWRITE ERROR " ,        
000000                        FL-STS1 " " FL-STS2 UPON CONSOLE.                  
000000                   STOP RUN .                                           
           DISPLAY "--Before --LINE:715--  CX00077" UPON CONSOLE
000000 CX00077.                                                                 
           DISPLAY "--After --LINE:717--  CX00077" UPON CONSOLE
000000     GO TO CX00078.                                                       
           DISPLAY "--Before --LINE:719--  CX00076" UPON CONSOLE
000000 CX00076. IF NOT(FL-STS1 = "23") GO TO CX00079.                            
           DISPLAY "--After --LINE:721--  CX00076" UPON CONSOLE
000000     MOVE Çsó›åvîNìx (ÇbÇmÇsÅ|îÑè„ÇsÇaÇk) TO ÇbÇgÇtÇqîNìx                                     
000000     MOVE Çsó›åvîÃîÑÉ`ÉÉÉlÉã (ÇbÇmÇsÅ|îÑè„ÇsÇaÇk) TO 
           ÇbÇgÇtÇqîÃîÑÉ`ÉÉÉlÉãÉRÅ[Éh                          
000000     MOVE Çsó›åvîÑè„ã‡äz (ÇbÇmÇsÅ|îÑè„ÇsÇaÇk) TO ÇbÇgÇtÇqîÑè„ã‡äz                                 
000000                 WRITE îÃîÑÉ`ÉÉÉlÉãï îÑè„ó›åvÇq INVALID CONTINUE.                     
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00080.                             
000000                   DISPLAY "HBHUN551-34 VICHNURI WRITE ERROR " ,          
000000                        FL-STS1 " " FL-STS2 UPON CONSOLE.                  
000000                   STOP RUN .                                           
           DISPLAY "--Before --LINE:731--  CX00080" UPON CONSOLE
000000 CX00080.                                                                 
           DISPLAY "--After --LINE:733--  CX00080" UPON CONSOLE
000000     GO TO CX00078.                                                       
           DISPLAY "--Before --LINE:735--  CX00079" UPON CONSOLE
000000 CX00079.                                                                 
           DISPLAY "--After --LINE:737--  CX00079" UPON CONSOLE
000000                 DISPLAY "HBHUN551-35 VICHNURI READ ERROR " ,             
000000                        FL-STS1 " " FL-STS2 UPON CONSOLE.                  
000000                 STOP RUN .                                             
           DISPLAY "--Before --LINE:741--  CX00078" UPON CONSOLE
000000 CX00078.                                                                 
           DISPLAY "--After --LINE:743--  CX00078" UPON CONSOLE
000000     COMPUTE CNT-COMMIT = CNT-COMMIT + 1 .                                
000000     IF NOT(ïœêîÇbÇnÇlÇlÇhÇsåèêî < CNT-COMMIT) GO TO CX00081.                        
000000               COMMIT                                                     
000000     MOVE ZERO TO CNT-COMMIT .                                            
           DISPLAY "--Before --LINE:748--  CX00081" UPON CONSOLE
000000 CX00081.                                                                 
           DISPLAY "--After --LINE:750--  CX00081" UPON CONSOLE
000000     MOVE 0 TO Çsó›åvîNìx (ÇbÇmÇsÅ|îÑè„ÇsÇaÇk)                                          
000000     MOVE 0 TO Çsó›åvîÃîÑÉ`ÉÉÉlÉã (ÇbÇmÇsÅ|îÑè„ÇsÇaÇk)                                      
000000     MOVE 0 TO Çsó›åvÉQÅ[ÉÄÉ^ÉCÉv (ÇbÇmÇsÅ|îÑè„ÇsÇaÇk)                                      
000000     MOVE 0 TO Çsó›åvÉuÉçÉbÉNÉRÅ[Éh (ÇbÇmÇsÅ|îÑè„ÇsÇaÇk)                                     
000000     MOVE 0 TO Çsó›åvâÒçÜ (ÇbÇmÇsÅ|îÑè„ÇsÇaÇk)                                          
000000     MOVE 0 TO Çsó›åvîÑè„ã‡äz (ÇbÇmÇsÅ|îÑè„ÇsÇaÇk) .                                      
           DISPLAY "--Before --LINE:757--  CX00075" UPON CONSOLE
000000 CX00075.                                                                 
           DISPLAY "--After --LINE:759--  CX00075" UPON CONSOLE
000000     COMPUTE ÇbÇmÇsÅ|îÑè„ÇsÇaÇk = ÇbÇmÇsÅ|îÑè„ÇsÇaÇk + 1 .                                  
      *20141114í«â¡äJén
           IF ÇbÇmÇsÅ|îÑè„ÇsÇaÇk > 1500
               MOVE 1 TO ÇbÇmÇsÅ|îÑè„ÇsÇaÇk
               INITIALIZE Çsì˙ï îÃîÑÇbÇgï îÑè„ó›åv.
      *20141114í«â¡èIóπ
000000     GO TO CX00073.                                                       
           DISPLAY "--Before --LINE:767--  CX00074" UPON CONSOLE
000000 CX00074.                                                                 
           DISPLAY "--After --LINE:769--  CX00074" UPON CONSOLE
000000 CX00008. EXIT.                                                           
000000 P300-RTN .                                                               
000000       OPEN OUTPUT ì˙ï îÃîÑÇbÇgï îÑè„ó›åvÇe .                                         
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00082.                             
000000         DISPLAY "HBHUN551-36 VIHCHNUR OPEN ERROR " ,                     
000000                      FL-STS1 " " FL-STS2 UPON CONSOLE.                    
000000         STOP RUN .                                                     
           DISPLAY "--Before --LINE:777--  CX00082" UPON CONSOLE
000000 CX00082.                                                                 
           DISPLAY "--After --LINE:779--  CX00082" UPON CONSOLE
000000     MOVE 1 TO ÇbÇmÇsÅ|îÑè„ÇsÇaÇk                                                  
000000     MOVE 0 TO CNT-COMMIT .                                               
           DISPLAY "--Before --LINE:782--  CX00083" UPON CONSOLE
000000 CX00083. IF NOT( (ÇbÇmÇsÅ|îÑè„ÇsÇaÇk <= 
           ÇvÇjÅ|îÑè„ÇsÇaÇk)) GO TO CX00084.                  
           DISPLAY "--After --LINE:785--  CX00083" UPON CONSOLE
000000     IF NOT(Çsó›åvîNìx (ÇbÇmÇsÅ|îÑè„ÇsÇaÇk) = 0 AND 
           Çsó›åvîÃîÑÉ`ÉÉÉlÉã (ÇbÇmÇsÅ|îÑè„ÇsÇaÇk) = 0           
000000     AND Çsó›åvÉQÅ[ÉÄÉ^ÉCÉv (ÇbÇmÇsÅ|îÑè„ÇsÇaÇk) = 0 AND 
           Çsó›åvÉuÉçÉbÉNÉRÅ[Éh (ÇbÇmÇsÅ|îÑè„ÇsÇaÇk) =           
000000     0 AND Çsó›åvâÒçÜ (ÇbÇmÇsÅ|îÑè„ÇsÇaÇk) = 0 AND 
           Çsó›åvîÑè„ã‡äz (ÇbÇmÇsÅ|îÑè„ÇsÇaÇk) = 0              
000000     ) GO TO CX00085.                                                      
000000     GO TO CX00086.                                                       
           DISPLAY "--Before --LINE:794--  CX00085" UPON CONSOLE
000000 CX00085.                                                                 
           DISPLAY "--After --LINE:796--  CX00085" UPON CONSOLE
000000     MOVE Çsó›åvîNìx (ÇbÇmÇsÅ|îÑè„ÇsÇaÇk) TO ÇgÇbÇgÇmîNìx                                     
000000     MOVE Çsó›åvîÃîÑÉ`ÉÉÉlÉã (ÇbÇmÇsÅ|îÑè„ÇsÇaÇk) TO 
           ÇgÇbÇgÇmîÃîÑÉ`ÉÉÉlÉã                             
000000     MOVE Çsó›åvÉQÅ[ÉÄÉ^ÉCÉv (ÇbÇmÇsÅ|îÑè„ÇsÇaÇk) TO 
           ÇgÇbÇgÇmÉQÅ[ÉÄÉ^ÉCÉv                             
000000     MOVE Çsó›åvÉuÉçÉbÉNÉRÅ[Éh (ÇbÇmÇsÅ|îÑè„ÇsÇaÇk) TO 
           ÇgÇbÇgÇmÉuÉçÉbÉNÉRÅ[Éh                           
000000     MOVE Çsó›åvâÒçÜ (ÇbÇmÇsÅ|îÑè„ÇsÇaÇk) TO ÇgÇbÇgÇmâÒçÜ                                     
000000     MOVE Çsó›åvîÑè„ã‡äz (ÇbÇmÇsÅ|îÑè„ÇsÇaÇk) TO ÇgÇbÇgÇmîÑè„ã‡äz                                 
000000           WRITE ì˙ï îÃîÑÇbÇgï îÑè„ó›åvÇq INVALID CONTINUE.                           
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00087.                             
000000             DISPLAY "HBHUN551-37 VIHCHNUR WRITE ERROR " ,                
000000                          FL-STS1 " " FL-STS2 UPON CONSOLE.                
000000             STOP RUN .                                                 
           DISPLAY "--Before --LINE:811--  CX00087" UPON CONSOLE
000000 CX00087.                                                                 
           DISPLAY "--After --LINE:813--  CX00087" UPON CONSOLE
000000     COMPUTE CNT-COMMIT = CNT-COMMIT + 1 .                                
000000     IF NOT(ïœêîÇbÇnÇlÇlÇhÇsåèêî < CNT-COMMIT) GO TO CX00088.                        
000000             COMMIT                                                       
000000     MOVE 0 TO CNT-COMMIT .                                               
           DISPLAY "--Before --LINE:818--  CX00088" UPON CONSOLE
000000 CX00088.                                                                 
           DISPLAY "--After --LINE:820--  CX00088" UPON CONSOLE
           DISPLAY "--Before --LINE:821--  CX00086" UPON CONSOLE
000000 CX00086.                                                                 
           DISPLAY "--After --LINE:823--  CX00086" UPON CONSOLE
000000     COMPUTE ÇbÇmÇsÅ|îÑè„ÇsÇaÇk = ÇbÇmÇsÅ|îÑè„ÇsÇaÇk + 1 .                                  
      *20141114í«â¡äJén
           IF ÇbÇmÇsÅ|îÑè„ÇsÇaÇk > 1500
               MOVE 1 TO ÇbÇmÇsÅ|îÑè„ÇsÇaÇk
               INITIALIZE Çsì˙ï îÃîÑÇbÇgï îÑè„ó›åv.
      *20141114í«â¡èIóπ
000000     GO TO CX00083.                                                       
           DISPLAY "--Before --LINE:831--  CX00084" UPON CONSOLE
000000 CX00084.                                                                 
           DISPLAY "--After --LINE:833--  CX00084" UPON CONSOLE
000000 CX00009. EXIT.                                                           

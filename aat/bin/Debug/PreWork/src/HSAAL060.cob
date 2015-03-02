000000 IDENTIFICATION DIVISION.                                                 
000000 PROGRAM-ID. HSAAL060 .                                                   
000000 DATE-WRITTEN.                                                            
000000 DATE-COMPILED.                                                           
000000 ENVIRONMENT DIVISION.                                                    
000000 CONFIGURATION SECTION.                                                   
000000 SOURCE-COMPUTER.        ACOS.                                            
000000 OBJECT-COMPUTER.        ACOS.                                            
000000 DATA DIVISION.
      *20141028C³ŠJŽn
000000 LINKAGE SECTION.                                                         
000000 01  SRLC-PARAM.                                                          
000000     COPY CLSRLC .
      *20141028C³I—¹                                                   
000000 BASED SECTION.                                                           
000000 01  ‚v‚j|‚P‚UŒ…Ž¯•ÊƒR[ƒh  BASED  ON  ‚v‚j|‚P‚U‚o‚s‚q.                                    
000000    03  ‚v‚j|‚P‚UƒQ[ƒ€ƒ^ƒCƒv      PIC X(01).                                       
000000    03  ‚v‚j|‚P‚U¼—ï”N‰º‚PŒ…      PIC 9(01).                                       
000000    03  ‚v‚j|‚P‚U’ÊŽZ“ú            PIC 9(03).                                    
000000    03  ‚v‚j|‚P‚Uƒ`ƒFƒbƒNƒR[ƒh    PIC 9(01).                                        
000000    03  ‚v‚j|‚P‚Uƒ`ƒFƒbƒNƒfƒWƒbƒg  PIC 9(01).                                         
000000    03  ‚v‚j|‚P‚U‚e‚d‚o”Ô†        PIC X(01).                                      
000000    03  ‚v‚j|‚P‚U‚e‚d‚o“àˆê˜A”Ô†  PIC 9(08).                                         
000000 01  ‚v‚j|‚Q‚SŒ…Ž¯•ÊƒR[ƒh  BASED  ON  ‚v‚j|‚Q‚S‚o‚s‚q.                                    
000000    03  ‚v‚j|‚Q‚SƒQ[ƒ€ƒ^ƒCƒv      PIC X(02).                                       
000000    03  ‚v‚j|‚Q‚SƒuƒƒbƒNƒR[ƒh    PIC 9(03).                                        
000000    03  ‚v‚j|‚Q‚S—\”õ              PIC X(03).                                   
000000    03  ‚v‚j|‚Q‚S¼—ï”N‰º‚PŒ…      PIC 9(01).                                       
000000    03  ‚v‚j|‚Q‚S’ÊŽZ“ú            PIC 9(03).                                    
000000    03  ‚v‚j|‚Q‚Sƒ`ƒFƒbƒNƒR[ƒh    PIC 9(01).                                        
000000    03  ‚v‚j|‚Q‚Sƒ`ƒFƒbƒNƒfƒWƒbƒg  PIC 9(01).                                         
000000    03  ‚v‚j|‚Q‚S‚e‚d‚o”Ô†        PIC X(02).                                      
000000    03  ‚v‚j|‚Q‚S‚e‚d‚o“àˆê˜A”Ô†  PIC 9(08).                                                                                                 
000000 PROCEDURE DIVISION USING SRLC-PARAM .                                    
000000 MAIN-RTN .                                                               
000000     PERFORM S000-RTN THRU CX00002                                        
000000     PERFORM P000-RTN THRU CX00003 .                                      
000000 CX00001. EXIT PROGRAM.                                                   
           DISPLAY "CX00001" UPON CONSOLE
000000 S000-RTN .                                                               
000000     IF NOT(SRLC-MODE = "1")GO TO CX00007.                                
000000           SET  ‚v‚j|‚Q‚S‚o‚s‚q                                                  
000000                             TO  SRLC-SBCDBEF                             
000000           SET  ‚v‚j|‚P‚U‚o‚s‚q                                                  
000000                             TO  SRLC-SBCDAFT .                           
000000     GO TO CX00008.                                                       
000000 CX00007.                                                                 
           DISPLAY "CX00007" UPON CONSOLE
000000           SET  ‚v‚j|‚P‚U‚o‚s‚q                                                  
000000                             TO  SRLC-SBCDBEF                             
000000           SET  ‚v‚j|‚Q‚S‚o‚s‚q                                                  
000000                             TO  SRLC-SBCDAFT .                           
000000 CX00008.                                                                 
           DISPLAY "CX00008" UPON CONSOLE
000000 CX00002. EXIT.                                                           
000000 P000-RTN .                                                               
000000     IF NOT(SRLC-MODE = "1")GO TO CX00009.                                
000000     PERFORM P100-RTN THRU CX00004 .                                      
000000     GO TO CX00010.                                                       
000000 CX00009.                                                                 
           DISPLAY "CX00009" UPON CONSOLE
000000     PERFORM P200-RTN THRU CX00005 .                                      
000000 CX00010.                                                                 
           DISPLAY "CX00010" UPON CONSOLE
000000 CX00003. EXIT.                                                           
000000 P100-RTN .                                                               
000000     MOVE ‚v‚j|‚Q‚SƒQ[ƒ€ƒ^ƒCƒv (2:1) TO ‚v‚j|‚P‚UƒQ[ƒ€ƒ^ƒCƒv                                
000000     MOVE ‚v‚j|‚Q‚S¼—ï”N‰º‚PŒ… TO ‚v‚j|‚P‚U¼—ï”N‰º‚PŒ…                                      
000000     MOVE ‚v‚j|‚Q‚S’ÊŽZ“ú TO ‚v‚j|‚P‚U’ÊŽZ“ú                                            
000000     MOVE ‚v‚j|‚Q‚Sƒ`ƒFƒbƒNƒR[ƒh TO ‚v‚j|‚P‚Uƒ`ƒFƒbƒNƒR[ƒh                                    
000000     MOVE ‚v‚j|‚Q‚Sƒ`ƒFƒbƒNƒfƒWƒbƒg TO ‚v‚j|‚P‚Uƒ`ƒFƒbƒNƒfƒWƒbƒg                                  
000000     MOVE ‚v‚j|‚Q‚S‚e‚d‚o”Ô† (2:1) TO ‚v‚j|‚P‚U‚e‚d‚o”Ô†                                  
000000     MOVE ‚v‚j|‚Q‚S‚e‚d‚o“àˆê˜A”Ô† TO ‚v‚j|‚P‚U‚e‚d‚o“àˆê˜A”Ô† .                                
000000 CX00004. EXIT.                                                           
000000 P200-RTN .                                                               
000000     MOVE "0" TO ‚v‚j|‚Q‚SƒQ[ƒ€ƒ^ƒCƒv (1:1)                                        
000000     MOVE ‚v‚j|‚P‚UƒQ[ƒ€ƒ^ƒCƒv TO ‚v‚j|‚Q‚SƒQ[ƒ€ƒ^ƒCƒv (2:1) .                              
000000     IF NOT(‚v‚j|‚P‚UƒQ[ƒ€ƒ^ƒCƒv = 4)GO TO CX00011.                                
000000     MOVE 001 TO ‚v‚j|‚Q‚SƒuƒƒbƒNƒR[ƒh .                                           
000000     GO TO CX00012.                                                       
000000 CX00011.                                                                 
           DISPLAY "CX00011" UPON CONSOLE
000000     MOVE 000 TO ‚v‚j|‚Q‚SƒuƒƒbƒNƒR[ƒh .                                           
000000 CX00012.                                                                 
           DISPLAY "CX00012" UPON CONSOLE
000000     MOVE "000" TO ‚v‚j|‚Q‚S—\”õ                                                
000000     MOVE ‚v‚j|‚P‚U¼—ï”N‰º‚PŒ… TO ‚v‚j|‚Q‚S¼—ï”N‰º‚PŒ…                                      
000000     MOVE ‚v‚j|‚P‚U’ÊŽZ“ú TO ‚v‚j|‚Q‚S’ÊŽZ“ú                                            
000000     MOVE ‚v‚j|‚P‚Uƒ`ƒFƒbƒNƒR[ƒh TO ‚v‚j|‚Q‚Sƒ`ƒFƒbƒNƒR[ƒh                                    
000000     MOVE ‚v‚j|‚P‚Uƒ`ƒFƒbƒNƒfƒWƒbƒg TO ‚v‚j|‚Q‚Sƒ`ƒFƒbƒNƒfƒWƒbƒg                                  
000000     MOVE "0" TO ‚v‚j|‚Q‚S‚e‚d‚o”Ô† (1:1)                                         
000000     MOVE ‚v‚j|‚P‚U‚e‚d‚o”Ô† TO ‚v‚j|‚Q‚S‚e‚d‚o”Ô† (2:1)                                  
000000     MOVE ‚v‚j|‚P‚U‚e‚d‚o“àˆê˜A”Ô† TO ‚v‚j|‚Q‚S‚e‚d‚o“àˆê˜A”Ô† .                                
000000 CX00005. EXIT.                                                           

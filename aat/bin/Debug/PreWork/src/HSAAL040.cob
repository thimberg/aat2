000000 IDENTIFICATION DIVISION.                                                 
000000 PROGRAM-ID. HSAAL040 .                                                   
000000 DATE-WRITTEN.                                                            
000000 DATE-COMPILED.                                                           
000000 ENVIRONMENT DIVISION.                                                    
000000 CONFIGURATION SECTION.                                                   
000000 SOURCE-COMPUTER.        ACOS.                                            
000000 OBJECT-COMPUTER.        ACOS.                                            
000000 DATA DIVISION.
      *20141028í«â¡äJén 
       WORKING-STORAGE SECTION.
      *20141028í«â¡èIóπ                                                            
000000 01  AS-WORK.                                                             
000000   03  Ç`ÇrÅ|éØï ÉRÅ[Éh      PIC  9(10).                                          
000000   03  Ç`ÇrÅ|éØï ÉRÅ[ÉhÅ|Çq  REDEFINES                                              
000000                         Ç`ÇrÅ|éØï ÉRÅ[Éh.                                        
000000     05  FILLER              PIC  9(02).                                  
000000     05  Ç`ÇrÅ|êºóÔâ∫àÍåÖ    PIC  9(01).                                          
000000     05  Ç`ÇrÅ|í éZì˙        PIC  9(03).                                        
000000     05  FILLER              PIC  9(04).                                  
000000   03  Ç`ÇrÅ|äÓèÄì˙          PIC  9(08).                                        
000000   03  Ç`ÇrÅ|äÓèÄì˙Å|Çq      REDEFINES                                            
000000                         Ç`ÇrÅ|äÓèÄì˙.                                          
000000     05  Ç`ÇrÅ|äÓèÄì˙îNÇ`    PIC  9(03).                                          
000000     05  Ç`ÇrÅ|äÓèÄì˙îNÇa    PIC  9(01).                                          
000000     05  FILLER              PIC  9(04).                                  
000000   03  Ç`ÇrÅ|êºóÔîNåéì˙.                                                          
000000     05  Ç`ÇrÅ|êºóÔîN        PIC  9(04).                                        
000000     05  Ç`ÇrÅ|êºóÔåé        PIC  9(02).                                        
000000     05  Ç`ÇrÅ|êºóÔì˙        PIC  9(02).                                        
000000   03  â[îNÉRÅ[Éh            PIC  9(01).                                       
000000   03  â[îNè§                PIC  9(03).                                     
000000   03  â[îNó]                PIC  9(03).                                     
000000   03  M-CNT                 PIC  9(02).                                  
000000 01  CNS.                                                                 
000000   03  í éZì˙ÉfÅ[É^ÇP      VALUE  "000031059090120151181212243273"               
000000-                                  "304334365999".                        
000000     05  ïΩîNÉeÅ[ÉuÉã        PIC  9(03)  OCCURS  14.                            
000000   03  í éZì˙ÉfÅ[É^ÇQ      VALUE  "000031060091121152182213244274"               
000000-                                  "305335366999".                        
000000     05  â[îNÉeÅ[ÉuÉã        PIC  9(03)  OCCURS  14.                            
000000 LINKAGE SECTION.                                                         
000000 01  ZDTDTCMP-PARAM.                                                      
000000   03  ZDTDTCMP-TICKETNO   COMP-2.                                        
000000   03  ZDTDTCMP-BASEDATE   PIC  9(08).                                    
000000   03  ZDTDTCMP-YYYYMMDD   PIC  9(08).                                    
000000 PROCEDURE DIVISION USING ZDTDTCMP-PARAM .                                
000000 MAIN-RTN .                                                               
000000     PERFORM S000-RTN THRU CX00002                                        
000000     PERFORM P000-RTN THRU CX00003                                        
000000     PERFORM E000-RTN THRU CX00004 .                                      
000000 CX00001. EXIT PROGRAM.                                                   
           DISPLAY "CX00001" UPON CONSOLE
000000 S000-RTN .                                                               
000000     MOVE ZDTDTCMP-TICKETNO TO Ç`ÇrÅ|éØï ÉRÅ[Éh                                   
000000     MOVE ZDTDTCMP-BASEDATE TO Ç`ÇrÅ|äÓèÄì˙                                     
000000     MOVE 1 TO M-CNT .                                                    
000000 CX00002. EXIT.                                                           
000000 P000-RTN .                                                               
000000     PERFORM P100-RTN THRU CX00005                                        
000000     PERFORM P200-RTN THRU CX00006                                        
000000     PERFORM P300-RTN THRU CX00007 .                                      
000000 CX00003. EXIT.                                                           
000000 E000-RTN .                                                               
000000     MOVE Ç`ÇrÅ|êºóÔîNåéì˙ TO ZDTDTCMP-YYYYMMDD .                                 
000000 CX00004. EXIT.                                                           
000000 P100-RTN .                                                               
000000     IF NOT(Ç`ÇrÅ|êºóÔâ∫àÍåÖ > Ç`ÇrÅ|äÓèÄì˙îNÇa)GO TO CX00009.                            
000000     COMPUTE Ç`ÇrÅ|äÓèÄì˙îNÇ` = Ç`ÇrÅ|äÓèÄì˙îNÇ` - 1 .                                    
000000 CX00009.                                                                 
           DISPLAY "CX00009" UPON CONSOLE
000000     COMPUTE Ç`ÇrÅ|êºóÔîN = Ç`ÇrÅ|äÓèÄì˙îNÇ` * 10                                       
000000                      +  Ç`ÇrÅ|êºóÔâ∫àÍåÖ .                                       
000000 CX00005. EXIT.                                                           
000000 P200-RTN .                                                               
000000       DIVIDE  Ç`ÇrÅ|êºóÔîN  BY  400  GIVING  â[îNè§                               
000000                           REMAINDER  â[îNó] .                               
000000     IF NOT(â[îNó] = 0)GO TO CX00010.                                        
000000     MOVE 1 TO â[îNÉRÅ[Éh .                                                    
000000     GO TO CX00011.                                                       
000000 CX00010.                                                                 
           DISPLAY "CX00010" UPON CONSOLE
000000         DIVIDE  Ç`ÇrÅ|êºóÔîN  BY  100  GIVING  â[îNè§                             
000000                             REMAINDER  â[îNó] .                             
000000     IF NOT(â[îNó] = 0)GO TO CX00012.                                        
000000     MOVE 0 TO â[îNÉRÅ[Éh .                                                    
000000     GO TO CX00013.                                                       
000000 CX00012.                                                                 
           DISPLAY "CX00012" UPON CONSOLE
000000            DIVIDE  Ç`ÇrÅ|êºóÔîN  BY  4  GIVING  â[îNè§                            
000000                                REMAINDER  â[îNó] .                          
000000     IF NOT(â[îNó] = 0)GO TO CX00014.                                        
000000     MOVE 1 TO â[îNÉRÅ[Éh .                                                    
000000     GO TO CX00015.                                                       
000000 CX00014.                                                                 
           DISPLAY "CX00014" UPON CONSOLE
000000     MOVE 0 TO â[îNÉRÅ[Éh .                                                    
000000 CX00015.                                                                 
           DISPLAY "CX00015" UPON CONSOLE
000000 CX00013.                                                                 
           DISPLAY "CX00013" UPON CONSOLE
000000 CX00011.                                                                 
           DISPLAY "CX00011" UPON CONSOLE
000000 CX00006. EXIT.                                                           
000000 P300-RTN .                                                               
000000     IF NOT(Ç`ÇrÅ|í éZì˙ > 500)GO TO CX00016.                                   
000000     COMPUTE Ç`ÇrÅ|í éZì˙ = Ç`ÇrÅ|í éZì˙ - 500 .                                      
000000 CX00016.                                                                 
           DISPLAY "CX00016" UPON CONSOLE
000000     IF NOT(â[îNÉRÅ[Éh = 0)GO TO CX00017.                                      
000000 CX00018. IF NOT(Ç`ÇrÅ|í éZì˙ > ïΩîNÉeÅ[ÉuÉã (M-CNT))GO TO CX00019.                   
           DISPLAY "CX00018" UPON CONSOLE
000000     COMPUTE M-CNT = M-CNT + 1 .                                          
000000     GO TO CX00018.                                                       
000000 CX00019.                                                                 
           DISPLAY "CX00019" UPON CONSOLE
000000     COMPUTE Ç`ÇrÅ|êºóÔåé = M-CNT - 1                                           
000000     COMPUTE Ç`ÇrÅ|êºóÔì˙ = Ç`ÇrÅ|í éZì˙ - ïΩîNÉeÅ[ÉuÉã (Ç`ÇrÅ|êºóÔåé) .                          
000000     GO TO CX00020.                                                       
000000 CX00017.                                                                 
           DISPLAY "CX00017" UPON CONSOLE
000000 CX00021. IF NOT(Ç`ÇrÅ|í éZì˙ > â[îNÉeÅ[ÉuÉã (M-CNT))GO TO CX00022.                   
           DISPLAY "CX00021" UPON CONSOLE
000000     COMPUTE M-CNT = M-CNT + 1 .                                          
000000     GO TO CX00021.                                                       
000000 CX00022.                                                                 
           DISPLAY "CX00022" UPON CONSOLE
000000     COMPUTE Ç`ÇrÅ|êºóÔåé = M-CNT - 1                                           
000000     COMPUTE Ç`ÇrÅ|êºóÔì˙ = Ç`ÇrÅ|í éZì˙ - â[îNÉeÅ[ÉuÉã (Ç`ÇrÅ|êºóÔåé) .                          
000000 CX00020.                                                                 
           DISPLAY "CX00020" UPON CONSOLE
000000 CX00007. EXIT.                                                           

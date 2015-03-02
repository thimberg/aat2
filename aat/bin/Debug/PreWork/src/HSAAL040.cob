000000 IDENTIFICATION DIVISION.                                                 
000000 PROGRAM-ID. HSAAL040 .                                                   
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
000000 01  AS-WORK.                                                             
000000   03  �`�r�|���ʃR�[�h      PIC  9(10).                                          
000000   03  �`�r�|���ʃR�[�h�|�q  REDEFINES                                              
000000                         �`�r�|���ʃR�[�h.                                        
000000     05  FILLER              PIC  9(02).                                  
000000     05  �`�r�|����ꌅ    PIC  9(01).                                          
000000     05  �`�r�|�ʎZ��        PIC  9(03).                                        
000000     05  FILLER              PIC  9(04).                                  
000000   03  �`�r�|���          PIC  9(08).                                        
000000   03  �`�r�|����|�q      REDEFINES                                            
000000                         �`�r�|���.                                          
000000     05  �`�r�|����N�`    PIC  9(03).                                          
000000     05  �`�r�|����N�a    PIC  9(01).                                          
000000     05  FILLER              PIC  9(04).                                  
000000   03  �`�r�|����N����.                                                          
000000     05  �`�r�|����N        PIC  9(04).                                        
000000     05  �`�r�|���        PIC  9(02).                                        
000000     05  �`�r�|�����        PIC  9(02).                                        
000000   03  �[�N�R�[�h            PIC  9(01).                                       
000000   03  �[�N��                PIC  9(03).                                     
000000   03  �[�N�]                PIC  9(03).                                     
000000   03  M-CNT                 PIC  9(02).                                  
000000 01  CNS.                                                                 
000000   03  �ʎZ���f�[�^�P      VALUE  "000031059090120151181212243273"               
000000-                                  "304334365999".                        
000000     05  ���N�e�[�u��        PIC  9(03)  OCCURS  14.                            
000000   03  �ʎZ���f�[�^�Q      VALUE  "000031060091121152182213244274"               
000000-                                  "305335366999".                        
000000     05  �[�N�e�[�u��        PIC  9(03)  OCCURS  14.                            
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
000000     MOVE ZDTDTCMP-TICKETNO TO �`�r�|���ʃR�[�h                                   
000000     MOVE ZDTDTCMP-BASEDATE TO �`�r�|���                                     
000000     MOVE 1 TO M-CNT .                                                    
000000 CX00002. EXIT.                                                           
000000 P000-RTN .                                                               
000000     PERFORM P100-RTN THRU CX00005                                        
000000     PERFORM P200-RTN THRU CX00006                                        
000000     PERFORM P300-RTN THRU CX00007 .                                      
000000 CX00003. EXIT.                                                           
000000 E000-RTN .                                                               
000000     MOVE �`�r�|����N���� TO ZDTDTCMP-YYYYMMDD .                                 
000000 CX00004. EXIT.                                                           
000000 P100-RTN .                                                               
000000     IF NOT(�`�r�|����ꌅ > �`�r�|����N�a)GO TO CX00009.                            
000000     COMPUTE �`�r�|����N�` = �`�r�|����N�` - 1 .                                    
000000 CX00009.                                                                 
           DISPLAY "CX00009" UPON CONSOLE
000000     COMPUTE �`�r�|����N = �`�r�|����N�` * 10                                       
000000                      +  �`�r�|����ꌅ .                                       
000000 CX00005. EXIT.                                                           
000000 P200-RTN .                                                               
000000       DIVIDE  �`�r�|����N  BY  400  GIVING  �[�N��                               
000000                           REMAINDER  �[�N�] .                               
000000     IF NOT(�[�N�] = 0)GO TO CX00010.                                        
000000     MOVE 1 TO �[�N�R�[�h .                                                    
000000     GO TO CX00011.                                                       
000000 CX00010.                                                                 
           DISPLAY "CX00010" UPON CONSOLE
000000         DIVIDE  �`�r�|����N  BY  100  GIVING  �[�N��                             
000000                             REMAINDER  �[�N�] .                             
000000     IF NOT(�[�N�] = 0)GO TO CX00012.                                        
000000     MOVE 0 TO �[�N�R�[�h .                                                    
000000     GO TO CX00013.                                                       
000000 CX00012.                                                                 
           DISPLAY "CX00012" UPON CONSOLE
000000            DIVIDE  �`�r�|����N  BY  4  GIVING  �[�N��                            
000000                                REMAINDER  �[�N�] .                          
000000     IF NOT(�[�N�] = 0)GO TO CX00014.                                        
000000     MOVE 1 TO �[�N�R�[�h .                                                    
000000     GO TO CX00015.                                                       
000000 CX00014.                                                                 
           DISPLAY "CX00014" UPON CONSOLE
000000     MOVE 0 TO �[�N�R�[�h .                                                    
000000 CX00015.                                                                 
           DISPLAY "CX00015" UPON CONSOLE
000000 CX00013.                                                                 
           DISPLAY "CX00013" UPON CONSOLE
000000 CX00011.                                                                 
           DISPLAY "CX00011" UPON CONSOLE
000000 CX00006. EXIT.                                                           
000000 P300-RTN .                                                               
000000     IF NOT(�`�r�|�ʎZ�� > 500)GO TO CX00016.                                   
000000     COMPUTE �`�r�|�ʎZ�� = �`�r�|�ʎZ�� - 500 .                                      
000000 CX00016.                                                                 
           DISPLAY "CX00016" UPON CONSOLE
000000     IF NOT(�[�N�R�[�h = 0)GO TO CX00017.                                      
000000 CX00018. IF NOT(�`�r�|�ʎZ�� > ���N�e�[�u�� (M-CNT))GO TO CX00019.                   
           DISPLAY "CX00018" UPON CONSOLE
000000     COMPUTE M-CNT = M-CNT + 1 .                                          
000000     GO TO CX00018.                                                       
000000 CX00019.                                                                 
           DISPLAY "CX00019" UPON CONSOLE
000000     COMPUTE �`�r�|��� = M-CNT - 1                                           
000000     COMPUTE �`�r�|����� = �`�r�|�ʎZ�� - ���N�e�[�u�� (�`�r�|���) .                          
000000     GO TO CX00020.                                                       
000000 CX00017.                                                                 
           DISPLAY "CX00017" UPON CONSOLE
000000 CX00021. IF NOT(�`�r�|�ʎZ�� > �[�N�e�[�u�� (M-CNT))GO TO CX00022.                   
           DISPLAY "CX00021" UPON CONSOLE
000000     COMPUTE M-CNT = M-CNT + 1 .                                          
000000     GO TO CX00021.                                                       
000000 CX00022.                                                                 
           DISPLAY "CX00022" UPON CONSOLE
000000     COMPUTE �`�r�|��� = M-CNT - 1                                           
000000     COMPUTE �`�r�|����� = �`�r�|�ʎZ�� - �[�N�e�[�u�� (�`�r�|���) .                          
000000 CX00020.                                                                 
           DISPLAY "CX00020" UPON CONSOLE
000000 CX00007. EXIT.                                                           

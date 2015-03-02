000000 IDENTIFICATION DIVISION.                                                 
000000 PROGRAM-ID. HSAAL060 .                                                   
000000 DATE-WRITTEN.                                                            
000000 DATE-COMPILED.                                                           
000000 ENVIRONMENT DIVISION.                                                    
000000 CONFIGURATION SECTION.                                                   
000000 SOURCE-COMPUTER.        ACOS.                                            
000000 OBJECT-COMPUTER.        ACOS.                                            
000000 DATA DIVISION.
      *20141028�C���J�n
000000 LINKAGE SECTION.                                                         
000000 01  SRLC-PARAM.                                                          
000000     COPY CLSRLC .
      *20141028�C���I��                                                   
000000 BASED SECTION.                                                           
000000 01  �v�j�|�P�U�����ʃR�[�h  BASED  ON  �v�j�|�P�U�o�s�q.                                    
000000    03  �v�j�|�P�U�Q�[���^�C�v      PIC X(01).                                       
000000    03  �v�j�|�P�U����N���P��      PIC 9(01).                                       
000000    03  �v�j�|�P�U�ʎZ��            PIC 9(03).                                    
000000    03  �v�j�|�P�U�`�F�b�N�R�[�h    PIC 9(01).                                        
000000    03  �v�j�|�P�U�`�F�b�N�f�W�b�g  PIC 9(01).                                         
000000    03  �v�j�|�P�U�e�d�o�ԍ�        PIC X(01).                                      
000000    03  �v�j�|�P�U�e�d�o����A�ԍ�  PIC 9(08).                                         
000000 01  �v�j�|�Q�S�����ʃR�[�h  BASED  ON  �v�j�|�Q�S�o�s�q.                                    
000000    03  �v�j�|�Q�S�Q�[���^�C�v      PIC X(02).                                       
000000    03  �v�j�|�Q�S�u���b�N�R�[�h    PIC 9(03).                                        
000000    03  �v�j�|�Q�S�\��              PIC X(03).                                   
000000    03  �v�j�|�Q�S����N���P��      PIC 9(01).                                       
000000    03  �v�j�|�Q�S�ʎZ��            PIC 9(03).                                    
000000    03  �v�j�|�Q�S�`�F�b�N�R�[�h    PIC 9(01).                                        
000000    03  �v�j�|�Q�S�`�F�b�N�f�W�b�g  PIC 9(01).                                         
000000    03  �v�j�|�Q�S�e�d�o�ԍ�        PIC X(02).                                      
000000    03  �v�j�|�Q�S�e�d�o����A�ԍ�  PIC 9(08).                                                                                                 
000000 PROCEDURE DIVISION USING SRLC-PARAM .                                    
000000 MAIN-RTN .                                                               
000000     PERFORM S000-RTN THRU CX00002                                        
000000     PERFORM P000-RTN THRU CX00003 .                                      
000000 CX00001. EXIT PROGRAM.                                                   
           DISPLAY "CX00001" UPON CONSOLE
000000 S000-RTN .                                                               
000000     IF NOT(SRLC-MODE = "1")GO TO CX00007.                                
000000           SET  �v�j�|�Q�S�o�s�q                                                  
000000                             TO  SRLC-SBCDBEF                             
000000           SET  �v�j�|�P�U�o�s�q                                                  
000000                             TO  SRLC-SBCDAFT .                           
000000     GO TO CX00008.                                                       
000000 CX00007.                                                                 
           DISPLAY "CX00007" UPON CONSOLE
000000           SET  �v�j�|�P�U�o�s�q                                                  
000000                             TO  SRLC-SBCDBEF                             
000000           SET  �v�j�|�Q�S�o�s�q                                                  
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
000000     MOVE �v�j�|�Q�S�Q�[���^�C�v (2:1) TO �v�j�|�P�U�Q�[���^�C�v                                
000000     MOVE �v�j�|�Q�S����N���P�� TO �v�j�|�P�U����N���P��                                      
000000     MOVE �v�j�|�Q�S�ʎZ�� TO �v�j�|�P�U�ʎZ��                                            
000000     MOVE �v�j�|�Q�S�`�F�b�N�R�[�h TO �v�j�|�P�U�`�F�b�N�R�[�h                                    
000000     MOVE �v�j�|�Q�S�`�F�b�N�f�W�b�g TO �v�j�|�P�U�`�F�b�N�f�W�b�g                                  
000000     MOVE �v�j�|�Q�S�e�d�o�ԍ� (2:1) TO �v�j�|�P�U�e�d�o�ԍ�                                  
000000     MOVE �v�j�|�Q�S�e�d�o����A�ԍ� TO �v�j�|�P�U�e�d�o����A�ԍ� .                                
000000 CX00004. EXIT.                                                           
000000 P200-RTN .                                                               
000000     MOVE "0" TO �v�j�|�Q�S�Q�[���^�C�v (1:1)                                        
000000     MOVE �v�j�|�P�U�Q�[���^�C�v TO �v�j�|�Q�S�Q�[���^�C�v (2:1) .                              
000000     IF NOT(�v�j�|�P�U�Q�[���^�C�v = 4)GO TO CX00011.                                
000000     MOVE 001 TO �v�j�|�Q�S�u���b�N�R�[�h .                                           
000000     GO TO CX00012.                                                       
000000 CX00011.                                                                 
           DISPLAY "CX00011" UPON CONSOLE
000000     MOVE 000 TO �v�j�|�Q�S�u���b�N�R�[�h .                                           
000000 CX00012.                                                                 
           DISPLAY "CX00012" UPON CONSOLE
000000     MOVE "000" TO �v�j�|�Q�S�\��                                                
000000     MOVE �v�j�|�P�U����N���P�� TO �v�j�|�Q�S����N���P��                                      
000000     MOVE �v�j�|�P�U�ʎZ�� TO �v�j�|�Q�S�ʎZ��                                            
000000     MOVE �v�j�|�P�U�`�F�b�N�R�[�h TO �v�j�|�Q�S�`�F�b�N�R�[�h                                    
000000     MOVE �v�j�|�P�U�`�F�b�N�f�W�b�g TO �v�j�|�Q�S�`�F�b�N�f�W�b�g                                  
000000     MOVE "0" TO �v�j�|�Q�S�e�d�o�ԍ� (1:1)                                         
000000     MOVE �v�j�|�P�U�e�d�o�ԍ� TO �v�j�|�Q�S�e�d�o�ԍ� (2:1)                                  
000000     MOVE �v�j�|�P�U�e�d�o����A�ԍ� TO �v�j�|�Q�S�e�d�o����A�ԍ� .                                
000000 CX00005. EXIT.                                                           

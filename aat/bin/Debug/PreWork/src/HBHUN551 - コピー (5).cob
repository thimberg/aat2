000000 IDENTIFICATION DIVISION.                                                 
000000 PROGRAM-ID. HBHUN551 .                                                   
000000 DATE-WRITTEN.                                                            
000000 DATE-COMPILED.                                                           
000000 ENVIRONMENT DIVISION.                                                    
000000 CONFIGURATION SECTION.                                                   
000000 SOURCE-COMPUTER.        ACOS.                                            
000000 OBJECT-COMPUTER.        ACOS.                                            
      *20141114�C���J�n
000000* SPECIAL-NAMES.                                                           
000000*     ITG005  IS  SPCOMMIT.                                                
      *20141114�C���I��
000000 INPUT-OUTPUT SECTION.                                                     
000000 FILE-CONTROL.                                                            
000000     SELECT �^�p�Ǘ��e                                                         
000000                  ASSIGN             VRUNYKAN-MSD                             
000000                  ORGANIZATION       IS  RELATIVE                       
000000                  ACCESS             RANDOM                               
000000                  RELATIVE           UNK-RKEY                             
000000*                  FILE STATUS          FL-STS1  FL-STS2.                   
000000                  FILE STATUS          FL-STS1.                   
000000     SELECT ����ʉ^�p�Ǘ��e                                                      
000000                  ASSIGN             VRSEUNKN-MSD                             
000000                  ORGANIZATION       IS  RELATIVE                       
000000                  ACCESS             RANDOM                               
000000                  RELATIVE           SUK-RKEY                             
000000*                  FILE STATUS          FL-STS1  FL-STS2.                   
000000                  FILE STATUS          FL-STS1.                   
000000     SELECT �����J�n�Q�[���e�|�`                                                    
000000                  ASSIGN             VIKASGMA-MSD                             
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       RANDOM                               
000000                  RECORD  KEY        �j�`�f�l�Q�[���h�c                            
000000*                  FILE STATUS          FL-STS1  FL-STS2.                   
000000                  FILE STATUS          FL-STS1.                   
000000     SELECT �����J�n�Q�[���e�|�a                                                    
000000                  ASSIGN             VIKASGMB-MSD                             
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       RANDOM                               
000000                  RECORD  KEY        �j�`�f�l�a�Q�[���h�c                           
000000*                  FILE STATUS          FL-STS1  FL-STS2.                   
000000                  FILE STATUS          FL-STS1.                   
000000     SELECT ���ʔ̔��b�g�ʔ��ꔄ��v�e                                                 
000000                  ASSIGN             SQWHURCH-MSD                             
000000                  ORGANIZATION       SEQUENTIAL                           
000000                  ACCESS  MODE       SEQUENTIAL                           
000000*                  FILE STATUS          FL-STS1  FL-STS2.                   
000000                  FILE STATUS          FL-STS1.                   
000000     SELECT ����e                                                           
000000                  ASSIGN             VIURIBA-MSD                              
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       RANDOM                               
000000                  RECORD  KEY        �t�q�a�`����R�[�h                            
000000*                  FILE STATUS          FL-STS1  FL-STS2.                   
000000                  FILE STATUS          FL-STS1.                   
000000     SELECT �Ǝ҂e                                                           
000000                  ASSIGN             VIGYOSYA-MSD                             
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       RANDOM                               
000000                  RECORD  KEY        �f�x�r�`�Ǝ҃R�[�h�w                            
000000*                  FILE STATUS          FL-STS1  FL-STS2.                   
000000                  FILE STATUS          FL-STS1.                   
000000     SELECT ���ʔ̔��b�g�ʔ���݌v�e                                                  
000000                  ASSIGN             VIHCHNUR-MSD                             
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       DYNAMIC                              
000000                  RECORD  KEY        �g�b�g�m���R�[�h�L�[                           
000000*                  FILE STATUS          FL-STS1  FL-STS2.                   
000000                  FILE STATUS          FL-STS1.                   
000000     SELECT �̔��`���l���ʔ���݌v�e                                                  
000000                  ASSIGN             VICHNURI-MSD                             
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       RANDOM                               
000000                  RECORD  KEY        �b�g�t�q���R�[�h�L�[                           
000000*                  FILE STATUS          FL-STS1  FL-STS2.                   
000000                  FILE STATUS          FL-STS1.                   
000000 DATA DIVISION.                                                           
000000 FILE SECTION.                                                            
000000 FD  ���ʔ̔��b�g�ʔ��ꔄ��v�e                                                        
000000     LABEL RECORD STANDARD                                               
      *20141114�ǉ��J�n
           VALUE  OF IDENTIFICATION IS "SQWHURCH".
      *20141114�ǉ��I��
000000 01  ���ʔ̔��b�g�ʔ��ꔄ��v�q.                                                       
000000     COPY CFWUBU .                                                        
000000 FD  �����J�n�Q�[���e�|�`                                                           
000000     LABEL RECORD STANDARD                                               
      *20141114�ǉ��J�n
           VALUE  OF IDENTIFICATION IS "VIKASGMA".
      *20141114�ǉ��I��
000000 01  �����J�n�Q�[���q�|�`.                                                          
000000     COPY CFKAGM .                                                        
000000 FD  �����J�n�Q�[���e�|�a                                                           
000000     LABEL RECORD STANDARD                                               
      *20141114�ǉ��J�n
           VALUE  OF IDENTIFICATION IS "VIKASGMB".
      *20141114�ǉ��I��
000000 01  �����J�n�Q�[���q�|�a.                                                          
000000     COPY CFKAGM REPLACING                                                
000000                 //�j�`�f�l//  BY  //�j�`�f�l�a// .                                
000000 FD  �^�p�Ǘ��e                                                                
      *20141114�C���J�n                                                          
000000*     RECORD  VARYING  IN  SIZE
           LABEL RECORD STANDARD
      *20141114�C���I��
      *20141114�ǉ��J�n
           VALUE  OF IDENTIFICATION IS "VRUNYKAN".
      *20141114�ǉ��I��
000000* 01  �^�p�Ǘ��q�Q.                                                              
000000*     COPY CFUNK2 .                                                        
000000 01  �^�p�Ǘ��q�P.                                                              
000000     COPY CFUNK1 .                                                        
000000* 01  �^�p�Ǘ��q�R.                                                              
000000*     COPY CFUNK3 .                                                        
000000 FD  ����ʉ^�p�Ǘ��e                                                             
      *20141114�C���J�n                                                          
000000*     RECORD  VARYING  IN  SIZE
           LABEL RECORD STANDARD
      *20141114�C���I��
      *20141114�ǉ��J�n
           VALUE  OF IDENTIFICATION IS "VRSEUNKN".
      *20141114�ǉ��I��
000000 01  ����ʉ^�p�Ǘ��q.                                                            
000000     COPY CFSUK1 .                                                        
000000 FD  �Ǝ҂e                                                                  
000000     LABEL RECORD STANDARD                                               
      *20141114�ǉ��J�n
           VALUE  OF IDENTIFICATION IS "VIGYOSYA".
      *20141114�ǉ��I��
000000 01  �Ǝ҂q.                                                                 
000000     COPY CFGYSA .                                                        
000000 FD  ����e                                                                  
000000     LABEL RECORD STANDARD                                               
      *20141114�ǉ��J�n
           VALUE  OF IDENTIFICATION IS "VIURIBA".
      *20141114�ǉ��I��
000000 01  ����q.                                                                 
000000     COPY CFURBA .                                                        
000000 FD  ���ʔ̔��b�g�ʔ���݌v�e                                                         
000000     LABEL RECORD STANDARD                                               
      *20141114�ǉ��J�n
           VALUE  OF IDENTIFICATION IS "VIHCHNUR".
      *20141114�ǉ��I��
000000 01  ���ʔ̔��b�g�ʔ���݌v�q.                                                        
000000     COPY CFHCHN .                                                        
000000 FD  �̔��`���l���ʔ���݌v�e                                                         
000000     LABEL RECORD STANDARD                                               
      *20141114�ǉ��J�n
           VALUE  OF IDENTIFICATION IS "VICHNURI".
      *20141114�ǉ��I��
000000 01  �̔��`���l���ʔ���݌v�q.                                                        
000000     COPY CFCHUR .                                                        
000000 WORKING-STORAGE SECTION.                                                 
000000 01  ��ƃG���A.                                                               
000000   03  �v�j�|������z               PIC 9(13)  USAGE  COMP-3.                    
000000   03  �v�j�|����敪               PIC 9(01).                                   
000000   03  �v�j�|�N�x                   PIC 9(04).                                 
000000   03  �v�j�|�o�b�`�Ɩ����t         PIC 9(08).                                      
000000   03  �v�j�|����R�[�h             PIC X(06).                                    
000000   03  �v�j�|�Q�[���h�c.                                                          
000000     05  �v�j�|�Q�[���^�C�v         PIC 9(02).                                     
000000     05  �v�j�|�u���b�N�R�[�h       USAGE COMP-1.                                   
000000     05  �v�j�|��                 USAGE COMP-1.                              
000000   03  �v�j�|����s�a�k             USAGE COMP-1.                                 
000000   03  �v�j�|�������J�n��           PIC 9(08).                                     
000000   03  �v�j�|�������J�n���q         REDEFINES  �v�j�|�������J�n��.                           
000000     05  �v�j�|�������J�n���x       PIC 9(04).                                      
000000     05  �v�j�|�������J�n���l       PIC 9(02).                                      
000000     05  �v�j�|�������J�n���c       PIC 9(02).                                      
000000 01  ���p�Ґ���ϐ��G���A.                                                          
000000   03  �ϐ��b�n�l�l�h�s����         PIC 9(05).                                      
000000 01  �J�E���^.                                                                
000000   03  �b�m�s�Q�[���I�����         USAGE COMP-1.                                   
000000   03  �b�m�s�|����s�a�k           USAGE COMP-1.                                  
000000   03  CNT-COMMIT                   PIC 9(05).                            
000000 01  ���΃L�[.                                                                
      *20141114�C���J�n
000000*   03  UNK-RKEY                     USAGE COMP-2.                         
000000*   03  SUK-RKEY                     USAGE COMP-2.                         
000000   03  UNK-RKEY                     PIC 9(08).                         
000000   03  SUK-RKEY                     PIC 9(08).                         
      *20141114�C���I��
000000 01  �t���O.                                                                 
000000   03  �t�@�C���X�e�[�^�X.                                                         
000000     05  FL-STS1                    PIC X(02).                            
000000     05  FL-STS2                    PIC 9(05).                            
000000   03  �t�@�C���I���t���O.                                                         
000000     05  �d�m�c�|����v�e           PIC 9(01).                                    
000000   03  �e�[�u���I���t���O.                                                         
000000     05  �d�m�c�|�Q�[���I�����     PIC 9(01).                                       
000000 01  �s���ʔ̔��b�g�ʔ���݌v.                                                        
      *20141114�C���J�n
000000*   02  �s�݌v���ʔ̔��b�g�ʗ݌v    OCCURS 15000.                                      
         02  �s�݌v���ʔ̔��b�g�ʗ݌v    OCCURS 1500.
      *20141114�C���I��
000000     03  �s�݌v���R�[�h�L�[.                                                       
000000       05  �s�݌v�N�x                    PIC 9(4).                             
000000       05  �s�݌v�̔��`���l��            PIC 9(2).                                 
000000       05  �s�݌v�Q�[���h�c.                                                      
000000         07  �s�݌v�Q�[���^�C�v          PIC 9(2).                                 
000000         07  �s�݌v�u���b�N�R�[�h        USAGE COMP-1.                              
000000         07  �s�݌v��                  USAGE COMP-1.                         
000000     03  �s�݌v������z        PIC 9(13) USAGE COMP-3.                           
000000 PROCEDURE DIVISION .                                                     
000000 MAIN-RTN .                                                               
000000     PERFORM S000-RTN THRU CX00002                                        
000000     PERFORM P000-RTN THRU CX00003                                        
000000     PERFORM E000-RTN THRU CX00004 .                                      
000000 CX00001. STOP RUN.                                                       
000000 S000-RTN .                                                               
      *20141114�C���J�n
000000*       ACCEPT  �ϐ��b�n�l�l�h�s����  FROM  SPCOMMIT.                                
             MOVE ZERO TO �ϐ��b�n�l�l�h�s����.
      *20141114�C���I��
000000       OPEN INPUT �^�p�Ǘ��e .                                                 
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00011.                             
000000         DISPLAY "HBHUN551-01 VRUNYKAN OPEN ERROR " ,                     
000000                           FL-STS1 " " FL-STS2.                           
000000         STOP RUN .                                                     
000000 CX00011.                                                                 
000000       OPEN INPUT ����ʉ^�p�Ǘ��e .                                              
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00012.                             
000000         DISPLAY "HBHUN551-02 VRSEUNKN OPEN ERROR " ,                     
000000                           FL-STS1 " " FL-STS2.                           
000000         STOP RUN .                                                     
000000 CX00012.                                                                 
000000       OPEN INPUT ����e .                                                   
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00013.                             
000000         DISPLAY "HBHUN551-03 VIURIBA OPEN ERROR " ,                      
000000                           FL-STS1 " " FL-STS2.                           
000000         STOP RUN .                                                     
000000 CX00013.                                                                 
000000       OPEN INPUT �Ǝ҂e .                                                   
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00014.                             
000000         DISPLAY "HBHUN551-04 VIGYOSYA OPEN ERROR " ,                     
000000                           FL-STS1 " " FL-STS2.                           
000000         STOP RUN .                                                     
000000 CX00014.                                                                 
000000       OPEN INPUT ���ʔ̔��b�g�ʔ��ꔄ��v�e .                                         
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00015.                             
000000         DISPLAY "HBHUN551-05 SQWHURCH OPEN ERROR " ,                     
000000                           FL-STS1 " " FL-STS2.                           
000000         STOP RUN .                                                     
000000 CX00015.                                                                 
000000       OPEN I-O   ���ʔ̔��b�g�ʔ���݌v�e .                                          
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00016.                             
000000         DISPLAY "HBHUN551-06 VIHCHNUR OPEN ERROR " ,                     
000000                           FL-STS1 " " FL-STS2.                           
000000         STOP RUN .                                                     
000000 CX00016.                                                                 
000000       OPEN I-O   �̔��`���l���ʔ���݌v�e .                                          
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00017.                             
000000         DISPLAY "HBHUN551-07 VICHNURI OPEN ERROR " ,                     
000000                           FL-STS1 " " FL-STS2.                           
000000         STOP RUN .                                                     
000000 CX00017.                                                                 
000000     MOVE 1 TO UNK-RKEY                                                   
000000       READ  �^�p�Ǘ��e INVALID CONTINUE .                                     
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00018.                             
000000         DISPLAY "HBHUN551-08 VRUNYKAN READ ERROR ",                      
000000                     FL-STS1 " " FL-STS2                                  
000000         STOP RUN .                                                     
000000 CX00018.                                                                 
000000     IF NOT(�t�m�j�P�Ɩ����t = 
            �t�m�j�P�o�b�`�Ɩ����t) GO TO CX00019.                         
000000     MOVE �t�m�j�P����敪 TO �v�j�|����敪 .                                           
000000     GO TO CX00020.                                                       
000000 CX00019.                                                                 
000000     IF NOT(�t�m�j�P����敪 = 1) GO TO CX00021.                                   
000000     MOVE 2 TO �v�j�|����敪 .                                                  
000000     GO TO CX00022.                                                       
000000 CX00021.                                                                 
000000     MOVE 1 TO �v�j�|����敪 .                                                  
000000 CX00022.                                                                 
000000 CX00020.                                                                 
000000     IF NOT(�v�j�|����敪 = 1) GO TO CX00023.                                    
000000         OPEN  INPUT  �����J�n�Q�[���e�|�` .                                        
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00024.                             
000000           DISPLAY "HBHUN551-09 VIKASGMA OPEN ERROR ",                    
000000                     FL-STS1 " " FL-STS2                                  
000000           STOP RUN .                                                   
000000 CX00024.                                                                 
000000     GO TO CX00025.                                                       
000000 CX00023.                                                                 
000000         OPEN  INPUT  �����J�n�Q�[���e�|�a .                                        
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00026.                             
000000           DISPLAY "HBHUN551-10 VIKASGMB OPEN ERROR ",                    
000000                     FL-STS1 " " FL-STS2                                  
000000           STOP RUN .                                                   
000000 CX00026.                                                                 
000000 CX00025.                                                                 
000000       INITIALIZE �s���ʔ̔��b�g�ʔ���݌v .                                          
000000 CX00002. EXIT.                                                           
000000 P000-RTN .                                                               
000000     PERFORM P100-RTN THRU CX00005                                        
000000     PERFORM P200-RTN THRU CX00006                                        
000000     PERFORM P300-RTN THRU CX00009 .                                      
000000 CX00003. EXIT.                                                           
000000 E000-RTN .                                                               
000000       COMMIT                                                             
000000       CLOSE �^�p�Ǘ��e .                                                      
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00027.                             
000000         DISPLAY "HBHUN551-11 VRUNYKAN CLOSE ERROR " ,                    
000000                          FL-STS1 " " FL-STS2.                            
000000         STOP RUN .                                                     
000000 CX00027.                                                                 
000000       CLOSE ����ʉ^�p�Ǘ��e .                                                   
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00028.                             
000000         DISPLAY "HBHUN551-12 VRSEUNKN CLOSE ERROR " ,                    
000000                          FL-STS1 " " FL-STS2.                            
000000         STOP RUN .                                                     
000000 CX00028.                                                                 
000000       CLOSE ����e .                                                        
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00029.                             
000000         DISPLAY "HBHUN551-13 VIURIBA CLOSE ERROR " ,                     
000000                          FL-STS1 " " FL-STS2.                            
000000         STOP RUN .                                                     
000000 CX00029.                                                                 
000000       CLOSE �Ǝ҂e .                                                        
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00030.                             
000000         DISPLAY "HBHUN551-14 VIGYOSYA CLOSE ERROR " ,                    
000000                          FL-STS1 " " FL-STS2.                            
000000         STOP RUN .                                                     
000000 CX00030.                                                                 
000000       CLOSE ���ʔ̔��b�g�ʔ��ꔄ��v�e .                                              
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00031.                             
000000         DISPLAY "HBHUN551-15 SQWHURCH CLOSE ERROR " ,                    
000000                          FL-STS1 " " FL-STS2.                            
000000         STOP RUN .                                                     
000000 CX00031.                                                                 
000000       CLOSE ���ʔ̔��b�g�ʔ���݌v�e .                                               
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00032.                             
000000         DISPLAY "HBHUN551-16 VIHCHNUR CLOSE ERROR " ,                    
000000                          FL-STS1 " " FL-STS2.                            
000000         STOP RUN .                                                     
000000 CX00032.                                                                 
000000       CLOSE �̔��`���l���ʔ���݌v�e .                                               
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00033.                             
000000         DISPLAY "HBHUN551-17 VICHNURI CLOSE ERROR " ,                    
000000                          FL-STS1 " " FL-STS2.                            
000000         STOP RUN .                                                     
000000 CX00033.                                                                 
000000     IF NOT(�v�j�|����敪 = 1) GO TO CX00034.                                    
000000         CLOSE  �����J�n�Q�[���e�|�` .                                              
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00035.                             
000000           DISPLAY "HBHUN551-18 VIKASGMA CLOSE ERROR ",                   
000000                     FL-STS1 " " FL-STS2                                  
000000           STOP RUN .                                                   
000000 CX00035.                                                                 
000000     GO TO CX00036.                                                       
000000 CX00034.                                                                 
000000         CLOSE  �����J�n�Q�[���e�|�a .                                              
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00037.                             
000000           DISPLAY "HBHUN551-19 VIKASGMB CLOSE ERROR ",                   
000000                     FL-STS1 " " FL-STS2                                  
000000           STOP RUN .                                                   
000000 CX00037.                                                                 
000000 CX00036.                                                                 
      *20141114�C���J�n
000000*       @ZCTMSGOT(MSGID = #BH001,                                          
000000*                 PROGID = HBHUN551); .                                    
      *20141114�C���I��
000000 CX00004. EXIT.                                                           
000000 P100-RTN .                                                               
000000     MOVE 0 TO �d�m�c�|����v�e                                                   
000000     MOVE 0 TO �v�j�|������z                                                    
000000     MOVE 0 TO CNT-COMMIT                                                 
000000       READ ���ʔ̔��b�g�ʔ��ꔄ��v�e AT END    ,                                     
000000                        MOVE 1 TO �d�m�c�|����v�e.                               
000000     IF NOT(FL-STS1 NOT = "00" AND "10") GO TO CX00038.                    
000000         DISPLAY "HBHUN551-20 SQWHURCH READ ERROR " ,                     
000000                          FL-STS1 " " FL-STS2                             
000000         STOP RUN .                                                     
000000 CX00038.                                                                 
000000     MOVE �v�t�a�t����R�[�h TO �v�j�|����R�[�h .                                         
000000     MOVE �v�t�a�t�Q�[���h�c TO �v�j�|�Q�[���h�c .                                         
000000 CX00039. IF NOT(�d�m�c�|����v�e = 0) GO TO CX00040.                              
000000 CX00041. IF NOT( (�d�m�c�|����v�e = 0) AND 
            (�v�j�|����R�[�h = �v�t�a�t����R�[�h) AND           
000000     (�v�j�|�Q�[���h�c = �v�t�a�t�Q�[���h�c)) GO TO CX00042.                                
000000     COMPUTE �v�j�|������z = �v�j�|������z +                                          
000000                             �v�t�a�t������z                                     
000000           READ ���ʔ̔��b�g�ʔ��ꔄ��v�e AT END    ,                                 
000000                        MOVE 1 TO �d�m�c�|����v�e .                              
000000     IF NOT(FL-STS1 NOT = "00" AND "10") GO TO CX00043.                    
000000             DISPLAY "HBHUN551-21 SQWHURCH READ ERROR " ,                 
000000                          FL-STS1 " " FL-STS2                             
000000             STOP RUN .                                                 
000000 CX00043.                                                                 
000000     GO TO CX00041.                                                       
000000 CX00042.                                                                 
000000     IF NOT(�v�j�|����敪 = 1) GO TO CX00044.                                    
000000     MOVE �v�j�|�Q�[���h�c TO �j�`�f�l�Q�[���h�c                                           
000000           READ  �����J�n�Q�[���e�|�` INVALID CONTINUE .                            
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00045.                             
000000             DISPLAY "HBHUN551-22 VIKASGMA READ ERROR ",                  
000000                       FL-STS1 " " FL-STS2                                
000000             STOP RUN .                                                 
000000 CX00045.                                                                 
000000     MOVE �j�`�f�l�������J�n�� TO �v�j�|�������J�n�� .                                       
000000     GO TO CX00046.                                                       
000000 CX00044.                                                                 
000000     MOVE �v�j�|�Q�[���h�c TO �j�`�f�l�a�Q�[���h�c                                          
000000           READ  �����J�n�Q�[���e�|�a INVALID CONTINUE .                            
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00047.                             
000000             DISPLAY "HBHUN551-23 VIKASGMB READ ERROR ",                  
000000                       FL-STS1 " " FL-STS2                                
000000             STOP RUN .                                                 
000000 CX00047.                                                                 
000000     MOVE �j�`�f�l�a�������J�n�� TO �v�j�|�������J�n�� .                                      
000000 CX00046.                                                                 
000000     IF NOT(�v�j�|�������J�n���l >= 1 AND 
            �v�j�|�������J�n���l <= 3) GO TO CX00048.            
000000     COMPUTE �v�j�|�N�x = �v�j�|�������J�n���x - 1 .                                     
000000     GO TO CX00049.                                                       
000000 CX00048.                                                                 
000000     MOVE �v�j�|�������J�n���x TO �v�j�|�N�x .                                           
000000 CX00049.                                                                 
000000     MOVE �v�j�|����R�[�h TO �t�q�a�`����R�[�h                                           
000000         READ  ����e INVALID CONTINUE .                                     
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00050.                             
000000           DISPLAY "HBHUN551-24 VIURIBA READ ERROR ",                     
000000                     FL-STS1 " " FL-STS2                                  
000000           STOP RUN .                                                   
000000 CX00050.                                                                 
000000     MOVE �t�q�a�`�Ǝ҃R�[�h TO �f�x�r�`�Ǝ҃R�[�h                                          
000000         READ  �Ǝ҂e INVALID CONTINUE .                                     
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00051.                             
000000           DISPLAY "HBHUN551-25 VIGYOSYA READ ERROR ",                    
000000                     FL-STS1 " " FL-STS2                                  
000000           STOP RUN .                                                   
000000 CX00051.                                                                 
           DISPLAY "--Before --LINE:433--  �g�b�g�m�N�x = " �g�b�g�m�N�x UPON CONSOLE
           DISPLAY "--Before --LINE:434--  �g�b�g�m�̔��`���l�� = " �g�b�g�m�̔��`���l�� UPON CONSOLE
000000     MOVE �v�j�|�N�x TO �g�b�g�m�N�x                                                 
000000     MOVE �f�x�r�`�̔��`���l���R�[�h TO �g�b�g�m�̔��`���l��                                     
000000     MOVE �v�j�|�Q�[���h�c TO �g�b�g�m�Q�[���h�c                                           
000000         READ  ���ʔ̔��b�g�ʔ���݌v�e ,                                             
000000                                  INVALID CONTINUE .                      
000000     IF NOT(FL-STS1 = "00") GO TO CX00052.                                 
           DISPLAY "--Before --LINE:441--  �g�b�g�m������z = " �g�b�g�m������z UPON CONSOLE
000000     COMPUTE �g�b�g�m������z = �g�b�g�m������z + �v�j�|������z                                
000000           REWRITE ���ʔ̔��b�g�ʔ���݌v�q ,                                         
000000                                    INVALID CONTINUE .                    
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00053.                             
000000             DISPLAY "HBHUN551-26 VIHCHNUR REWRITE ERROR ",               
000000                       FL-STS1 " " FL-STS2                                
000000             STOP RUN .                                                 
000000 CX00053.                                                                 
000000     GO TO CX00054.                                                       
000000 CX00052. IF NOT(FL-STS1 = "23") GO TO CX00055.                            
           DISPLAY "--Before --LINE:452--  �g�b�g�m�N�x = " �g�b�g�m�N�x UPON CONSOLE
           DISPLAY "--Before --LINE:453--  �g�b�g�m�̔��`���l�� = " �g�b�g�m�̔��`���l�� UPON CONSOLE
           DISPLAY "--Before --LINE:454--  �g�b�g�m������z = " �g�b�g�m������z UPON CONSOLE
           DISPLAY "--Before --LINE:455--  �g�b�g�m�\�� = " �g�b�g�m�\�� UPON CONSOLE
000000     MOVE �v�j�|�N�x TO �g�b�g�m�N�x                                                 
000000     MOVE �f�x�r�`�̔��`���l���R�[�h TO �g�b�g�m�̔��`���l��                                     
000000     MOVE �v�j�|�Q�[���h�c TO �g�b�g�m�Q�[���h�c                                           
000000     MOVE �v�j�|������z TO �g�b�g�m������z                                             
000000     MOVE SPACE TO �g�b�g�m�\��                                                 
000000           WRITE ���ʔ̔��b�g�ʔ���݌v�q ,                                           
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
000000     IF NOT(�ϐ��b�n�l�l�h�s���� < CNT-COMMIT) GO TO CX00057.                        
000000           COMMIT                                                         
000000     MOVE 0 TO CNT-COMMIT .                                               
000000 CX00057.                                                                 
000000     COMPUTE CNT-COMMIT = CNT-COMMIT + 1 .                                
000000     IF NOT(�ϐ��b�n�l�l�h�s���� < CNT-COMMIT) GO TO CX00058.                        
000000           COMMIT                                                         
000000     MOVE 0 TO CNT-COMMIT .                                               
000000 CX00058.                                                                 
000000     MOVE �v�t�a�t����R�[�h TO �v�j�|����R�[�h                                           
000000     MOVE �v�t�a�t�Q�[���h�c TO �v�j�|�Q�[���h�c                                           
000000     MOVE 0 TO �v�j�|������z .                                                  
000000     GO TO CX00039.                                                       
000000 CX00040.                                                                 
000000 CX00005. EXIT.                                                           
000000 P200-RTN .                                                               
000000     PERFORM P210-RTN THRU CX00007 .                                      
000000     IF NOT(�v�j�|����敪 = 1) GO TO CX00059.                                    
000000     MOVE 1 TO SUK-RKEY .                                                 
000000     GO TO CX00060.                                                       
000000 CX00059.                                                                 
000000     MOVE 2 TO SUK-RKEY .                                                 
000000 CX00060.                                                                 
000000       READ  ����ʉ^�p�Ǘ��e INVALID CONTINUE .                                  
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00061.                             
000000         DISPLAY "HBHUN551-29 VRSEUNKN READ ERROR ",                      
000000                     FL-STS1 " " FL-STS2                                  
000000         STOP RUN .                                                     
000000 CX00061.                                                                 
000000     MOVE 0 TO �d�m�c�|�Q�[���I����� .                                              
000000     MOVE 1 TO �b�m�s�Q�[���I����� .                                               
000000 CX00062. IF NOT( (�d�m�c�|�Q�[���I����� = 0) AND 
            (�b�m�s�Q�[���I����� <= 90)                
000000     ) GO TO CX00063.                                                      
000000     IF NOT( (�r�t�j�P�Q�[���^�C�v (�b�m�s�Q�[���I�����) = 0) 
         AND (�r�t�j�P�u���b�N�R�[�h (             
000000     �b�m�s�Q�[���I�����) = 0) AND 
           (�r�t�j�P�� (�b�m�s�Q�[���I�����) = 0)                       
000000     ) GO TO CX00064.                                                      
000000     MOVE 1 TO �d�m�c�|�Q�[���I����� .                                              
000000     GO TO CX00065.                                                       
000000 CX00064.                                                                 
000000     IF NOT(�r�t�j�P�f�ʒ�����Ώۂr (�b�m�s�Q�[���I�����) = 
           1) GO TO CX00066.                  
000000     PERFORM P220-RTN THRU CX00008 .                                      
000000 CX00066.                                                                 
000000 CX00065.                                                                 
000000     COMPUTE �b�m�s�Q�[���I����� = �b�m�s�Q�[���I����� + 1 .                                
000000     GO TO CX00062.                                                       
000000 CX00063.                                                                 
000000 CX00006. EXIT.                                                           
000000 P210-RTN .                                                               
000000     MOVE 0 TO �d�m�c�|����v�e .                                                 
000000     MOVE 0 TO �b�m�s�|����s�a�k .                                                
000000     MOVE LOW-VALUE TO �g�b�g�m���R�[�h�L�[ .                                       
000000       START ���ʔ̔��b�g�ʔ���݌v�e KEY > ,                                         
000000                                      �g�b�g�m���R�[�h�L�[                          
000000             INVALID CONTINUE.                                            
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00067.                             
000000           DISPLAY "HBHUN551-30 VIHCHNUR START ERROR " ,                  
000000                       FL-STS1 " " FL-STS2                                
000000           STOP RUN .                                                   
000000 CX00067.                                                                 
000000 CX00068. IF NOT(�d�m�c�|����v�e = 0) GO TO CX00069.                              
000000         READ ���ʔ̔��b�g�ʔ���݌v�e NEXT ,                                         
000000                          AT END MOVE 1 TO �d�m�c�|����v�e .                     
000000     IF NOT(FL-STS1 NOT = "00" AND "10") GO TO CX00070.                    
000000           DISPLAY "HBHUN551-31 VIHCHNUR READ ERROR " ,                   
000000                            FL-STS1 " " FL-STS2.                          
000000           STOP RUN .                                                   
000000 CX00070.                                                                 
000000     IF NOT(�d�m�c�|����v�e = 0) GO TO CX00071.                                   
           DISPLAY "--Before --LINE:547--  �g�b�g�m�N�x = " �g�b�g�m�N�x UPON CONSOLE
           DISPLAY "--Before --LINE:548--  �g�b�g�m�̔��`���l�� = " �g�b�g�m�̔��`���l�� UPON CONSOLE
           DISPLAY "--Before --LINE:549--  �g�b�g�m�Q�[���^�C�v = " �g�b�g�m�Q�[���^�C�v UPON CONSOLE
           DISPLAY "--Before --LINE:550--  �g�b�g�m�u���b�N�R�[�h = " �g�b�g�m�u���b�N�R�[�h UPON CONSOLE
           DISPLAY "--Before --LINE:551--  �g�b�g�m�� = " �g�b�g�m�� UPON CONSOLE
           DISPLAY "--Before --LINE:552--  �g�b�g�m������z = " �g�b�g�m������z UPON CONSOLE
000000     COMPUTE �b�m�s�|����s�a�k = �b�m�s�|����s�a�k + 1                                    
000000     MOVE �g�b�g�m�N�x TO �s�݌v�N�x (�b�m�s�|����s�a�k)                                     
000000     MOVE �g�b�g�m�̔��`���l�� TO 
           �s�݌v�̔��`���l�� (�b�m�s�|����s�a�k)                             
000000     MOVE �g�b�g�m�Q�[���^�C�v TO 
           �s�݌v�Q�[���^�C�v (�b�m�s�|����s�a�k)                             
000000     MOVE �g�b�g�m�u���b�N�R�[�h TO 
           �s�݌v�u���b�N�R�[�h (�b�m�s�|����s�a�k)                           
000000     MOVE �g�b�g�m�� TO 
           �s�݌v�� (�b�m�s�|����s�a�k)                                     
000000     MOVE �g�b�g�m������z TO �s�݌v������z (�b�m�s�|����s�a�k) .                               
000000 CX00071.                                                                 
000000     GO TO CX00068.                                                       
000000 CX00069.                                                                 
000000     MOVE �b�m�s�|����s�a�k TO �v�j�|����s�a�k .                                         
000000       COMMIT                                                             
000000       CLOSE ���ʔ̔��b�g�ʔ���݌v�e.                                                
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
000000     MOVE 1 TO �b�m�s�|����s�a�k                                                  
000000     MOVE ZERO TO CNT-COMMIT .                                            
000000 CX00073. IF NOT(�b�m�s�|����s�a�k <= 
           �v�j�|����s�a�k) GO TO CX00074.                     
000000     IF NOT(�r�t�j�P�Q�[���h�c (�b�m�s�Q�[���I�����) = 
            �s�݌v�Q�[���h�c (�b�m�s�|����s�a�k)                 
000000     ) GO TO CX00075.                                                      
           DISPLAY "--Before --LINE:587--  �b�g�t�q�N�x = " �b�g�t�q�N�x UPON CONSOLE
           DISPLAY "--Before --LINE:588--  �b�g�t�q�̔��`���l���R�[�h = " �b�g�t�q�̔��`���l���R�[�h UPON CONSOLE
000000     MOVE �s�݌v�N�x (�b�m�s�|����s�a�k) TO �b�g�t�q�N�x                                     
000000     MOVE �s�݌v�̔��`���l�� (�b�m�s�|����s�a�k) TO 
            �b�g�t�q�̔��`���l���R�[�h                          
000000             READ �̔��`���l���ʔ���݌v�e INVALID CONTINUE.                          
000000     IF NOT(FL-STS1 = "00") GO TO CX00076.                                 
           DISPLAY "--Before --LINE:594--  �b�g�t�q������z = " �b�g�t�q������z UPON CONSOLE
000000     COMPUTE �b�g�t�q������z = �b�g�t�q������z + 
           �s�݌v������z (�b�m�s�|����s�a�k)                    
000000                 REWRITE �̔��`���l���ʔ���݌v�q ,                                   
000000                                     INVALID CONTINUE .                   
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00077.                             
000000                   DISPLAY "HBHUN551-33 VICHNURI REWRITE ERROR " ,        
000000                        FL-STS1 " " FL-STS2 UPON CONSOLE.                  
000000                   STOP RUN .                                           
000000 CX00077.                                                                 
000000     GO TO CX00078.                                                       
000000 CX00076. IF NOT(FL-STS1 = "23") GO TO CX00079.                            
           DISPLAY "--Before --LINE:606--  �b�g�t�q�N�x = " �b�g�t�q�N�x UPON CONSOLE
           DISPLAY "--Before --LINE:607--  �b�g�t�q�̔��`���l���R�[�h = " �b�g�t�q�̔��`���l���R�[�h UPON CONSOLE
           DISPLAY "--Before --LINE:608--  �b�g�t�q������z = " �b�g�t�q������z UPON CONSOLE
000000     MOVE �s�݌v�N�x (�b�m�s�|����s�a�k) TO �b�g�t�q�N�x                                     
000000     MOVE �s�݌v�̔��`���l�� (�b�m�s�|����s�a�k) TO 
           �b�g�t�q�̔��`���l���R�[�h                          
000000     MOVE �s�݌v������z (�b�m�s�|����s�a�k) TO �b�g�t�q������z                                 
000000                 WRITE �̔��`���l���ʔ���݌v�q INVALID CONTINUE.                     
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
000000     IF NOT(�ϐ��b�n�l�l�h�s���� < CNT-COMMIT) GO TO CX00081.                        
000000               COMMIT                                                     
000000     MOVE ZERO TO CNT-COMMIT .                                            
000000 CX00081.                                                                 
000000     MOVE 0 TO �s�݌v�N�x (�b�m�s�|����s�a�k)                                          
000000     MOVE 0 TO �s�݌v�̔��`���l�� (�b�m�s�|����s�a�k)                                      
000000     MOVE 0 TO �s�݌v�Q�[���^�C�v (�b�m�s�|����s�a�k)                                      
000000     MOVE 0 TO �s�݌v�u���b�N�R�[�h (�b�m�s�|����s�a�k)                                     
000000     MOVE 0 TO �s�݌v�� (�b�m�s�|����s�a�k)                                          
000000     MOVE 0 TO �s�݌v������z (�b�m�s�|����s�a�k) .                                      
000000 CX00075.                                                                 
000000     COMPUTE �b�m�s�|����s�a�k = �b�m�s�|����s�a�k + 1 .                                  
      *20141114�ǉ��J�n
           IF �b�m�s�|����s�a�k > 1500
               MOVE 1 TO �b�m�s�|����s�a�k
               INITIALIZE �s���ʔ̔��b�g�ʔ���݌v.
      *20141114�ǉ��I��
000000     GO TO CX00073.                                                       
000000 CX00074.                                                                 
000000 CX00008. EXIT.                                                           
000000 P300-RTN .                                                               
000000       OPEN OUTPUT ���ʔ̔��b�g�ʔ���݌v�e .                                         
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00082.                             
000000         DISPLAY "HBHUN551-36 VIHCHNUR OPEN ERROR " ,                     
000000                      FL-STS1 " " FL-STS2 UPON CONSOLE.                    
000000         STOP RUN .                                                     
000000 CX00082.                                                                 
000000     MOVE 1 TO �b�m�s�|����s�a�k                                                  
000000     MOVE 0 TO CNT-COMMIT .                                               
000000 CX00083. IF NOT( (�b�m�s�|����s�a�k <= 
           �v�j�|����s�a�k)) GO TO CX00084.                  
000000     IF NOT(�s�݌v�N�x (�b�m�s�|����s�a�k) = 0 AND 
           �s�݌v�̔��`���l�� (�b�m�s�|����s�a�k) = 0           
000000     AND �s�݌v�Q�[���^�C�v (�b�m�s�|����s�a�k) = 0 AND 
           �s�݌v�u���b�N�R�[�h (�b�m�s�|����s�a�k) =           
000000     0 AND �s�݌v�� (�b�m�s�|����s�a�k) = 0 AND 
           �s�݌v������z (�b�m�s�|����s�a�k) = 0              
000000     ) GO TO CX00085.                                                      
000000     GO TO CX00086.                                                       
000000 CX00085.                                                                 
           DISPLAY "--Before --LINE:666--  �g�b�g�m�N�x = " �g�b�g�m�N�x UPON CONSOLE
           DISPLAY "--Before --LINE:667--  �g�b�g�m�̔��`���l�� = " �g�b�g�m�̔��`���l�� UPON CONSOLE
           DISPLAY "--Before --LINE:668--  �g�b�g�m�Q�[���^�C�v = " �g�b�g�m�Q�[���^�C�v UPON CONSOLE
           DISPLAY "--Before --LINE:669--  �g�b�g�m�u���b�N�R�[�h = " �g�b�g�m�u���b�N�R�[�h UPON CONSOLE
           DISPLAY "--Before --LINE:670--  �g�b�g�m�� = " �g�b�g�m�� UPON CONSOLE
           DISPLAY "--Before --LINE:671--  �g�b�g�m������z = " �g�b�g�m������z UPON CONSOLE
000000     MOVE �s�݌v�N�x (�b�m�s�|����s�a�k) TO �g�b�g�m�N�x                                     
000000     MOVE �s�݌v�̔��`���l�� (�b�m�s�|����s�a�k) TO 
           �g�b�g�m�̔��`���l��                             
000000     MOVE �s�݌v�Q�[���^�C�v (�b�m�s�|����s�a�k) TO 
           �g�b�g�m�Q�[���^�C�v                             
000000     MOVE �s�݌v�u���b�N�R�[�h (�b�m�s�|����s�a�k) TO 
           �g�b�g�m�u���b�N�R�[�h                           
000000     MOVE �s�݌v�� (�b�m�s�|����s�a�k) TO �g�b�g�m��                                     
000000     MOVE �s�݌v������z (�b�m�s�|����s�a�k) TO �g�b�g�m������z                                 
000000           WRITE ���ʔ̔��b�g�ʔ���݌v�q INVALID CONTINUE.                           
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00087.                             
000000             DISPLAY "HBHUN551-37 VIHCHNUR WRITE ERROR " ,                
000000                          FL-STS1 " " FL-STS2 UPON CONSOLE.                
000000             STOP RUN .                                                 
000000 CX00087.                                                                 
000000     COMPUTE CNT-COMMIT = CNT-COMMIT + 1 .                                
000000     IF NOT(�ϐ��b�n�l�l�h�s���� < CNT-COMMIT) GO TO CX00088.                        
000000             COMMIT                                                       
000000     MOVE 0 TO CNT-COMMIT .                                               
000000 CX00088.                                                                 
000000 CX00086.                                                                 
000000     COMPUTE �b�m�s�|����s�a�k = �b�m�s�|����s�a�k + 1 .                                  
      *20141114�ǉ��J�n
           IF �b�m�s�|����s�a�k > 1500
               MOVE 1 TO �b�m�s�|����s�a�k
               INITIALIZE �s���ʔ̔��b�g�ʔ���݌v.
      *20141114�ǉ��I��
000000     GO TO CX00083.                                                       
000000 CX00084.                                                                 
000000 CX00009. EXIT.                                                           

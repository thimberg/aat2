000000 IDENTIFICATION DIVISION.                                                 
000000 PROGRAM-ID. HBHUN370 .                                                   
000000 DATE-WRITTEN.                                                            
000000 DATE-COMPILED.                                                           
000000 ENVIRONMENT DIVISION.                                                    
000000 CONFIGURATION SECTION.                                                   
000000 SOURCE-COMPUTER.        ACOS.                                            
000000 OBJECT-COMPUTER.        ACOS.                                            
      *20141027�C���J�n
000000* SPECIAL-NAMES.                                                           
000000*          ITG002    IS    SPCHNL.                                         
      *20141027�C���J�n
000000 INPUT-OUTPUT SECTION.                                                     
000000 FILE-CONTROL.                                                            
000000     SELECT  �g�����U�N�V�����e�|�`                                                  
000000*             ASSIGN               VRTRNSA                                 
                   ASSIGN               VRTRNSA-MSD
000000*             ORGANIZATION         VSAS  RELATIVE                          
                   ORGANIZATION         IS  RELATIVE
000000             ACCESS               DYNAMIC                                 
000000             RELATIVE             TR-A-RKEY                               
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT  �g�����U�N�V�����e�|�a                                                  
000000*             ASSIGN               VRTRNSB                                 
000000*             ORGANIZATION         VSAS  RELATIVE                          
000000             ASSIGN               VRTRNSB-MSD                                 
000000             ORGANIZATION         IS  RELATIVE                          
000000             ACCESS               DYNAMIC                                 
000000             RELATIVE             TR-B-RKEY                               
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT �^�p�Ǘ��e                                                         
000000*                  ASSIGN             VRUNYKAN                             
000000*                  ORGANIZATION       VSAS  RELATIVE                       
000000                  ASSIGN             VRUNYKAN-MSD                             
000000                  ORGANIZATION       IS  RELATIVE                       
000000                  ACCESS             RANDOM                               
000000                  RELATIVE           �q�j�|�^�p�Ǘ��e                             
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT ����e                                                           
000000*                  ASSIGN             VIURIBA                              
000000*                  ORGANIZATION       VSAS INDEXED                         
000000                  ASSIGN             VIURIBA-MSD                              
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       RANDOM                               
000000                  RECORD  KEY        �t�q�a�`����R�[�h                            
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT  �Q�[���e                                                         
000000*             ASSIGN               VIGAME                                  
000000*             ORGANIZATION         VSAS  INDEXED                           
000000             ASSIGN               VIGAME-MSD                                  
000000             ORGANIZATION         IS  INDEXED                           
000000             ACCESS               DYNAMIC                                 
000000             RECORD               �f�`�l�d�Q�[���h�c                               
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT  �Q�[�����[���e                                                      
000000*             ASSIGN               VIGMRULE                                
000000*             ORGANIZATION         VSAS INDEXED                            
000000             ASSIGN               VIGMRULE-MSD                                
000000             ORGANIZATION         IS INDEXED                            
000000             ACCESS               RANDOM                                  
000000             RECORD               �f�l�q�Q���R�[�h�L�[                          
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT  �Q�[���󋵂e                                                       
000000*             ASSIGN               VIGAMJYO                                
000000*             ORGANIZATION         VSAS  INDEXED                           
000000             ASSIGN               VIGAMJYO-MSD                                
000000             ORGANIZATION         IS  INDEXED                           
000000             ACCESS               RANDOM                                  
000000             RECORD               �f�l�i�x�Q�[���h�c                               
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT �Ǝ҂e                                                           
000000*                  ASSIGN             VIGYOSYA                             
000000*                  ORGANIZATION       VSAS INDEXED                         
000000                  ASSIGN             VIGYOSYA-MSD                             
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       RANDOM                               
000000                  RECORD  KEY        �f�x�r�`�Ǝ҃R�[�h�w                            
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT ���Z�@�֎萔���ύX�f���e                                                 
000000*                  ASSIGN             VITSGMKY                             
000000*                  ORGANIZATION       VSAS INDEXED                         
000000                  ASSIGN             VITSGMKY-MSD                             
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       DYNAMIC                              
000000                  RECORD  KEY        �s�r�f�l���R�[�h�L�[                           
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT �̔��b�ʎ萔���ύX�f���e                                                 
000000*                  ASSIGN             VITSGMCH                             
000000*                  ORGANIZATION       VSAS INDEXED                         
000000                  ASSIGN             VITSGMCH-MSD                             
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       DYNAMIC                              
000000                  RECORD  KEY        �g�b�g�s���R�[�h�L�[                           
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT �̔��`���l���e                                                       
000000*                  ASSIGN             VICHNNEL                             
000000*                  ORGANIZATION       VSAS INDEXED                         
000000                  ASSIGN             VICHNNEL-MSD                             
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       DYNAMIC                              
000000                  RECORD  KEY        �b�g�m�k�̔��`���l���R�[�h�w                        
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT ���J�萔���e                                                        
000000*                  ASSIGN             VIURTESU                             
000000*                  ORGANIZATION       VSAS INDEXED                         
000000                  ASSIGN             VIURTESU-MSD                             
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       DYNAMIC                              
000000                  RECORD  KEY        �t�q�s�r���R�[�h�L�[                           
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT ���J�萔���v�j�e                                                      
000000*                  ASSIGN             VIWURTES                             
000000*                  ORGANIZATION       VSAS INDEXED                         
000000                  ASSIGN             VIWURTES-MSD                             
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       RANDOM                               
000000                  RECORD  KEY        �v�t�s�d���R�[�h�L�[                           
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT  �r�f���Ǘ��e                                                      
000000*             ASSIGN               VRSGJYO                                 
000000*             ORGANIZATION         VSAS  RELATIVE                          
000000             ASSIGN               VRSGJYO-MSD                                 
000000             ORGANIZATION         IS  RELATIVE                          
000000             ACCESS               RANDOM                                  
000000             RELATIVE             SGF-KEY                                 
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT  �O���̔��p�������e�|�`                                                 
000000*             ASSIGN               VRTKSYGA                                
000000*             ORGANIZATION         VSAS  RELATIVE                          
000000             ASSIGN               VRTKSYGA-MSD                                
000000             ORGANIZATION         IS  RELATIVE                          
000000             ACCESS               DYNAMIC                                 
000000             RELATIVE             �q�j�|�������`                                
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT  �O���̔��p�������e�|�a                                                 
000000*             ASSIGN               VRTKSYGB                                
000000*             ORGANIZATION         VSAS  RELATIVE                          
000000             ASSIGN               VRTKSYGB-MSD                                
000000             ORGANIZATION         IS  RELATIVE                          
000000             ACCESS               DYNAMIC                                 
000000             RELATIVE             �q�j�|�������a                                
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT �����Q�[���e�|�`                                                      
000000*                  ASSIGN             VIHATGMA                             
000000*                  ORGANIZATION       VSAS INDEXED                         
000000                  ASSIGN             VIHATGMA-MSD                             
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       DYNAMIC                              
000000                  RECORD  KEY        �g�s�f�`�Q�[���h�c                            
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT �����Q�[���e�|�a                                                      
000000*                  ASSIGN             VIHATGMB                             
000000*                  ORGANIZATION       VSAS INDEXED                         
000000                  ASSIGN             VIHATGMB-MSD                             
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       DYNAMIC                              
000000                  RECORD  KEY        �g�s�f�a�Q�[���h�c                            
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT ���z�x�����v�j�e                                                     
000000*                  ASSIGN             SQWKGKSH                             
000000                  ASSIGN             SQWKGKSH-MSD                             
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT ����������v�j�e                                                      
000000*                  ASSIGN             SQWURISE                             
000000                  ASSIGN             SQWURISE-MSD                             
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT ����ʔ���v�j�e                                                      
000000*                  ASSIGN             SQWURIUR                             
000000                  ASSIGN             SQWURIUR-MSD                             
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT ���ꎞ�ԑѕʔ���v�j�e                                                   
000000*                  ASSIGN             SQWJIKAN                             
000000                  ASSIGN             SQWJIKAN-MSD                             
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT �w�����ʐ\���󋵂v�j�e                                                   
000000*                  ASSIGN             SQWKNYJY                             
000000                  ASSIGN             SQWKNYJY-MSD                             
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT ����ʐ��Z�\�v�j�e                                                     
000000*                  ASSIGN             SQWURISS                             
000000                  ASSIGN             SQWURISS-MSD                             
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT �񍆕ʐ��Z�\�v�j�e                                                     
000000*                  ASSIGN             SQWKAISS                             
000000                  ASSIGN             SQWKAISS-MSD                             
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT �c�̕ʐ��Z�\�v�j�e                                                     
000000*                  ASSIGN             SQWDNSSN                             
000000                  ASSIGN             SQWDNSSN-MSD                             
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT �O���̔��p������v�j�e                                                  
000000*                  ASSIGN             SQWGURAG                             
000000                  ASSIGN             SQWGURAG-MSD                             
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT �O�̗p��Q����s�v�j�e                                                  
000000*                  ASSIGN             SQWGTOFK                             
000000                  ASSIGN             SQWGTOFK-MSD                             
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT �G���[�v�j�e                                                        
000000*                  ASSIGN             SQWERROR                             
000000                  ASSIGN             SQWERROR-MSD                             
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
      *20141028�ǉ��J�n
000000     SELECT �ϐ��̔��`���l���R�[�h�e                                                        
000000                  ASSIGN             NEWFILE-MSD                             
000000             FILE STATUS          STS-FILE1.                   
      *20141028�ǉ��I��
000000 DATA DIVISION.                                                           
000000 FILE SECTION.                                                            
000000 FD  �g�����U�N�V�����e�|�`                                                          
000000     LABEL  RECORD  STANDARD                                            
      *20141027�ǉ��J�n
           VALUE  OF IDENTIFICATION IS "VRTRNSA".
      *20141027�ǉ��I��
000000 01  �g�����U�N�V�����q�|�`.                                                         
000000   03  �s�q�m�`���R�[�h�i�[����     USAGE   COMP-1.                                   
000000   03  �s�q�m�`�e�d�o���ʎq         PIC     9(2).                                   
000000   03  �s�q�m�`�p�X�ԍ�             PIC     9(2).                                 
000000   03  �s�q�m�`�p�X�ʓd�����t       USAGE   COMP-2.                                  
000000   03  �s�q�m�`�p�X�ʓd���ʔ�       USAGE   COMP-2.                                  
000000   03  �s�q�m�`�ʏ��             OCCURS  63.                                   
000000     COPY CFTRNS REPLACING                                                
000000              //�s�q�m�r//  BY  //�s�q�m�`// .                                    
000000 FD  �g�����U�N�V�����e�|�a                                                          
000000     LABEL  RECORD  STANDARD                                             
      *20141027�ǉ��J�n
           VALUE  OF IDENTIFICATION IS "VRTRNSB".
      *20141027�ǉ��I��
000000 01  �g�����U�N�V�����q�|�a.                                                         
000000   03  �s�q�m�a���R�[�h�i�[����     USAGE   COMP-1.                                   
000000   03  �s�q�m�a�e�d�o���ʎq         PIC     9(2).                                   
000000   03  �s�q�m�a�p�X�ԍ�             PIC     9(2).                                 
000000   03  �s�q�m�a�p�X�ʓd�����t       USAGE   COMP-2.                                  
000000   03  �s�q�m�a�p�X�ʓd���ʔ�       USAGE   COMP-2.                                  
000000   03  �s�q�m�a�ʏ��             OCCURS  63.                                   
000000     COPY CFTRNS REPLACING                                                
000000              //�s�q�m�r//  BY  //�s�q�m�a// .                                    
000000 FD  �^�p�Ǘ��e
      *20141027�C���J�n                                                          
000000*     RECORD  VARYING  IN  SIZE
           LABEL RECORD STANDARD
      *20141027�C���I��                                           
      *20141027�ǉ��J�n
           VALUE  OF IDENTIFICATION IS "VRUNYKAN".
      *20141027�ǉ��I��
000000* 01  �^�p�Ǘ��q�Q.                                                              
000000*     COPY CFUNK2 .                                                        
000000 01  �^�p�Ǘ��q�P.                                                              
000000     COPY CFUNK1 .                                                        
000000* 01  �^�p�Ǘ��q�R.                                                              
000000*     COPY CFUNK3 .                                                        
000000 FD  �Ǝ҂e                                                                  
000000     LABEL RECORD STANDARD                                               
      *20141027�ǉ��J�n
           VALUE  OF IDENTIFICATION IS "VIGYOSYA".
      *20141027�ǉ��I��
000000 01  �Ǝ҂q.                                                                 
000000     COPY CFGYSA .                                                        
000000 FD  ����e                                                                  
000000     LABEL RECORD STANDARD                                               
      *20141027�ǉ��J�n
           VALUE  OF IDENTIFICATION IS "VIURIBA".
      *20141027�ǉ��I��
000000 01  ����q.                                                                 
000000     COPY CFURBA .                                                        
000000 FD  �Q�[���󋵂e                                                               
000000     LABEL  RECORD  STANDARD                                             
      *20141027�ǉ��J�n
           VALUE  OF IDENTIFICATION IS "VIGAMJYO".
      *20141027�ǉ��I��
000000 01  �Q�[���󋵂q.                                                              
000000     COPY CFGMJY .                                                        
000000 FD  �Q�[�����[���e                                                              
000000     LABEL  RECORD  STANDARD                                             
      *20141027�ǉ��J�n
           VALUE  OF IDENTIFICATION IS "VIGMRULE".
      *20141027�ǉ��I��
      *20141102�C���J�n
000000* 01  �Q�[�����[���j.                                                             
000000*     COPY CFGMR1 .
      *20141102�C���I��                                                        
000000 01  �Q�[�����[���l.                                                             
000000     COPY CFGMR2 .                                                        
000000 FD  �Q�[���e                                                                 
000000     LABEL  RECORD  STANDARD                                             
      *20141027�ǉ��J�n
           VALUE  OF IDENTIFICATION IS "VIGAME".
      *20141027�ǉ��I��
000000 01  �Q�[���q.                                                                
000000     COPY CFGAME .                                                        
000000 FD  �����Q�[���e�|�`                                                             
000000     LABEL  RECORD  STANDARD                                             
      *20141027�ǉ��J�n
           VALUE  OF IDENTIFICATION IS "VIHATGMA".
      *20141027�ǉ��I��
000000 01  �����Q�[���q�|�`.                                                            
000000     COPY CFHTGM REPLACING                                                
000000              //�g�s�f�l//  BY  //�g�s�f�`// .                                    
000000 FD  �����Q�[���e�|�a                                                             
000000     LABEL  RECORD  STANDARD                                             
      *20141027�ǉ��J�n
           VALUE  OF IDENTIFICATION IS "VIHATGMB".
      *20141027�ǉ��I��
000000 01  �����Q�[���q�|�a.                                                            
000000     COPY CFHTGM REPLACING                                                
000000              //�g�s�f�l//  BY  //�g�s�f�a// .                                    
000000 FD  �O���̔��p�������e�|�`                                                         
000000     LABEL  RECORD  STANDARD                                             
      *20141027�ǉ��J�n
           VALUE  OF IDENTIFICATION IS "VRTKSYGA".
      *20141027�ǉ��I��
000000 01  �O���̔��p�������q�|�`.                                                        
000000     COPY CFGHT2 .                                                        
000000 FD  �O���̔��p�������e�|�a                                                         
000000     LABEL  RECORD  STANDARD                                             
      *20141027�ǉ��J�n
           VALUE  OF IDENTIFICATION IS "VRTKSYGB".
      *20141027�ǉ��I��
000000 01  �O���̔��p�������q�|�a.                                                        
000000     COPY CFGHT2 REPLACING                                                
000000              //�f�g�s�Q//  BY  //�f�g�s�Q�a// .                                   
000000 FD  ���Z�@�֎萔���ύX�f���e                                                        
000000     LABEL  RECORD  STANDARD                                             
      *20141027�ǉ��J�n
           VALUE  OF IDENTIFICATION IS "VITSGMKY".
      *20141027�ǉ��I��
000000 01  ���Z�@�֎萔���ύX�f���q.                                                       
000000     COPY CFTSGM .                                                        
000000 FD  �̔��b�ʎ萔���ύX�f���e                                                        
000000     LABEL  RECORD  STANDARD                                             
      *20141027�ǉ��J�n
           VALUE  OF IDENTIFICATION IS "VITSGMCH".
      *20141027�ǉ��I��
000000 01  �̔��b�ʎ萔���ύX�f���q.                                                       
000000     COPY CFHCHT .                                                        
000000 FD  �̔��`���l���e                                                              
000000     LABEL RECORD STANDARD                                               
      *20141027�ǉ��J�n
           VALUE  OF IDENTIFICATION IS "VICHNNEL".
      *20141027�ǉ��I��
000000 01  �̔��`���l���q.                                                             
000000     COPY CFCHNL .                                                        
000000 FD  ���z�x�����v�j�e                                                            
000000     LABEL  RECORD  STANDARD                                             
      *20141027�ǉ��J�n
           VALUE  OF IDENTIFICATION IS "SQWKGKSH".
      *20141027�ǉ��I��
000000 01  ���z�x�����v�j�q.                                                           
000000     COPY CFKSMT .                                                        
000000 FD  ����������v�j�e                                                             
000000     LABEL  RECORD  STANDARD                                             
      *20141027�ǉ��J�n
           VALUE  OF IDENTIFICATION IS "SQWURISE".
      *20141027�ǉ��I��
000000 01  ����������v�j�q.                                                            
000000     COPY CFWUAS .                                                        
000000 FD  ����ʔ���v�j�e                                                             
000000     LABEL  RECORD  STANDARD                                             
      *20141027�ǉ��J�n
           VALUE  OF IDENTIFICATION IS "SQWURIUR".
      *20141027�ǉ��I��
000000 01  ����ʔ���v�j�q.                                                            
000000     COPY CFWUBU .                                                        
000000 FD  ���ꎞ�ԑѕʔ���v�j�e                                                          
000000     LABEL  RECORD  STANDARD                                            
      *20141027�ǉ��J�n
           VALUE  OF IDENTIFICATION IS "SQWJIKAN".
      *20141027�ǉ��I��
000000 01  ���ꎞ�ԑѕʔ���v�j�q.                                                         
000000     COPY CFWJIK .                                                        
000000 FD  �w�����ʐ\���󋵂v�j�e                                                          
000000     LABEL  RECORD  STANDARD                                             
      *20141027�ǉ��J�n
           VALUE  OF IDENTIFICATION IS "SQWKNYJY".
      *20141027�ǉ��I��
000000 01  �w�����ʐ\���󋵂v�j�q.                                                         
000000     COPY CFWKNY .                                                        
000000 FD  ����ʐ��Z�\�v�j�e                                                            
000000     LABEL  RECORD  STANDARD                                             
      *20141027�ǉ��J�n
           VALUE  OF IDENTIFICATION IS "SQWURISS".
      *20141027�ǉ��I��
000000 01  ����ʐ��Z�\�v�j�q.                                                           
000000     COPY CFWUBS .                                                        
000000 FD  �񍆕ʐ��Z�\�v�j�e                                                            
000000     LABEL  RECORD  STANDARD                                             
      *20141027�ǉ��J�n
           VALUE  OF IDENTIFICATION IS "SQWKAISS".
      *20141027�ǉ��I��
000000 01  �񍆕ʐ��Z�\�v�j�q.                                                           
000000     COPY CFWKAI .                                                        
000000 FD  �c�̕ʐ��Z�\�v�j�e                                                            
000000     LABEL  RECORD  STANDARD                                             
      *20141027�ǉ��J�n
           VALUE  OF IDENTIFICATION IS "SQWDNSSN".
      *20141027�ǉ��I��
000000 01  �c�̕ʐ��Z�\�v�j�q.                                                           
000000     COPY CFWDNS .                                                        
000000 FD  �G���[�v�j�e                                                               
000000     LABEL  RECORD  STANDARD                                             
      *20141027�ǉ��J�n
           VALUE  OF IDENTIFICATION IS "SQWERROR".
      *20141027�ǉ��I��
000000 01  �G���[�v�j�q.                                                              
000000   03  �d�q�v�j�ʏ��.                                                          
000000     COPY CFTRNS REPLACING                                                
000000              //�s�q�m�r//  BY  //�d�q�v�j// .                                    
000000 FD  �O���̔��p������v�j�e                                                         
000000     LABEL  RECORD  STANDARD                                             
      *20141027�ǉ��J�n
           VALUE  OF IDENTIFICATION IS "SQWGURAG".
      *20141027�ǉ��I��
000000 01  �O���̔��p������v�j�q.                                                        
000000     COPY CFWGUA .                                                        
000000 FD  �O�̗p��Q����s�v�j�e                                                         
000000     LABEL  RECORD  STANDARD                                             
      *20141027�ǉ��J�n
           VALUE  OF IDENTIFICATION IS "SQWGTOFK".
      *20141027�ǉ��I��
000000 01  �O�̗p��Q����s�v�j�q.                                                        
000000     COPY CFWGTF .                                                        
000000 FD  �r�f���Ǘ��e
      *20141027�C���J�n                                                              
000000*     RECORD  VARYING  IN  SIZE                                         
           LABEL  RECORD  STANDARD
      *20141027�C���I��
      *20141027�ǉ��J�n
           VALUE  OF IDENTIFICATION IS "VRSGJYO".
      *20141027�ǉ��I��
000000* 01  �r�f���Ǘ��q�R.                                                            
000000*     COPY CFSGJ3 .                                                        
000000 01  �r�f���Ǘ��q�P.                                                            
000000     COPY CFSGJ1 .                                                        
000000* 01  �r�f���Ǘ��q�Q.                                                            
000000*     COPY CFSGJ2 .                                                        
000000 FD  ���J�萔���e                                                               
000000     LABEL  RECORD  STANDARD                                             
      *20141027�ǉ��J�n
           VALUE  OF IDENTIFICATION IS "VIURTESU".
      *20141027�ǉ��I��
000000 01  ���J�萔���q.                                                              
000000     COPY CFURTS .                                                        
000000 FD  ���J�萔���v�j�e                                                             
000000     LABEL  RECORD  STANDARD                                             
      *20141027�ǉ��J�n
           VALUE  OF IDENTIFICATION IS "VIWURTES".
      *20141027�ǉ��I��
000000 01  ���J�萔���v�j�q.                                                            
000000     COPY CFWUTE .
      *20141028�ǉ��J�n
000000 FD  �ϐ��̔��`���l���R�[�h�e
           LABEL  RECORD  STANDARD                                                        
           VALUE  OF IDENTIFICATION IS "NEWFILE".
       01  SPCHNL                            PIC X(02).
      *20141028�ǉ��I��                                                        
000000 WORKING-STORAGE SECTION.                                                 
000000 01  ��ƃG���A.                                                               
000000   03  �v�j�|����                      PIC 9(02).                              
000000   03  �v�j�|�̔��`���l���R�[�h        PIC 9(02).                                     
000000   03  �v�j�|�Q�[���^�C�v              PIC 9(02).                                  
000000   03  �v�j�|�u���b�N�R�[�h            COMP-1.                                      
000000   03  �v�j�|���Ǝ�                  PIC X(03).                                
000000   03  �v�j�|����敪                  PIC X(01).                                
000000   03  �v�j�|�p���񍆐�                PIC 9(01).                                 
000000   03  �v�j�|��                      PIC 9(01).                              
000000   03  �v�j�|�\���ʂ萔                PIC 9(04).                                 
000000   03  �v�j�|������                    PIC 9(08).                               
000000   03  �v�j�|�x����                    PIC 9(08).                               
000000   03  �v�j�|����                      PIC 9(03).                              
000000   03  �v�j�|���J�萔��                PIC 9(05)V9(02) COMP-3.                    
000000   03  �v�j�|�ύX��萔��              PIC 9(11)V9(02) COMP-3.                     
000000   03  �v�j�|�p�l����                  PIC 9(01).                                
000000   03  �v�j�|�\������                  PIC 9(10).                                
000000   03  �v�j�|�\�������q                REDEFINES �v�j�|�\������.                         
000000     05  �s�a�k�\������                PIC 9(01) OCCURS 10.                      
000000   03  �v�j�|�����񐔎�                PIC 9(10).                                 
000000   03  �v�j�|�����񐔎��q              REDEFINES �v�j�|�����񐔎�.                         
000000     05  �s�a�k�����񐔎�              PIC 9(01) OCCURS 10.                       
000000   03  �v�j�|�s�q���ʃR�[�h.                                                        
000000     05  �v�j�|�s�q���ʃR�[�h��W��    PIC 9(08).                                      
000000     05  �v�j�|�s�q���ʃR�[�h���W��    PIC 9(08).                                      
000000     05  �v�j�|�s�q���ʃR�[�h���W��    PIC 9(08).                                      
000000   03  �v�j�|�\�������ϊ�              PIC X(24).                                  
000000   03  �v�j�|�\�������ϊ��q�m�R�R REDEFINES �v�j�|�\�������ϊ�.                                 
000000     05  �v�j�|�\�������ϊ��m�R�R      PIC 9(03).                                     
000000     05  FILLER                        PIC X(21).                         
000000   03  �v�j�|�\�������ϊ��q�m�R�Q REDEFINES �v�j�|�\�������ϊ�.                                 
000000     05  �v�j�|�\�������ϊ��m�R�Q      PIC 9(02).                                     
000000     05  FILLER                        PIC X(22).                         
000000   03  �v�j�|�\�������ϊ��q�m�S�S REDEFINES �v�j�|�\�������ϊ�.                                 
000000     05  �v�j�|�\�������ϊ��m�S�S      PIC 9(04).                                     
000000     05  FILLER                        PIC X(20).                         
000000   03  �v�j�|�\�������ϊ��q�m�S�Q REDEFINES �v�j�|�\�������ϊ�.                                 
000000     05  �v�j�|�\�������ϊ��m�S�Q      PIC 9(02).                                     
000000     05  FILLER                        PIC X(22).                         
000000   03  �v�j�|�\�������ϊ��q�k�s   REDEFINES �v�j�|�\�������ϊ�.                                
000000     05  �v�j�|�\�������ϊ��k�s        PIC X(02) OCCURS 12.                          
000000   03 ���p�Ґ���ϐ��G���A.                                                         
000000     05  �ϐ��̔��`���l���R�[�h        PIC 9(02).                                    
000000   03  �v�j�|���ʃR�[�h�ϊ�.                                                        
000000     05  PTR_SBCDBEFORE                USAGE POINTER.                     
000000     05  PTR_SBCDAFTER                 USAGE POINTER.                     
000000     05  �v�j�|�P�U���ʃR�[�h.                                                      
000000       07  �v�j�|�P�U���ʃR�[�h��      PIC  9(08).                                   
000000       07  �v�j�|�P�U���ʃR�[�h��      PIC  9(08).                                   
000000     05  �v�j�|�Q�S���ʃR�[�h.                                                      
000000       07  �v�j�|�Q�S���ʃR�[�h��      PIC  9(08).                                   
000000       07  �v�j�|�Q�S���ʃR�[�h��      PIC  9(08).                                   
000000       07  �v�j�|�Q�S���ʃR�[�h��      PIC  9(08).                                   
000000 01  �J�E���^.                                                                
000000   03  �b�m�s�Q�[��                    PIC 9(02).                               
000000   03  �b�m�s��                      PIC 9(02).                              
000000   03  �b�m�s���Ǝ�                  PIC 9(03).                                
000000   03  �b�m�s�\������                  PIC 9(02).                                
000000   03  �b�m�s�̔��b                    PIC 9(02).                               
000000   03  �b�m�s���z��                    PIC 9(02).                               
000000   03  �b�m�s������                    PIC 9(02).                               
000000   03  �b�m�s�p�l��                    PIC 9(01).                               
000000   03  �b�m�s�d���ʔԎ��              PIC 9(05).                                  
000000   03  �b�m�s���ʃR�[�h���            PIC 9(05).                                   
000000 01  ���΃L�[.                                                                
      *20141027�C���J�n
000000*   03  �q�j�|�^�p�Ǘ��e                COMP-2.                                    
000000*   03  �q�j�|�������`                COMP-2.                                    
000000*   03  �q�j�|�������a                COMP-2.                                    
000000*   03  TR-A-RKEY                       COMP-2.                            
000000*   03  TR-B-RKEY                       COMP-2.                            
000000*   03  SGF-KEY                         COMP-2.                            
      *20141027�C���I��
      *20141027�ǉ��J�n
000000   03  �q�j�|�^�p�Ǘ��e                PIC 9(08).                                    
000000   03  �q�j�|�������`                PIC 9(08).                                    
000000   03  �q�j�|�������a                PIC 9(08).                                    
000000   03  TR-A-RKEY                       PIC 9(08).                            
000000   03  TR-B-RKEY                       PIC 9(08).                            
000000   03  SGF-KEY                         PIC 9(08).                            
      *20141027�ǉ��I��
000000 01  �Y��.                                                                  
000000   03  �h�c�w�i�[���R�[�h              PIC 9(02).                                  
000000   03  �h�c�w����R�[�h                PIC X(06).                                 
000000   03  �h�c�w����R�[�h�q              REDEFINES �h�c�w����R�[�h.                         
000000     05  �h�c�w����                    PIC 9(05).                              
000000     05  FILLER                        PIC X(01).                         
000000   03  �h�c�w�Q�[��                    PIC 9(02).                               
000000   03  �h�c�w��                      PIC 9(02).                              
000000   03  �h�c�w�񍆂Q                    PIC 9(02).                               
000000   03  �h�c�w�̔��b                    PIC 9(02).                               
000000   03  �h�c�w�e�[�u���ԍ�              PIC 9(02).                                  
000000   03  �h�c�w������                    PIC 9(02).                               
000000   03  �h�c�w���z��                    PIC 9(01).                               
000000   03  �h�c�w�p�l��                    PIC 9(01).                               
000000   03  �h�c�w�c��                      PIC 9(03).                              
000000   03  �h�c�w���Ǝ�                  PIC 9(03).                                
000000 01  �t���O.                                                                 
000000   03  �e��t���O.                                                             
000000     05  �e�k�f�Q�[��                  PIC 9(01).                               
000000     05  �e�k�f��                    PIC 9(01).                              
000000     05  �e�k�f�G���[                  PIC 9(01).                               
000000     05  �e�k�f�̔��b                  PIC 9(01).                               
000000     05  �e�k�f���Ǝ�                PIC 9(01).                                
000000     05  �e�k�f��Q������            PIC 9(01).                                  
000000   03  �t�@�C���I���t���O.                                                         
000000     05  �e�k�f�s�q�m�r                PIC 9(01).                                
000000     05  �e�k�f�g�s�f�l                PIC 9(01).                                
000000     05  �e�k�f�b�g�m�k                PIC 9(01).                                
000000     05  �e�k�f�g�b�g�s                PIC 9(01).                                
000000     05  �e�k�f�s�r�f�l                PIC 9(01).                                
000000     05  �e�k�f�f�g�s�Q                PIC 9(01).                                
000000     05  �e�k�f�t�q�s�r                PIC 9(01).                                
000000 01  �t�@�C���X�e�[�^�X.                                                           
000000   03  STS-FILE1                       PIC X(02).                         
000000   03  STS-FILE2                       PIC 9(05).                         
000000 01  �v�j�|����.                                                               
000000   03  �v���|�{���������z              PIC 9(11) COMP-3.                           
000000   03  �v���|�{������������z          PIC 9(11) COMP-3.                             
000000   03  �v���|�{����������������z      PIC 9(11) COMP-3.                               
000000   03  �v���|�����J�E���^�I�[�o        PIC 9(01).                                     
000000 01  �v�j�|�񍆏��e�[�u��.                                                         
000000   03  �v��|�Q�[���u���b�N            OCCURS 30.                                   
000000     05  �v��|�Q�[���^�C�v            PIC 9(02).                                  
000000     05  �v��|�u���b�N�R�[�h          COMP-1.                                      
000000     05  �v��|�񍆕ʏ��              OCCURS 21.                                 
000000       07  �v��|��                  COMP-1.                                 
000000       07  �v��|���J�萔���s�a�k�ԍ�  PIC 9(02).                                      
000000       07  �v��|�P��                  PIC 9(05) COMP-3.                       
000000 01  �v�j�|���z�x����l.                                                          
000000   03  �v�̂b�ʏ��                    OCCURS 10.                               
000000     05  �v�̍��z�x����l            PIC 9(13) COMP-3.                           
      *20141027�C���J�n
000000*01  �v��Q����s�W�J�`.                                                          
       01  �v��Q�|�`���ʔԎ���`.
000000   03  �v��Q�|�`���ʔԎ��          OCCURS 1000.                                  
000000     05  �v��Q�|����R�[�h              PIC X(06).                                
000000     05  �v��Q�|�d���ʔ�                COMP-2.                                  
       01  �v��Q�|���ʃR�[�h����`.
000000   03  �v��Q�|���ʃR�[�h���        OCCURS 1000.                                   
000000     05  �v��Q�|���ʃR�[�h              PIC X(24).                                
000000     05  �v��Q�|����敪                PIC X(01).                               
000000 01  �v��Q�|�d���ʔԎ������          PIC 9(05).                                   
000000 01  �v��Q�|���ʃR�[�h�������        PIC 9(05).                                    
000000*   03  �v��Q�|�d���ʔԎ������          PIC 9(05).                                   
000000*   03  �v��Q�|���ʃR�[�h�������        PIC 9(05).                                    
      *20141027�C���I��
000000 01  �v�j�|�c�̕ʐ��Z�\. 
      *20141028�C���J�n                                                          
000000   03  �v�c���Q�[���u���b�N            OCCURS 3.                                   
000000     05  �v�c���Q�[���^�C�v            PIC 9(02).                                  
000000     05  �v�c���u���b�N�R�[�h          COMP-1.                                      
000000     05  �v�c���񍆕ʏ��              OCCURS 21.                                 
000000       07  �v�c����                  COMP-1.                                 
000000       07  �v�c���c�̕ʏ��            OCCURS 80.                                 
000000         09  �v�c���c�̕ʔ���          PIC 9(11) COMP-3.                          
000000         09  �v�c���Ǝ҃R�[�h          PIC 9(06) COMP-3.                          
000000         09  �v�c���̔��`���l���R�[�h  PIC 9(02).                                     
      *20141028�ǉ��J�n
       01  �v�j�|�c�̕ʐ��Z�\��            PIC 9(02).
      *20141028�ǉ��I��
000000 01  �v�j�s���R�[�h.                                                             
000000   03  �v�j�s���R�[�h�i�[����     USAGE   COMP-1.                                    
000000   03  �v�j�s�e�d�o���ʎq         PIC     9(2).                                    
000000   03  �v�j�s�p�X�ԍ�             PIC     9(2).                                  
000000   03  �v�j�s�p�X�ʓd�����t       USAGE   COMP-2.                                   
000000   03  �v�j�s�p�X�ʓd���ʔ�       USAGE   COMP-2.                                   
000000   03  �v�j�s�ʏ��.                                                           
000000     COPY CFTRNS REPLACING                                                
000000                 //�s�q�m�r// BY //�v�j�s// .                                    
000000 01  �v�j�f���R�[�h.                                                             
000000     COPY CFHTGM REPLACING                                                
000000                 //�g�s�f�l// BY //�v�j�f// .                                    
000000 01  �v�j�|����ʐ��Z�\�v�j�q.                                                        
000000     COPY CFWUBS REPLACING                                                
000000                 //�v�t�a�r// BY //�v�j����// .                                   
000000 01  �v�j�|�O�̗p������v�j�q.                                                       
000000     COPY CFWGUA REPLACING                                                
000000                 //�v�f�t�`// BY //�v�j�O��// .                                   
000000 01  �v�j�|���J�萔���e�[�u��.                                                        
000000   03  �v���J�e�[�u���ԍ����          OCCURS 30.                                    
000000     05  �v���J�̔��b���              OCCURS 10.                                 
000000       07  �v���J���J���z�я��        OCCURS 5.                                    
000000         09  �v���J���J�萔��          PIC 9(05)V9(02) COMP-3.                    
000000         09  �v���J���J�萔����        PIC 9(02)V9(04) COMP-3.                     
000000 01  �v�j�|���J�萔���v�j�s�a�k.  
      *20141028�C���J�n                                                     
000000*   03  �v�����Q�[���u���b�N            OCCURS 30.
         03  �v�����Q�[���u���b�N            OCCURS 3.                                    
      *20141028�C���I��
000000     05  �v�����Q�[���^�C�v            PIC 9(02).                                  
000000     05  �v�����u���b�N�R�[�h          COMP-1.                                      
000000     05  �v�����񍆕ʏ��              OCCURS 21.                                 
000000       07  �v������                  COMP-1.                                 
000000       07  �v�����̔��b���            OCCURS 10.                                 
000000         09  �v�����̔��`���l���R�[�h  PIC 9(02).                                     
000000         09  �v����������z            PIC 9(13) COMP-3.                         
000000         09  �v�����݌v�萔��          OCCURS  5                                  
000000                                       PIC 9(13)V9(02) COMP-3.            
000000         09  �v�����萔���␳�z        PIC 9(13)V9(02) COMP-3.                     
      *20141028�ǉ��J�n
       01  �v�j�|���J�萔���v�j�s�a�k��    PIC 9(02).
      *20141028�ǉ��I��
000000 01  �v�j�|�̂b�ʎ萔���e�[�u��.                                                       
000000   03  �v�|�̂b�ʔ̂b���              OCCURS 10.                                  
000000     05  �v�|�̂b�ʃQ�[���u���b�N      OCCURS 30.                                     
000000       07  �v�|�̂b�ʃQ�[���^�C�v      PIC 9(02).                                    
000000       07  �v�|�̂b�ʃu���b�N�R�[�h    COMP-1.                                        
000000       07  �v�|�̂b�ʉ񍆏��          OCCURS 21.                                  
000000         09  �v�|�̂b�ʉ�            COMP-1.                                   
000000         09  �v�|�̂b�ʋ��z�єԍ�      PIC 9(01).                                   
      *20141028�C���J�n
000000*01  �v�|�@�֕ʎ萔���s�a�k�O�P.                                                       
000000*  03  �v�|�@�֕ʔ̂b���O�P.                                                       
000000*    05  �v�|�@�֕ʑ��Ǝҏ��O�P     OCCURS 999.                                    
000000*      07  �v�|�@�֕ʑ��Ǝ҂b�c�O�P   PIC 9(03) COMP-3.                              
000000*      07  �v�|�@�֕ʃQ�[���a�k�j�O�P   OCCURS 30.                                     
000000*        09  �v�|�@�֕ʃQ�[���^�C�v�O�P PIC 9(02).                                     
000000*        09  �v�|�@�֕ʃu���b�N�b�c�O�P COMP-1.                                        
000000*        09  �v�|�@�֕ʉ񍆏��O�P     OCCURS 21.                                   
000000*          11  �v�|�@�֕ʉ񍆂O�P       USAGE COMP-1.                              
000000*          11  �v�|�@�֕ʋ��z�єԍ��O�P PIC 9(01).                                    
      *20141028�C���I��
000000 01  �v�|�@�֕ʎ萔���s�a�k�O�Q.                                                       
000000   03  �v�|�@�֕ʔ̂b���O�Q.                                                       
      *20141028�C���J�n
000000*     05  �v�|�@�֕ʑ��Ǝҏ��O�Q     OCCURS 999.                                    
           05  �v�|�@�֕ʑ��Ǝҏ��O�Q     OCCURS 9.
      *20141028�C���I��
000000       07  �v�|�@�֕ʑ��Ǝ҂b�c�O�Q   PIC 9(03).                                     
000000       07  �v�|�@�֕ʃQ�[���a�k�j�O�Q   OCCURS 30.                                     
000000         09  �v�|�@�֕ʃQ�[���^�C�v�O�Q PIC 9(02).                                     
000000         09  �v�|�@�֕ʃu���b�N�b�c�O�Q COMP-1.                                        
000000         09  �v�|�@�֕ʉ񍆏��O�Q     OCCURS 21.                                   
000000           11  �v�|�@�֕ʉ񍆂O�Q       USAGE COMP-1.                              
000000           11  �v�|�@�֕ʋ��z�єԍ��O�Q PIC 9(01).                                    
000000 01  �k�m�j�`����.                                                              
000000     COPY CWLNKA .                                                        
000000 01  �t���O�l.                                                                
000000   03  �n�m                            PIC 9(01) VALUE 1.                   
000000   03  �n�e�e                          PIC 9(01) VALUE 0.                    
000000 01  ��Q������.                                                              
000000   03  �d���ʔԎ��                    PIC 9(01) VALUE 1.                       
000000   03  ���ʃR�[�h���                  PIC 9(01) VALUE 0.                        
000000 01  ���R�[�h�h�c.                                                              
000000   03  ����                            PIC 9(01) VALUE 1.                   
000000   03  �������                        PIC 9(01) VALUE 2.                     
000000   03  �x��                            PIC 9(01) VALUE 4.                   
000000   03  �x�����                        PIC 9(01) VALUE 5.                     
000000   03  ������x��                      PIC 9(01) VALUE 6.                      
000000   03  ��֌�                          PIC 9(01) VALUE 7.                    
000000   03  ��Q���                        PIC 9(01) VALUE 8.                     
000000   03  �����֌�                      PIC 9(01) VALUE 9.                      
000000 01  �Q�[���^�C�v.                                                              
000000   03  �i���o�[�Y                      PIC 9(01) VALUE 1.                      
000000   03  ���g                            PIC 9(01) VALUE 2.                   
000000 01  ���q.                                                                  
000000   03  ���q�i���o�[�Y�R                PIC 9(01) VALUE 3.                         
000000   03  ���q�i���o�[�Y�S                PIC 9(01) VALUE 4.                         
000000 01  �^�C�v�敪.                                                               
000000   03  �X�g���[�g                      PIC 9(01) VALUE 1.                      
000000   03  �{�b�N�X                        PIC 9(01) VALUE 2.                     
000000   03  �X�g���[�g�{�b�N�X              PIC 9(01) VALUE 3.                          
000000   03  �t�����g�y�A                    PIC 9(01) VALUE 4.                       
000000   03  �o�b�N�y�A                      PIC 9(01) VALUE 5.                      
000000   03  �`�����X                        PIC 9(01) VALUE 6.                     
000000   03  �ʏ�                            PIC 9(01) VALUE 2.                   
000000   03  �R���r�V                        PIC 9(01) VALUE 3.                     
000000   03  �R���r�W                        PIC 9(01) VALUE 4.                     
000000   03  �R���r�X                        PIC 9(01) VALUE 5.                     
000000   03  �R���r�P�O                      PIC 9(01) VALUE 6.                      
      *20141028�ǉ��J�n
       01  KUMN-PARAM.
           COPY CLKUMN.
       01  DTCP-PARAM.                                                         
           COPY CLDTCP.
       01  SRLC-PARAM.                                                         
           COPY CLSRLC.
       01  IDXC-PARAM.                                                         
           COPY CLIDXC.
      *20141028�ǉ��I��
000000 PROCEDURE DIVISION .                                                     
000000 MAIN-RTN .                                                               
000000     PERFORM S000-RTN THRU CX00002                                        
000000     PERFORM P000-RTN THRU CX00003                                        
000000     PERFORM E000-RTN THRU CX00004 .                                      
000000 CX00001. STOP RUN.                                                       
           DISPLAY "CX00001" UPON CONSOLE
000000 S000-RTN .                                                               
000000       OPEN INPUT �^�p�Ǘ��e .                                                 
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00027.                           
000000         DISPLAY "HBHUN370-01 VRUNYKAN OPEN ERROR ",                      
000000                   STS-FILE1 " " STS-FILE2                                
000000         STOP RUN .                                                     
000000 CX00027.                                                                 
           DISPLAY "CX00027" UPON CONSOLE
000000       OPEN INPUT ����e .                                                   
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00028.                           
000000         DISPLAY "HBHUN370-02 VIURIBA  OPEN ERROR ",                      
000000                   STS-FILE1 " " STS-FILE2                                
000000         STOP RUN .                                                     
000000 CX00028.                                                                 
           DISPLAY "CX00028" UPON CONSOLE
000000       OPEN INPUT �Q�[���e .                                                  
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00029.                           
000000         DISPLAY "HBHUN370-03 VIGAME   OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00029.                                                                 
           DISPLAY "CX00029" UPON CONSOLE
000000       OPEN INPUT �Q�[�����[���e .                                               
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00030.                           
000000         DISPLAY "HBHUN370-04 VIGMRULE OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00030.                                                                 
           DISPLAY "CX00030" UPON CONSOLE
000000       OPEN INPUT �Q�[���󋵂e .                                                
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00031.                           
000000         DISPLAY "HBHUN370-05 VIGAMJYO OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00031.                                                                 
           DISPLAY "CX00031" UPON CONSOLE
000000       OPEN INPUT �Ǝ҂e .                                                   
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00032.                           
000000         DISPLAY "HBHUN370-06 VIGYOSYA OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00032.                                                                 
           DISPLAY "CX00032" UPON CONSOLE
000000       OPEN INPUT ���Z�@�֎萔���ύX�f���e .                                         
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00033.                           
000000         DISPLAY "HBHUN370-07 VITSGMKY OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00033.                                                                 
           DISPLAY "CX00033" UPON CONSOLE
000000       OPEN INPUT �̔��b�ʎ萔���ύX�f���e .                                         
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00034.                           
000000         DISPLAY "HBHUN370-08 VITSGMCH OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00034.                                                                 
           DISPLAY "CX00034" UPON CONSOLE
000000       OPEN INPUT �̔��`���l���e .                                               
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00035.                           
000000         DISPLAY "HBHUN370-09 VICHNNEL OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00035.                                                                 
           DISPLAY "CX00035" UPON CONSOLE
000000       OPEN INPUT ���J�萔���e .                                                
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00036.                           
000000         DISPLAY "HBHUN370-10 VIUTRESU OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00036.                                                                 
           DISPLAY "CX00036" UPON CONSOLE
000000       OPEN OUTPUT ���z�x�����v�j�e .                                            
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00037.                           
000000         DISPLAY "HBHUN370-11 SQWKGKSH OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00037.                                                                 
           DISPLAY "CX00037" UPON CONSOLE
000000       OPEN OUTPUT ����������v�j�e .                                             
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00038.                           
000000         DISPLAY "HBHUN370-12 SQWURISE OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00038.                                                                 
           DISPLAY "CX00038" UPON CONSOLE
000000       OPEN OUTPUT ����ʔ���v�j�e .                                             
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00039.                           
000000         DISPLAY "HBHUN370-13 SQWURIUR OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00039.                                                                 
           DISPLAY "CX00039" UPON CONSOLE
000000       OPEN OUTPUT ���ꎞ�ԑѕʔ���v�j�e .                                          
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00040.                           
000000         DISPLAY "HBHUN370-14 SQWJIKAN OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00040.                                                                 
           DISPLAY "CX00040" UPON CONSOLE
000000       OPEN OUTPUT �w�����ʐ\���󋵂v�j�e .                                          
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00041.                           
000000         DISPLAY "HBHUN370-15 SQWKNYJY OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00041.                                                                 
           DISPLAY "CX00041" UPON CONSOLE
000000       OPEN OUTPUT ����ʐ��Z�\�v�j�e .                                            
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00042.                           
000000         DISPLAY "HBHUN370-16 SQWURISS OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00042.                                                                 
           DISPLAY "CX00042" UPON CONSOLE
000000       OPEN OUTPUT �񍆕ʐ��Z�\�v�j�e .                                            
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00043.                           
000000         DISPLAY "HBHUN370-17 SQWKAISS OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00043.                                                                 
           DISPLAY "CX00043" UPON CONSOLE
000000       OPEN OUTPUT �c�̕ʐ��Z�\�v�j�e .                                            
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00044.                           
000000         DISPLAY "HBHUN370-18 SQWDNSSN OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00044.                                                                 
           DISPLAY "CX00044" UPON CONSOLE
000000       OPEN OUTPUT �G���[�v�j�e .                                               
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00045.                           
000000         DISPLAY "HBHUN370-19 SQTRONRI OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00045.                                                                 
           DISPLAY "CX00045" UPON CONSOLE
000000       OPEN OUTPUT ���J�萔���v�j�e .                                             
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00046.                           
000000         DISPLAY "HBHUN370-20 VIWURTES OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00046.                                                                 
           DISPLAY "CX00046" UPON CONSOLE
000000       OPEN OUTPUT �O���̔��p������v�j�e .                                         
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00047.                           
000000         DISPLAY "HBHUN370-21 SQWGURAG OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00047.                                                                 
           DISPLAY "CX00047" UPON CONSOLE
000000       OPEN OUTPUT �O�̗p��Q����s�v�j�e .                                         
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00048.                           
000000         DISPLAY "HBHUN370-22 SQWGTOFK OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00048.                                                                 
           DISPLAY "CX00048" UPON CONSOLE
000000       OPEN INPUT �r�f���Ǘ��e .                                               
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00049.                           
000000         DISPLAY "HBHUN370-23 VRSGJYO  OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00049.                                                                 
           DISPLAY "CX00049" UPON CONSOLE
000000     MOVE 1 TO �q�j�|�^�p�Ǘ��e
             DISPLAY "�^�p�Ǘ��e"  UPON CONSOLE                                            
000000       READ �^�p�Ǘ��e INVALID CONTINUE . 
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00050.                  
000000         DISPLAY "HBHUN370-24 VRUNYKAN READ ERROR ",                      
000000                   STS-FILE1 " " STS-FILE2                                
000000         STOP RUN .                                                     
000000 CX00050.                                                                 
           DISPLAY "CX00050" UPON CONSOLE
000000     IF NOT(�t�m�j�P�Ɩ����t = �t�m�j�P�o�b�`�Ɩ����t)GO TO CX00051.                         
000000     MOVE �t�m�j�P����敪 TO �v�j�|����敪 .                                           
000000     GO TO CX00052.                                                       
000000 CX00051.                                                                 
           DISPLAY "CX00051" UPON CONSOLE
000000     IF NOT(�t�m�j�P����敪 = "1")GO TO CX00053.                                 
000000     MOVE "2" TO �v�j�|����敪 .                                                
000000     GO TO CX00054.                                                       
000000 CX00053.                                                                 
           DISPLAY "CX00053" UPON CONSOLE
000000     MOVE "1" TO �v�j�|����敪 .                                                
000000 CX00054.                                                                 
           DISPLAY "CX00054" UPON CONSOLE
000000 CX00052.                                                                 
           DISPLAY "CX00052" UPON CONSOLE
000000     IF NOT(�v�j�|����敪 = "1")GO TO CX00055.                                  
000000         OPEN  INPUT  �g�����U�N�V�����e�|�` .                                       
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00056.                           
000000           DISPLAY "HBHUN370-25 VRTRNSA  OPEN ERROR ",                    
000000                   STS-FILE1 " " STS-FILE2                                
000000           STOP RUN .                                                   
000000 CX00056.                                                                 
           DISPLAY "CX00056" UPON CONSOLE
000000         OPEN  INPUT  �O���̔��p�������e�|�` .                                      
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00057.                           
000000           DISPLAY "HBHUN370-26 VRTKSYGA OPEN ERROR ",                    
000000                   STS-FILE1 " " STS-FILE2                                
000000           STOP RUN .                                                   
000000 CX00057.                                                                 
           DISPLAY "CX00057" UPON CONSOLE
000000         OPEN  INPUT  �����Q�[���e�|�` .                                          
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00058.                           
000000           DISPLAY "HBHUN370-27 VIHATGMA OPEN ERROR ",                    
000000                   STS-FILE1 " " STS-FILE2                                
000000           STOP RUN .                                                   
000000 CX00058.                                                                 
           DISPLAY "CX00058" UPON CONSOLE
000000     GO TO CX00059.                                                       
000000 CX00055.                                                                 
           DISPLAY "CX00055" UPON CONSOLE
000000         OPEN  INPUT  �g�����U�N�V�����e�|�a .                                       
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00060.                           
000000           DISPLAY "HBHUN370-28 VRTRNSB  OPEN ERROR ",                    
000000                   STS-FILE1 " " STS-FILE2                                
000000           STOP RUN .                                                   
000000 CX00060.                                                                 
           DISPLAY "CX00060" UPON CONSOLE
000000         OPEN  INPUT  �O���̔��p�������e�|�a .                                      
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00061.                           
000000           DISPLAY "HBHUN370-29 VRTKSYGB OPEN ERROR ",                    
000000                   STS-FILE1 " " STS-FILE2                                
000000           STOP RUN .                                                   
000000 CX00061.                                                                 
           DISPLAY "CX00061" UPON CONSOLE
000000         OPEN  INPUT  �����Q�[���e�|�a .                                          
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00062.                           
000000           DISPLAY "HBHUN370-30 VIHATGMB OPEN  ERROR ",                   
000000                   STS-FILE1 " " STS-FILE2                                
000000           STOP RUN .                                                   
000000 CX00062.                                                                 
           DISPLAY "CX00062" UPON CONSOLE
000000 CX00059.
           DISPLAY "CX00059" UPON CONSOLE
      *20141028�C���J�n                                                                 
000000*       ACCEPT  �ϐ��̔��`���l���R�[�h  FROM  SPCHNL                                  
000000         OPEN  INPUT  �ϐ��̔��`���l���R�[�h�e .                                          
000000     IF STS-FILE1 NOT = ZERO                           
000000           DISPLAY "HBHUN370-99 NEWFILE OPEN  ERROR ",                   
000000                   STS-FILE1 " " STS-FILE2                                
000000           STOP RUN .
           DISPLAY "�ϐ��̔��`���l���R�[�h�e"  UPON CONSOLE 
           READ �ϐ��̔��`���l���R�[�h�e AT END CONTINUE. 
           MOVE SPCHNL TO �ϐ��̔��`���l���R�[�h
000000         CLOSE �ϐ��̔��`���l���R�[�h�e .                                                 
000000     IF STS-FILE1 NOT = ZERO                           
000000           DISPLAY "HBHUN370-99 NEWFILE CLOSE ERROR ",                   
000000           STOP RUN . 
      *20141028�C���I��
000000     MOVE �ϐ��̔��`���l���R�[�h TO �v�j�|�̔��`���l���R�[�h                                     
000000     MOVE 1 TO SGF-KEY
           DISPLAY "�r�f���Ǘ��e"  UPON CONSOLE                                                    
000000       READ �r�f���Ǘ��e INVALID CONTINUE .                                    
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00063.                  
000000         DISPLAY "HBHUN370-31 VRSGJYO  READ ERROR ",                      
000000                   STS-FILE1 " " STS-FILE2                                
000000         STOP RUN .                                                     
000000 CX00063.                                                                 
           DISPLAY "CX00063" UPON CONSOLE
000000       INITIALIZE �v�j�|�O�̗p������v�j�q                                           
000000       INITIALIZE �v�j�|����ʐ��Z�\�v�j�q                                            
000000       INITIALIZE ���ꎞ�ԑѕʔ���v�j�q                                             
000000       INITIALIZE �v�j�|����                                                   
000000       SET PTR_SBCDBEFORE TO ADDRESS OF �v�j�|�P�U���ʃR�[�h.                       
000000       SET PTR_SBCDAFTER  TO ADDRESS OF �v�j�|�Q�S���ʃR�[�h.                       
000000 CX00002. EXIT.                                                           
000000 P000-RTN .                                                               
000000     PERFORM P100-RTN THRU CX00005                                        
000000     PERFORM P200-RTN THRU CX00007 .                                      
000000     IF NOT(�v�j�|�̔��`���l���R�[�h = 02)GO TO CX00064.                              
000000     PERFORM P300-RTN THRU CX00008 .                                      
000000 CX00064.
           DISPLAY "CX00064" UPON CONSOLE
           DISPLAY "CX00064"  UPON CONSOLE                                                                 
000000     MOVE �n�e�e TO �e�k�f�s�q�m�r                                                  
000000     MOVE 1 TO �h�c�w�i�[���R�[�h                                                  
000000     PERFORM P400-RTN THRU CX00009 .                                      
000000 CX00065. IF NOT(�e�k�f�s�q�m�r = �n�e�e)GO TO CX00066.
           DISPLAY "CX00065" UPON CONSOLE
           DISPLAY "CX00065"  UPON CONSOLE                              
000000 CX00067. IF NOT(�h�c�w�i�[���R�[�h <= �v�j�s���R�[�h�i�[����)GO TO CX00068.                  
000000     IF NOT(�v�j�|����敪 = "1")GO TO CX00069.                                  
000000     MOVE �s�q�m�`�ʏ�� (�h�c�w�i�[���R�[�h) TO �v�j�s�ʏ�� .                               
000000     GO TO CX00070.
           DISPLAY "CX00067"  UPON CONSOLE                                                       
000000 CX00069.
           DISPLAY "CX00069"  UPON CONSOLE                                                                 
000000     MOVE �s�q�m�a�ʏ�� (�h�c�w�i�[���R�[�h) TO �v�j�s�ʏ�� .                               
000000 CX00070.
           DISPLAY "CX00070" UPON CONSOLE
           DISPLAY "CX00070"  UPON CONSOLE                                                                 
000000     IF NOT(�v�j�s���R�[�h��� = ZERO)GO TO CX00071.                               
000000     PERFORM P500-RTN THRU CX00010 .                                      
000000     IF NOT(�v�j�|�̔��`���l���R�[�h = 01)GO TO CX00072.                              
000000     IF NOT(�v�j�s���R�[�h�h�c = ���� OR ��֌�)GO TO CX00073.                          
000000     PERFORM P600-RTN THRU CX00011 .                                      
000000     GO TO CX00074.                                                       
000000 CX00073. IF NOT(�v�j�s���R�[�h�h�c = �x�� OR ������x��)GO TO CX00075.
           DISPLAY "CX00073" UPON CONSOLE
           DISPLAY "CX00073"  UPON CONSOLE                   
000000     PERFORM P800-RTN THRU CX00013 .                                      
000000     GO TO CX00074.                                                       
000000 CX00075. IF NOT(�v�j�s���R�[�h�h�c = �����֌�)GO TO CX00076.
           DISPLAY "CX00075" UPON CONSOLE
           DISPLAY "CX00075"  UPON CONSOLE                         
000000                 CONTINUE .                                               
000000 CX00076.                                                                 
           DISPLAY "CX00076" UPON CONSOLE
000000 CX00074.
           DISPLAY "CX00074" UPON CONSOLE
           DISPLAY "CX00074"  UPON CONSOLE                                                                                          
000000     GO TO CX00077.                                                       
000000 CX00072.
           DISPLAY "CX00072" UPON CONSOLE
           DISPLAY "CX00072"  UPON CONSOLE                                                                 
000000     IF NOT(�v�j�s���R�[�h�h�c = ����)GO TO CX00078.                                 
000000     PERFORM P700-RTN THRU CX00012 .                                      
000000     GO TO CX00079.                                                       
000000 CX00078. IF NOT(�v�j�s���R�[�h�h�c = ��Q���)GO TO CX00080.                          
           DISPLAY "CX00078" UPON CONSOLE
000000                 CONTINUE .                                               
000000     GO TO CX00079.                                                       
000000 CX00080.
           DISPLAY "CX00080" UPON CONSOLE
           DISPLAY "CX00080"  UPON CONSOLE                                                                  
000000     MOVE �n�m TO �e�k�f�G���[                                                    
000000     MOVE "1" TO �v�j�s���`�F�b�N�t���O                                              
000000     PERFORM ERWK-RTN THRU CX00024 .                                      
000000 CX00079.                                                                 
           DISPLAY "CX00079" UPON CONSOLE
000000 CX00077.                                                                 
           DISPLAY "CX00077" UPON CONSOLE
000000 CX00071.
           DISPLAY "CX00071" UPON CONSOLE
           DISPLAY "CX00071"  UPON CONSOLE                                                                  
000000     COMPUTE �h�c�w�i�[���R�[�h = �h�c�w�i�[���R�[�h + 1 .                                  
000000     GO TO CX00067.                                                       
000000 CX00068.
           DISPLAY "CX00068" UPON CONSOLE
           DISPLAY "CX00068"  UPON CONSOLE                                                                 
000000     PERFORM P400-RTN THRU CX00009                                        
000000     MOVE 1 TO �h�c�w�i�[���R�[�h .                                                
000000     GO TO CX00065.                                                       
000000 CX00066.
           DISPLAY "CX00066" UPON CONSOLE
           DISPLAY "CX00066"  UPON CONSOLE                                                                 
000000     PERFORM WK-WRITE-RTN THRU CX00023                                    
000000     PERFORM ERR-REC-RTN THRU CX00025 .                                   
000000 CX00003. EXIT.                                                           
000000 E000-RTN .
           DISPLAY "E000-RTN"  UPON CONSOLE                                                                
000000       COMMIT                                                             
000000       CLOSE �^�p�Ǘ��e .                                                      
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00081.                           
000000         DISPLAY "HBHUN370-32 VRUNYKAN CLOSE ERROR ",                     
000000                   STS-FILE1 " " STS-FILE2                                
000000         STOP RUN .                                                     
000000 CX00081.                                                                 
           DISPLAY "CX00081" UPON CONSOLE
000000       CLOSE ����e .                                                        
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00082.                           
000000         DISPLAY "HBHUN370-33 VIURIBA  CLOSE ERROR ",                     
000000                   STS-FILE1 " " STS-FILE2                                
000000         STOP RUN .                                                     
000000 CX00082.                                                                 
           DISPLAY "CX00082" UPON CONSOLE
000000       CLOSE �Q�[���e .                                                       
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00083.                           
000000         DISPLAY "HBHUN370-34 VIGAME   CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00083.                                                                 
           DISPLAY "CX00083" UPON CONSOLE
000000       CLOSE �Q�[�����[���e .                                                    
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00084.                           
000000         DISPLAY "HBHUN370-35 VIGMRULE CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00084.                                                                 
           DISPLAY "CX00084" UPON CONSOLE
000000       CLOSE �Q�[���󋵂e .                                                     
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00085.                           
000000         DISPLAY "HBHUN370-36 VIGAMJYO CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00085.                                                                 
           DISPLAY "CX00085" UPON CONSOLE
000000       CLOSE �Ǝ҂e .                                                        
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00086.                           
000000         DISPLAY "HBHUN370-37 VIGYOSYA CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00086.                                                                 
           DISPLAY "CX00086" UPON CONSOLE
000000       CLOSE ���Z�@�֎萔���ύX�f���e .                                              
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00087.                           
000000         DISPLAY "HBHUN370-38 VITSGMKY CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00087.                                                                 
           DISPLAY "CX00087" UPON CONSOLE
000000       CLOSE �̔��b�ʎ萔���ύX�f���e .                                              
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00088.                           
000000         DISPLAY "HBHUN370-39 VITSGMCH CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00088.                                                                 
           DISPLAY "CX00088" UPON CONSOLE
000000       CLOSE �̔��`���l���e .                                                    
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00089.                           
000000         DISPLAY "HBHUN370-40 VICHNNEL CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00089.                                                                 
           DISPLAY "CX00089" UPON CONSOLE
000000       CLOSE ���J�萔���e .                                                     
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00090.                           
000000         DISPLAY "HBHUN370-41 VIUTRESU CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00090.                                                                 
           DISPLAY "CX00090" UPON CONSOLE
000000       CLOSE ���z�x�����v�j�e .                                                  
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00091.                           
000000         DISPLAY "HBHUN370-42 SQWKGKSH CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00091.                                                                 
           DISPLAY "CX00091" UPON CONSOLE
000000       CLOSE ����������v�j�e .                                                   
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00092.                           
000000         DISPLAY "HBHUN370-43 SQWURISE CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00092.                                                                 
           DISPLAY "CX00092" UPON CONSOLE
000000       CLOSE ����ʔ���v�j�e .                                                   
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00093.                           
000000         DISPLAY "HBHUN370-44 SQWURIUR CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00093.                                                                 
           DISPLAY "CX00093" UPON CONSOLE
000000       CLOSE ���ꎞ�ԑѕʔ���v�j�e .                                                
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00094.                           
000000         DISPLAY "HBHUN370-45 SQWJIKAN CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00094.                                                                 
           DISPLAY "CX00094" UPON CONSOLE
000000       CLOSE �w�����ʐ\���󋵂v�j�e .                                                
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00095.                           
000000         DISPLAY "HBHUN370-46 SQWKNYJY CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00095.                                                                 
           DISPLAY "CX00095" UPON CONSOLE
000000       CLOSE ����ʐ��Z�\�v�j�e .                                                  
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00096.                           
000000         DISPLAY "HBHUN370-47 SQWURISS CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00096.                                                                 
           DISPLAY "CX00096" UPON CONSOLE
000000       CLOSE �񍆕ʐ��Z�\�v�j�e .                                                  
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00097.                           
000000         DISPLAY "HBHUN370-48 SQWKAISS CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00097.                                                                 
           DISPLAY "CX00097" UPON CONSOLE
000000       CLOSE �c�̕ʐ��Z�\�v�j�e .                                                  
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00098.                           
000000         DISPLAY "HBHUN370-49 SQWDNSSN CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00098.                                                                 
           DISPLAY "CX00098" UPON CONSOLE
000000       CLOSE �G���[�v�j�e .                                                     
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00099.                           
000000         DISPLAY "HBHUN370-50 SQTRONRI CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00099.                                                                 
           DISPLAY "CX00099" UPON CONSOLE
000000       CLOSE ���J�萔���v�j�e .                                                   
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00100.                           
000000         DISPLAY "HBHUN370-51 VIWURTES CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00100.                                                                 
           DISPLAY "CX00100" UPON CONSOLE
000000       CLOSE �O���̔��p������v�j�e .                                               
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00101.                           
000000         DISPLAY "HBHUN370-52 SQWGURAG CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00101.                                                                 
           DISPLAY "CX00101" UPON CONSOLE
000000       CLOSE �O�̗p��Q����s�v�j�e .                                               
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00102.                           
000000         DISPLAY "HBHUN370-53 SQWGTOFK CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00102.                                                                 
           DISPLAY "CX00102" UPON CONSOLE
000000       CLOSE �r�f���Ǘ��e .                                                    
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00103.                           
000000         DISPLAY "HBHUN370-54 VRSGJYO  CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00103.                                                                 
           DISPLAY "CX00103" UPON CONSOLE
000000     IF NOT(�v�j�|����敪 = "1")GO TO CX00104.                                  
000000         CLOSE �g�����U�N�V�����e�|�` .                                              
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00105.                           
000000           DISPLAY "HBHUN370-55 VRTRNSA  CLOSE ERROR ",                   
000000           STOP RUN .                                                   
000000 CX00105.                                                                 
           DISPLAY "CX00105" UPON CONSOLE
000000         CLOSE �O���̔��p�������e�|�` .                                             
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00106.                           
000000           DISPLAY "HBHUN370-56 VRTKSYGA CLOSE ERROR ",                   
000000           STOP RUN .                                                   
000000 CX00106.                                                                 
           DISPLAY "CX00106" UPON CONSOLE
000000         CLOSE �����Q�[���e�|�` .                                                 
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00107.                           
000000           DISPLAY "HBHUN370-57 VIHATGMA CLOSE ERROR ",                   
000000           STOP RUN .                                                   
000000 CX00107.                                                                 
           DISPLAY "CX00107" UPON CONSOLE
000000     GO TO CX00108.                                                       
000000 CX00104.                                                                 
           DISPLAY "CX00104" UPON CONSOLE
000000         CLOSE �g�����U�N�V�����e�|�a .                                              
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00109.                           
000000           DISPLAY "HBHUN370-58 VRTRNSB  CLOSE ERROR ",                   
000000           STOP RUN .                                                   
000000 CX00109.                                                                 
           DISPLAY "CX00109" UPON CONSOLE
000000         CLOSE �O���̔��p�������e�|�a .                                             
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00110.                           
000000           DISPLAY "HBHUN370-59 VRTKSYGB CLOSE ERROR ",                   
000000           STOP RUN .                                                   
000000 CX00110.                                                                 
           DISPLAY "CX00110" UPON CONSOLE
000000         CLOSE �����Q�[���e�|�a .                                                 
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00111.                           
000000           DISPLAY "HBHUN370-60 VIHATGMB CLOSE ERROR ",                   
000000           STOP RUN .                                                   
000000 CX00111.                                                                 
           DISPLAY "CX00111" UPON CONSOLE
000000 CX00108.                                                                 
           DISPLAY "CX00108" UPON CONSOLE
      *20141027�C���J�n
000000*       @ZCTMSGOT(MSGID = #BH001                                           
000000*                 PROGID = HBHUN370); .                                    
      *20141027�C���I��
000000 CX00004. EXIT.                                                           
000000 P100-RTN .
             DISPLAY "P100-RTN"  UPON CONSOLE                                                               
000000       INITIALIZE �v�j�|�񍆏��e�[�u��                                             
000000       INITIALIZE �v�j�|�c�̕ʐ��Z�\                                               
000000       INITIALIZE �v�j�|���J�萔���v�j�s�a�k                                           
      *20141102�ǉ��J�n
      *       INITIALIZE �t���O
      *20141102�ǉ��I��
      *20141028�ǉ��J�n
           MOVE ZERO TO �v�j�|�c�̕ʐ��Z�\��
      *20141028�ǉ��I��
000000     MOVE 1 TO �h�c�w�Q�[��                                                     
000000     MOVE 1 TO �b�m�s�Q�[��                                                     
000000     MOVE �n�e�e TO �e�k�f�g�s�f�l                                                  
000000     PERFORM P110-RTN THRU CX00006 .                                      
      *20141028�C���J�n 
000000* CX00112. IF NOT( (�b�m�s�Q�[�� < 31) AND (�e�k�f�g�s�f�l = �n�e�e)                       
       CX00112. IF NOT( (�v�j�|�c�̕ʐ��Z�\�� < 11) AND (�e�k�f�g�s�f�l = �n�e�e)
      *20141028�C���I��
000000     )GO TO CX00113.
                  DISPLAY "CX00112"  UPON CONSOLE                                                      
000000     IF NOT( (�v�j�f��������t���O = �n�e�e) AND (�v�j�f�������t���O = �n�m)                      
000000     )GO TO CX00114.                                                      
000000     COMPUTE �v�j�f�� = �v�j�f�� + 1 .                                          
000000 CX00114.
           DISPLAY "CX00114" UPON CONSOLE
           DISPLAY "CX00114"  UPON CONSOLE                                                                 
000000     MOVE �v�j�f�Q�[���^�C�v TO �f�l�i�x�Q�[���^�C�v                                         
000000     MOVE �v�j�f�u���b�N�R�[�h TO �f�l�i�x�u���b�N�R�[�h 
           DISPLAY "�Q�[���󋵂e"  UPON CONSOLE                                      
000000         READ �Q�[���󋵂e  INVALID  CONTINUE .                                 
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00115.                  
000000           DISPLAY "HBHUN370-61 VIGAMJYO READ ERROR ",                    
000000                     STS-FILE1 " " STS-FILE2                              
000000           STOP RUN .                                                   
000000 CX00115.
           DISPLAY "CX00115" UPON CONSOLE
           DISPLAY "CX00115"  UPON CONSOLE                                                                 
000000     MOVE �v�j�f�Q�[���^�C�v TO �v��|�Q�[���^�C�v (�b�m�s�Q�[��)                                 
000000     MOVE �v�j�f�u���b�N�R�[�h TO �v��|�u���b�N�R�[�h (�b�m�s�Q�[��)                               
000000     MOVE �v�j�f�Q�[���^�C�v TO �v�c���Q�[���^�C�v (�b�m�s�Q�[��)                                 
000000     MOVE �v�j�f�u���b�N�R�[�h TO �v�c���u���b�N�R�[�h (�b�m�s�Q�[��)                               
000000     MOVE �v�j�f�Q�[���^�C�v TO �v�����Q�[���^�C�v (�b�m�s�Q�[��)                                 
000000     MOVE �v�j�f�u���b�N�R�[�h TO �v�����u���b�N�R�[�h (�b�m�s�Q�[��)                               
000000     MOVE 1 TO �b�m�s�� .                                                    
000000 CX00116. IF NOT( (�b�m�s�� - 1 <= �r�f�i�P�p���񍆐������l) AND ( (�v�j�f�� +              
000000     �b�m�s�� - 1) <= �f�l�i�x�o�^�ςݍő��))GO TO CX00117.
           DISPLAY "CX00116" UPON CONSOLE
           DISPLAY "CX00116"  UPON CONSOLE                            
000000     COMPUTE �v��|�� (�b�m�s�Q�[�� �b�m�s��) = �v�j�f�� + �b�m�s�� - 1                     
000000     COMPUTE �v������ (�b�m�s�Q�[�� �b�m�s��) = �v�j�f�� + �b�m�s�� - 1                     
000000     COMPUTE �v�c���� (�b�m�s�Q�[�� �b�m�s��) = �v�j�f�� + �b�m�s�� - 1                     
000000     MOVE �v�j�f�Q�[���^�C�v TO �f�`�l�d�Q�[���^�C�v                                         
000000     MOVE �v�j�f�u���b�N�R�[�h TO �f�`�l�d�u���b�N�R�[�h                                       
000000     COMPUTE �f�`�l�d�� = �v�j�f�� + �b�m�s�� - 1 
           DISPLAY "�Q�[���e"  UPON CONSOLE                                  
000000           READ �Q�[���e  INVALID  CONTINUE .                                 
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00118.                  
000000             DISPLAY "HBHUN370-62 VIGAME READ ERROR ",                    
000000                       STS-FILE1 " " STS-FILE2                            
000000             STOP RUN .                                                 
000000 CX00118.
           DISPLAY "CX00118" UPON CONSOLE
           DISPLAY "CX00118"  UPON CONSOLE                                                                 
000000     MOVE �v�j�f�Q�[���^�C�v TO �f�l�q�Q�Q�[���^�C�v                                         
000000     MOVE �f�`�l�d�Q�[�����[���ԍ� TO �f�l�q�Q�Q�[�����[���ԍ� 
           DISPLAY "�Q�[�����[���e"  UPON CONSOLE                                   
000000           READ �Q�[�����[���e  INVALID  CONTINUE .                              
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00119.                  
000000             DISPLAY "HBHUN370-63 VIGMRULE READ ERROR ",                  
000000                       STS-FILE1 " " STS-FILE2                            
000000             STOP RUN .                                                 
000000 CX00119.
           DISPLAY "CX00119" UPON CONSOLE
           DISPLAY "CX00119"  UPON CONSOLE                                                                 
000000     MOVE �f�l�q�Q����e�[�u���ԍ� TO �v��|���J�萔���s�a�k�ԍ� (�b�m�s�Q�[�� �b�m�s��)                    
000000     MOVE �f�l�q�Q�P�� TO �v��|�P�� (�b�m�s�Q�[�� �b�m�s��)                                  
000000     COMPUTE �b�m�s�� = �b�m�s�� + 1 .                                          
000000     GO TO CX00116.                                                       
000000 CX00117.
           DISPLAY "CX00117" UPON CONSOLE
           DISPLAY "CX00117"  UPON CONSOLE                                                                 
000000     COMPUTE �b�m�s�Q�[�� = �b�m�s�Q�[�� + 1                                          
      *20141028�ǉ��J�n
           IF �b�m�s�Q�[�� > 4 
               MOVE 1 TO �b�m�s�Q�[��
               INITIALIZE �v�j�|�c�̕ʐ��Z�\
               COMPUTE �v�j�|�c�̕ʐ��Z�\�� = �v�j�|�c�̕ʐ��Z�\�� + 1.
      *20141028�ǉ��I��
000000     PERFORM P110-RTN THRU CX00006 .                                      
000000     GO TO CX00112.                                                       
000000 CX00113.                                                                 
           DISPLAY "CX00113" UPON CONSOLE
000000 CX00005. EXIT.                                                           
000000 P110-RTN .
           DISPLAY "P110-RTN"  UPON CONSOLE                                                               
000000     IF NOT(�v�j�|����敪 = "1")GO TO CX00120.
               DISPLAY "�����Q�[���e�|�`"   UPON CONSOLE                                
000000         READ �����Q�[���e�|�`   NEXT  ,                                          
000000           AT END MOVE �n�m TO �e�k�f�g�s�f�l.                                     
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02" AND "10"                        
000000     )GO TO CX00121.                                                      
000000           DISPLAY "HBHUN370-64 VIHATGMA READ ERROR ",                    
000000                     STS-FILE1 " " STS-FILE2                              
000000           STOP RUN .                                                   
000000 CX00121.
           DISPLAY "CX00121" UPON CONSOLE
           DISPLAY "CX00121"  UPON CONSOLE                                                      
000000     IF NOT(STS-FILE1 = "10")GO TO CX00122.                               
000000     MOVE �n�m TO �e�k�f�s�q�m�r .                                                 
000000 CX00122.  
           DISPLAY "CX00122" UPON CONSOLE
           DISPLAY "CX00122"  UPON CONSOLE                                                               
000000     IF NOT(�e�k�f�s�q�m�r = �n�e�e)GO TO CX00123.                                  
000000     MOVE �����Q�[���q�|�` TO �v�j�f���R�[�h .                                           
000000 CX00123.  
           DISPLAY "CX00123" UPON CONSOLE
           DISPLAY "CX00123"  UPON CONSOLE                                                    
000000     GO TO CX00124.                                                       
000000 CX00120.
           DISPLAY "CX00120" UPON CONSOLE
               DISPLAY "�����Q�[���e�|�a"   UPON CONSOLE                                                                 
000000         READ �����Q�[���e�|�a   NEXT  ,                                          
000000           AT END MOVE �n�m TO �e�k�f�g�s�f�l.                                     
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02" AND "10"                        
000000     )GO TO CX00125.                                                      
000000           DISPLAY "HBHUN370-65 VIHATGMB READ ERROR ",                    
000000                     STS-FILE1 " " STS-FILE2                              
000000           STOP RUN .                                                   
000000 CX00125.                                                                 
           DISPLAY "CX00125" UPON CONSOLE
000000     IF NOT(STS-FILE1 = "10")GO TO CX00126.                               
000000     MOVE �n�m TO �e�k�f�s�q�m�r .                                                 
000000 CX00126.                                                                 
           DISPLAY "CX00126" UPON CONSOLE
000000     IF NOT(�e�k�f�g�s�f�l = �n�e�e)GO TO CX00127.                                  
000000     MOVE �����Q�[���q�|�a TO �v�j�f���R�[�h .                                           
000000 CX00127.                                                                 
           DISPLAY "CX00127" UPON CONSOLE
000000 CX00124.                                                                 
           DISPLAY "CX00124" UPON CONSOLE
000000 CX00006. EXIT.                                                           
000000 P200-RTN .
           DISPLAY "P200-RTN"  UPON CONSOLE                                                                
000000     MOVE �n�e�e TO �e�k�f�b�g�m�k                                                  
000000     MOVE ZERO TO �h�c�w�̔��b .                                                
000000 CX00128. IF NOT( (�e�k�f�b�g�m�k = �n�e�e) AND (�h�c�w�̔��b <= �r�f�i�P�̔��b�������l)             
000000     )GO TO CX00129.
           DISPLAY "CX00128" UPON CONSOLE
               DISPLAY "�̔��`���l���e"   UPON CONSOLE                                                      
000000         READ �̔��`���l���e NEXT AT END CONTINUE .                              
000000     IF NOT(STS-FILE1 = ZERO OR "02")GO TO CX00130.                       
000000     GO TO CX00131.                                                       
000000 CX00130. IF NOT(STS-FILE1 = "10")GO TO CX00132.                          
           DISPLAY "CX00130" UPON CONSOLE
000000     MOVE �n�m TO �e�k�f�b�g�m�k .                                                 
000000     GO TO CX00131.                                                       
000000 CX00132.                                                                 
           DISPLAY "CX00132" UPON CONSOLE
000000           DISPLAY "HBHUN370-66 VICHNNEL READ ERROR ",                    
000000                     STS-FILE1 " " STS-FILE2                              
000000           STOP RUN .                                                   
000000 CX00131.
           DISPLAY "CX00131" UPON CONSOLE
           DISPLAY "CX00131"  UPON CONSOLE                                                                 
000000     IF NOT(�e�k�f�b�g�m�k = �n�e�e)GO TO CX00133.                                  
000000     MOVE �b�g�m�k�̔��`���l���R�[�h TO �h�c�w�̔��b                                         
000000     MOVE �b�g�m�k���z����l TO �v�̍��z�x����l (�h�c�w�̔��b)                                
000000     MOVE ZERO TO �h�c�w���Ǝ�                                                 
000000     MOVE ZERO TO �h�c�w�Q�[��                                                  
000000     MOVE ZERO TO �h�c�w��                                                   
000000     MOVE �n�e�e TO �e�k�f�g�b�g�s                                                  
000000     MOVE �n�e�e TO �e�k�f�s�r�f�l                                                  
000000     MOVE ZERO TO �v�j�|�Q�[���^�C�v                                               
000000     MOVE ZERO TO �v�j�|�u���b�N�R�[�h                                              
000000     MOVE SPACE TO �v�j�|���Ǝ� .                                              
000000     IF NOT(�v�j�|�̔��`���l���R�[�h = 01)GO TO CX00134.                              
000000     MOVE �b�g�m�k�̔��`���l���R�[�h TO �g�b�g�s�̔��`���l���R�[�h                                  
000000     MOVE LOW-VALUE TO �g�b�g�s�Q�[���h�c                                          
000000             START �̔��b�ʎ萔���ύX�f���e KEY NOT < ,                              
000000               �g�b�g�s���R�[�h�L�[ INVALID ,                                       
000000                 MOVE �n�m TO �e�k�f�g�b�g�s .                                     
000000     IF NOT( (STS-FILE1 NOT = ZERO) AND (�e�k�f�g�b�g�s = �n�m AND                 
000000     STS-FILE1 NOT = "23"))GO TO CX00135.                                 
000000               DISPLAY "HBHUN370-67 VITSGMCH START ERROR ",               
000000                        STS-FILE1 " " STS-FILE2                           
000000              STOP RUN .                                                
000000 CX00135.                                                                 
           DISPLAY "CX00135" UPON CONSOLE
000000 CX00136. IF NOT( (�e�k�f�g�b�g�s = �n�e�e))GO TO CX00137.                          
           DISPLAY "CX00136" UPON CONSOLE
           DISPLAY "�̔��b�ʎ萔���ύX�f���e"  UPON CONSOLE 
000000               READ  �̔��b�ʎ萔���ύX�f���e ,                                      
000000                 NEXT AT END CONTINUE .                                   
000000     IF NOT(STS-FILE1 = ZERO OR "02")GO TO CX00138.                       
000000     GO TO CX00139.                                                       
000000 CX00138. IF NOT(STS-FILE1 = "10")GO TO CX00140.                          
           DISPLAY "CX00138" UPON CONSOLE
000000     MOVE �n�m TO �e�k�f�g�b�g�s .                                                 
000000     GO TO CX00139.                                                       
000000 CX00140.                                                                 
           DISPLAY "CX00140" UPON CONSOLE
000000                 DISPLAY "HBHUN370-68 VITSGMCH READ ERROR ",              
000000                           STS-FILE1 " " STS-FILE2                        
000000                 STOP RUN .                                             
000000 CX00139.
           DISPLAY "CX00139" UPON CONSOLE
           DISPLAY "CX00139"  UPON CONSOLE                                                                 
000000     IF NOT(�e�k�f�g�b�g�s = �n�e�e AND �g�b�g�s�̔��`���l���R�[�h NOT = ZERO AND                
000000     �g�b�g�s�Q�[���h�c NOT = ZERO AND �g�b�g�s������z�єԍ� NOT = ZERO AND                  
000000     �g�b�g�s�̔��`���l���R�[�h = �b�g�m�k�̔��`���l���R�[�h)GO TO CX00141.                         
000000     IF NOT(�v�j�|�Q�[���^�C�v = �g�b�g�s�Q�[���^�C�v AND �v�j�|�u���b�N�R�[�h = �g�b�g�s�u���b�N�R�[�h           
000000     )GO TO CX00142.                                                      
000000     COMPUTE �h�c�w�� = �h�c�w�� + 1 .                                          
000000     GO TO CX00143.                                                       
000000 CX00142.
           DISPLAY "CX00142" UPON CONSOLE
           DISPLAY "CX00142"  UPON CONSOLE                                                                 
000000     COMPUTE �h�c�w�Q�[�� = �h�c�w�Q�[�� + 1                                          
000000     MOVE 1 TO �h�c�w�� .                                                    
000000 CX00143.
           DISPLAY "CX00143" UPON CONSOLE
           DISPLAY "CX00143"  UPON CONSOLE                                                                 
000000     MOVE �g�b�g�s�Q�[���^�C�v TO �v�|�̂b�ʃQ�[���^�C�v (�h�c�w�̔��b �h�c�w�Q�[��)                       
000000     MOVE �g�b�g�s�u���b�N�R�[�h TO �v�|�̂b�ʃu���b�N�R�[�h (�h�c�w�̔��b �h�c�w�Q�[��)                     
000000     MOVE �g�b�g�s�� TO �v�|�̂b�ʉ� (�h�c�w�̔��b �h�c�w�Q�[�� �h�c�w��)                         
000000     MOVE �g�b�g�s������z�єԍ� TO �v�|�̂b�ʋ��z�єԍ� (�h�c�w�̔��b �h�c�w�Q�[�� �h�c�w��)                 
000000     MOVE �g�b�g�s�Q�[���^�C�v TO �v�j�|�Q�[���^�C�v                                         
000000     MOVE �g�b�g�s�u���b�N�R�[�h TO �v�j�|�u���b�N�R�[�h .                                     
000000     GO TO CX00144.                                                       
000000 CX00141.
           DISPLAY "CX00141" UPON CONSOLE
           DISPLAY "CX00141"  UPON CONSOLE                                                                  
000000     MOVE �n�m TO �e�k�f�g�b�g�s .                                                 
000000 CX00144.
           DISPLAY "CX00144" UPON CONSOLE
           DISPLAY "CX00144"  UPON CONSOLE                                                                 
000000     GO TO CX00136.                                                       
000000 CX00137.
           DISPLAY "CX00137" UPON CONSOLE
           DISPLAY "CX00137"  UPON CONSOLE                                                                 
000000     GO TO CX00145.                                                       
000000 CX00134.
           DISPLAY "CX00134" UPON CONSOLE
           DISPLAY "CX00134"  UPON CONSOLE                                                                 
000000     MOVE �b�g�m�k�̔��`���l���R�[�h TO �s�r�f�l�̔��`���l���R�[�h                                  
000000     MOVE ZERO TO �s�r�f�l���Ǝ҃R�[�h                                             
000000     MOVE LOW-VALUE TO �s�r�f�l�Q�[���h�c                                          
000000             START ���Z�@�֎萔���ύX�f���e KEY NOT < ,                              
000000               �s�r�f�l���R�[�h�L�[ INVALID  ,                                      
000000                 MOVE �n�m TO �e�k�f�s�r�f�l .                                     
000000     IF NOT( (STS-FILE1 NOT = ZERO) AND (�e�k�f�s�r�f�l = �n�m AND                 
000000     STS-FILE1 NOT = "23"))GO TO CX00146.                                 
000000               DISPLAY "HBHUN370-69 VITSGMKY START ERROR ",               
000000                        STS-FILE1 " " STS-FILE2                           
000000              STOP RUN .                                                
000000 CX00146.                                                                 
           DISPLAY "CX00146" UPON CONSOLE
000000 CX00147. IF NOT(�e�k�f�s�r�f�l = �n�e�e)GO TO CX00148. 
           DISPLAY "CX00147" UPON CONSOLE
           DISPLAY "���Z�@�֎萔���ύX�f���e"  UPON CONSOLE                             
000000               READ  ���Z�@�֎萔���ύX�f���e ,                                      
000000                 NEXT AT END CONTINUE .                                   
000000     IF NOT(STS-FILE1 = ZERO OR "02")GO TO CX00149.                       
000000     GO TO CX00150.                                                       
000000 CX00149. IF NOT(STS-FILE1 = "10")GO TO CX00151.                          
           DISPLAY "CX00149" UPON CONSOLE
000000     MOVE �n�m TO �e�k�f�s�r�f�l .                                                 
000000     GO TO CX00150.                                                       
000000 CX00151.                                                                 
           DISPLAY "CX00151" UPON CONSOLE
000000                 DISPLAY "HBHUN370-70 VITSGMKY READ ERROR ",              
000000                           STS-FILE1 " " STS-FILE2                        
000000                 STOP RUN .                                             
000000 CX00150.
           DISPLAY "CX00150" UPON CONSOLE
           DISPLAY "CX00150"  UPON CONSOLE                                                                 
000000     IF NOT(�e�k�f�s�r�f�l = �n�e�e AND �s�r�f�l�̔��`���l���R�[�h NOT = ZERO AND                
000000     �s�r�f�l���Ǝ҃R�[�h NOT = SPACE AND �s�r�f�l�Q�[���h�c NOT = ZERO AND                 
000000     �s�r�f�l������z�єԍ� NOT = ZERO AND �s�r�f�l�̔��`���l���R�[�h = �b�g�m�k�̔��`���l���R�[�h             
000000     )GO TO CX00152.                                                      
000000     IF NOT(�v�j�|���Ǝ� = �s�r�f�l���Ǝ҃R�[�h)GO TO CX00153.                          
000000     IF NOT(�v�j�|�Q�[���^�C�v = �s�r�f�l�Q�[���^�C�v AND �v�j�|�u���b�N�R�[�h = �s�r�f�l�u���b�N�R�[�h           
000000     )GO TO CX00154.                                                      
000000     COMPUTE �h�c�w�� = �h�c�w�� + 1 .                                          
000000     GO TO CX00155.                                                       
000000 CX00154.
           DISPLAY "CX00154" UPON CONSOLE
           DISPLAY "CX00154"  UPON CONSOLE                                                                 
000000     COMPUTE �h�c�w�Q�[�� = �h�c�w�Q�[�� + 1                                          
000000     MOVE 1 TO �h�c�w�� .                                                    
000000 CX00155.                                                                 
           DISPLAY "CX00155" UPON CONSOLE
000000     GO TO CX00156.                                                       
000000 CX00153.
           DISPLAY "CX00153" UPON CONSOLE
           DISPLAY "CX00153"  UPON CONSOLE                                                                 
000000     COMPUTE �h�c�w���Ǝ� = �h�c�w���Ǝ� + 1                                        
      *20141028�ǉ��J�n
           IF �h�c�w���Ǝ� > 9
               MOVE 1 TO �h�c�w���Ǝ�
               INITIALIZE �v�|�@�֕ʎ萔���s�a�k�O�Q.
      *20141028�ǉ��I��
000000     COMPUTE �h�c�w�Q�[�� = �h�c�w�Q�[�� + 1                                          
000000     MOVE 1 TO �h�c�w�� .                                                    
000000 CX00156.
           DISPLAY "CX00156" UPON CONSOLE
           DISPLAY "CX00156"  UPON CONSOLE                                                                 
000000     MOVE �s�r�f�l���Ǝ҃R�[�h TO �v�|�@�֕ʑ��Ǝ҂b�c�O�Q (�h�c�w���Ǝ�)                          
000000     MOVE �s�r�f�l�Q�[���^�C�v TO �v�|�@�֕ʃQ�[���^�C�v�O�Q (�h�c�w���Ǝ� �h�c�w�Q�[��)                    
000000     MOVE �s�r�f�l�u���b�N�R�[�h TO �v�|�@�֕ʃu���b�N�b�c�O�Q (�h�c�w���Ǝ� �h�c�w�Q�[��)                   
000000     MOVE �s�r�f�l�� TO �v�|�@�֕ʉ񍆂O�Q (�h�c�w���Ǝ� �h�c�w�Q�[�� �h�c�w��)                      
000000     MOVE �s�r�f�l������z�єԍ� TO �v�|�@�֕ʋ��z�єԍ��O�Q (�h�c�w���Ǝ� �h�c�w�Q�[�� �h�c�w��)              
000000     MOVE �s�r�f�l���Ǝ҃R�[�h TO �v�j�|���Ǝ�                                          
000000     MOVE �s�r�f�l�Q�[���^�C�v TO �v�j�|�Q�[���^�C�v                                         
000000     MOVE �s�r�f�l�u���b�N�R�[�h TO �v�j�|�u���b�N�R�[�h .                                     
000000     GO TO CX00157.                                                       
000000 CX00152.
           DISPLAY "CX00152" UPON CONSOLE
           DISPLAY "CX00152"  UPON CONSOLE                                                                 
000000     MOVE �n�m TO �e�k�f�s�r�f�l .                                                 
000000 CX00157.                                                                 
           DISPLAY "CX00157" UPON CONSOLE
000000     GO TO CX00147.                                                       
000000 CX00148.                                                                 
           DISPLAY "CX00148" UPON CONSOLE
000000 CX00145.                                                                 
           DISPLAY "CX00145" UPON CONSOLE
000000 CX00133.                                                                 
           DISPLAY "CX00133" UPON CONSOLE
000000     GO TO CX00128.                                                       
000000 CX00129.
           DISPLAY "CX00129" UPON CONSOLE
           DISPLAY "CX00129"  UPON CONSOLE                                                                  
000000     MOVE �n�e�e TO �e�k�f�t�q�s�r                                                  
000000     MOVE ZERO TO �h�c�w�e�[�u���ԍ�                                               
000000     MOVE ZERO TO �h�c�w�̔��b                                                  
000000     MOVE 1 TO �h�c�w���z��
           DISPLAY "���J�萔���e"  UPON CONSOLE                                                     
000000       READ ���J�萔���e  NEXT  AT  END  CONTINUE .                             
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00158.                  
000000         DISPLAY "HBHUN370-71 VIURTESU READ ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00158.                                                                 
           DISPLAY "CX00158" UPON CONSOLE
000000 CX00159. IF NOT( (�e�k�f�t�q�s�r = �n�e�e))GO TO CX00160.
           DISPLAY "CX00159" UPON CONSOLE
           DISPLAY "CX00159"  UPON CONSOLE                           
000000     MOVE �t�q�s�r�e�[�u���ԍ� TO �h�c�w�e�[�u���ԍ�                                         
000000     MOVE �t�q�s�r�̔��`���l���R�[�h TO �h�c�w�̔��b                                         
000000     MOVE 1 TO �h�c�w���z�� .                                                   
000000 CX00161. IF NOT(�h�c�w���z�� < 6)GO TO CX00162.
           DISPLAY "CX00161" UPON CONSOLE
           DISPLAY "CX00161"  UPON CONSOLE                                 
000000     MOVE �t�q�s�r���J�萔�� (�h�c�w���z��) TO �v���J���J�萔�� (�h�c�w�e�[�u���ԍ� �h�c�w�̔��b                
000000     �h�c�w���z��)                                                              
000000     MOVE �t�q�s�r���J�萔���� (�h�c�w���z��) TO �v���J���J�萔���� (�h�c�w�e�[�u���ԍ� �h�c�w�̔��b              
000000     �h�c�w���z��)                                                              
000000     COMPUTE �h�c�w���z�� = �h�c�w���z�� + 1 .                                        
000000     GO TO CX00161.                                                       
000000 CX00162. 
           DISPLAY "CX00162" UPON CONSOLE
               DISPLAY "���J�萔���e"  UPON CONSOLE                                                       
000000         READ ���J�萔���e  NEXT  AT  END  CONTINUE .                           
000000     IF NOT(STS-FILE1 = ZERO OR "02")GO TO CX00163.                       
000000     GO TO CX00164.                                                       
000000 CX00163. IF NOT(STS-FILE1 = "10")GO TO CX00165.                          
           DISPLAY "CX00163" UPON CONSOLE
000000     MOVE �n�m TO �e�k�f�t�q�s�r .                                                 
000000     GO TO CX00164.                                                       
000000 CX00165.                                                                 
           DISPLAY "CX00165" UPON CONSOLE
000000           DISPLAY "HBHUN370-72 VIURTESU READ ERROR ",                    
000000                    STS-FILE1 " " STS-FILE2                               
000000           STOP RUN .                                                   
000000 CX00164.                                                                 
           DISPLAY "CX00164" UPON CONSOLE
000000     GO TO CX00159.                                                       
000000 CX00160.                                                                 
           DISPLAY "CX00160" UPON CONSOLE
000000 CX00007. EXIT.                                                           
000000 P300-RTN .
           DISPLAY "P300-RTN"  UPON CONSOLE                                                               
      *20141028�C���J�n
000000*       INITIALIZE �v��Q����s�W�J�`                                              
             INITIALIZE �v��Q�|�`���ʔԎ���`
             INITIALIZE �v��Q�|���ʃR�[�h����`
      *20141028�C���I��
000000     MOVE ZERO TO �b�m�s�d���ʔԎ��                                               
000000     MOVE ZERO TO �b�m�s���ʃR�[�h���                                              
000000     MOVE �n�e�e TO �e�k�f�f�g�s�Q .                                                
000000     IF NOT(�v�j�|����敪 = "1")GO TO CX00166.                                  
000000     MOVE 2 TO �q�j�|�������` 
               DISPLAY "�O���̔��p�������e�|�`"  UPON CONSOLE                                                  
000000         READ  �O���̔��p�������e�|�` INVALID CONTINUE .                            
000000     IF NOT(STS-FILE1 = ZERO OR "02")GO TO CX00167.                       
000000     GO TO CX00168.                                                       
000000 CX00167. IF NOT(STS-FILE1 = "23")GO TO CX00169.                          
           DISPLAY "CX00167" UPON CONSOLE
000000     MOVE �n�m TO �e�k�f�f�g�s�Q .                                                 
000000     GO TO CX00168.                                                       
000000 CX00169.                                                                 
           DISPLAY "CX00169" UPON CONSOLE
000000           DISPLAY "HBHUN370-73 VRTKSYGA READ ERROR ",                    
000000                     STS-FILE1 " " STS-FILE2                              
000000           STOP RUN .                                                   
000000 CX00168.                                                                 
           DISPLAY "CX00168" UPON CONSOLE
000000 CX00170. IF NOT(�e�k�f�f�g�s�Q = �n�e�e)GO TO CX00171.                             
           DISPLAY "CX00170" UPON CONSOLE
000000     IF NOT(�f�g�s�Q��������� = 7)GO TO CX00172.                                 
000000     IF NOT(�f�g�s�Q���ʃR�[�h (1:8) = ZERO)GO TO CX00173.
           DISPLAY "CX00170"  UPON CONSOLE                         
000000     COMPUTE �b�m�s�d���ʔԎ�� = �b�m�s�d���ʔԎ�� + 1                                    
      *20141028
           IF �b�m�s�d���ʔԎ�� > 1000
               MOVE 1 TO �b�m�s�d���ʔԎ��
               INITIALIZE �v��Q�|�`���ʔԎ���`.
      *20141028
000000     MOVE �f�g�s�Q����R�[�h TO �v��Q�|����R�[�h (�b�m�s�d���ʔԎ��)                              
000000     MOVE �f�g�s�Q�d���ʔ� TO �v��Q�|�d���ʔ� (�b�m�s�d���ʔԎ��) .                              
000000     GO TO CX00174.                                                       
000000 CX00173.                                                                 
           DISPLAY "CX00173" UPON CONSOLE
000000     COMPUTE �b�m�s���ʃR�[�h��� = �b�m�s���ʃR�[�h��� + 1                                  
      *20141028
           IF �b�m�s���ʃR�[�h��� > 1000
               MOVE 1 TO �b�m�s���ʃR�[�h���
               INITIALIZE �v��Q�|���ʃR�[�h����`.
      *20141028
000000     MOVE �f�g�s�Q���ʃR�[�h TO �v��Q�|���ʃR�[�h (�b�m�s���ʃR�[�h���)                             
000000     MOVE �f�g�s�Q����敪 TO �v��Q�|����敪 (�b�m�s���ʃR�[�h���) .                             
000000 CX00174.                                                                 
           DISPLAY "CX00174" UPON CONSOLE
000000 CX00172.  
           DISPLAY "CX00172" UPON CONSOLE
               DISPLAY "CX00172�O���̔��p�������e�|�`"  UPON CONSOLE                                                                 
000000           READ  �O���̔��p�������e�|�` NEXT AT END CONTINUE .                      
000000     IF NOT(STS-FILE1 = ZERO OR "02")GO TO CX00175.                       
000000     GO TO CX00176.                                                       
000000 CX00175. IF NOT(STS-FILE1 = "10")GO TO CX00177.                          
           DISPLAY "CX00175" UPON CONSOLE
000000     MOVE �n�m TO �e�k�f�f�g�s�Q .                                                 
000000     GO TO CX00176.                                                       
000000 CX00177.                                                                 
           DISPLAY "CX00177" UPON CONSOLE
000000             DISPLAY "HBHUN370-74 VRTKSYGA READ ERROR ",                  
000000                       STS-FILE1 " " STS-FILE2                            
000000             STOP RUN .                                                 
000000 CX00176.                                                                 
           DISPLAY "CX00176" UPON CONSOLE
000000     GO TO CX00170.                                                       
000000 CX00171.                                                                 
           DISPLAY "CX00171" UPON CONSOLE
000000     GO TO CX00178.                                                       
000000 CX00166.
           DISPLAY "CX00166" UPON CONSOLE
           DISPLAY "CX00166"  UPON CONSOLE                                                                 
000000     MOVE 2 TO �q�j�|�������a
               DISPLAY "�O���̔��p�������e�|�a"  UPON CONSOLE                                                   
000000         READ  �O���̔��p�������e�|�a INVALID CONTINUE .                            
000000     IF NOT(STS-FILE1 = ZERO OR "02")GO TO CX00179.                       
000000     GO TO CX00180.                                                       
000000 CX00179. IF NOT(STS-FILE1 = "23")GO TO CX00181.                          
           DISPLAY "CX00179" UPON CONSOLE
000000     MOVE �n�m TO �e�k�f�f�g�s�Q .                                                 
000000     GO TO CX00180.                                                       
000000 CX00181.                                                                 
           DISPLAY "CX00181" UPON CONSOLE
000000           DISPLAY "HBHUN370-75 VRTKSYGB READ ERROR ",                    
000000                     STS-FILE1 " " STS-FILE2                              
000000           STOP RUN .                                                   
000000 CX00180.                                                                 
           DISPLAY "CX00180" UPON CONSOLE
000000 CX00182. IF NOT(�e�k�f�f�g�s�Q = �n�e�e)GO TO CX00183.                             
           DISPLAY "CX00182" UPON CONSOLE
000000     IF NOT(�f�g�s�Q�a��������� = 7)GO TO CX00184.                                
000000     IF NOT(�f�g�s�Q�a���ʃR�[�h (1:8) = ZERO)GO TO CX00185.
           DISPLAY "CX00182"  UPON CONSOLE                        
000000     COMPUTE �b�m�s�d���ʔԎ�� = �b�m�s�d���ʔԎ�� + 1                                    
000000     MOVE �f�g�s�Q�a����R�[�h TO �v��Q�|����R�[�h (�b�m�s�d���ʔԎ��)                             
000000     MOVE �f�g�s�Q�a�d���ʔ� TO �v��Q�|�d���ʔ� (�b�m�s�d���ʔԎ��) .                             
000000     GO TO CX00186.                                                       
000000 CX00185.
           DISPLAY "CX00185" UPON CONSOLE
           DISPLAY "CX00185"  UPON CONSOLE                                                                 
000000     COMPUTE �b�m�s���ʃR�[�h��� = �b�m�s���ʃR�[�h��� + 1                                  
000000     MOVE �f�g�s�Q�a���ʃR�[�h TO �v��Q�|���ʃR�[�h (�b�m�s���ʃR�[�h���)                            
000000     MOVE �f�g�s�Q�a����敪 TO �v��Q�|����敪 (�b�m�s���ʃR�[�h���) .                            
000000 CX00186.                                                                 
           DISPLAY "CX00186" UPON CONSOLE
000000 CX00184.  
           DISPLAY "CX00184" UPON CONSOLE
               DISPLAY "CX00184�O���̔��p�������e�|�a"  UPON CONSOLE                                                               
000000           READ  �O���̔��p�������e�|�a NEXT AT END CONTINUE .                      
000000     IF NOT(STS-FILE1 = ZERO OR "02")GO TO CX00187.                       
000000     GO TO CX00188.                                                       
000000 CX00187. IF NOT(STS-FILE1 = "10")GO TO CX00189.                          
           DISPLAY "CX00187" UPON CONSOLE
000000     MOVE �n�m TO �e�k�f�f�g�s�Q .                                                 
000000     GO TO CX00188.                                                       
000000 CX00189.                                                                 
           DISPLAY "CX00189" UPON CONSOLE
000000             DISPLAY "HBHUN370-76 VRTKSYGA READ ERROR ",                  
000000                       STS-FILE1 " " STS-FILE2                            
000000             STOP RUN .                                                 
000000 CX00188.                                                                 
           DISPLAY "CX00188" UPON CONSOLE
000000     GO TO CX00182.                                                       
000000 CX00183.                                                                 
           DISPLAY "CX00183" UPON CONSOLE
000000 CX00178.
           DISPLAY "CX00178" UPON CONSOLE
           DISPLAY "CX00178"  UPON CONSOLE                                                                 
000000     MOVE �b�m�s�d���ʔԎ�� TO �v��Q�|�d���ʔԎ������                                       
000000     MOVE �b�m�s���ʃR�[�h��� TO �v��Q�|���ʃR�[�h������� .                                   
000000 CX00008. EXIT.                                                           
000000 P400-RTN .                                                               
000000     IF NOT(�v�j�|����敪 = "1")GO TO CX00190. 
               DISPLAY "�g�����U�N�V�����e�|�`"  UPON CONSOLE                                 
000000         READ �g�����U�N�V�����e�|�`   NEXT  ,                                       
000000           AT END MOVE �n�m TO �e�k�f�s�q�m�r.                                     
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02" AND "10"                        
000000     )GO TO CX00191.                                                      
000000           DISPLAY "HBHUN370-77 VITRANSA READ ERROR ",                    
000000                     STS-FILE1 " " STS-FILE2                              
000000           STOP RUN .                                                   
000000 CX00191.                                                                 
           DISPLAY "CX00191" UPON CONSOLE
000000     IF NOT(STS-FILE1 = "10")GO TO CX00192.                               
000000     MOVE �n�m TO �e�k�f�s�q�m�r .                                                 
000000 CX00192.                                                                 
           DISPLAY "CX00192" UPON CONSOLE
000000     IF NOT(�s�q�m�`���R�[�h�i�[���� = 0)GO TO CX00193.                               
000000     MOVE �n�m TO �e�k�f�s�q�m�r .                                                 
000000     GO TO CX00194.                                                       
000000 CX00193.
           DISPLAY "CX00193" UPON CONSOLE
           DISPLAY "CX00193"  UPON CONSOLE                                                                 
000000     MOVE �s�q�m�`���R�[�h�i�[���� TO �v�j�s���R�[�h�i�[���� .                                   
000000 CX00194.                                                                 
           DISPLAY "CX00194" UPON CONSOLE
000000     GO TO CX00195.                                                       
000000 CX00190. 
           DISPLAY "CX00190" UPON CONSOLE
               DISPLAY "�g�����U�N�V�����e�|�a"  UPON CONSOLE                                                                 
000000         READ �g�����U�N�V�����e�|�a   NEXT  ,                                       
000000           AT END MOVE �n�m TO �e�k�f�s�q�m�r.  
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02" AND "10"                        
000000     )GO TO CX00196.                                                      
000000           DISPLAY "HBHUN370-78 VITRANSB READ ERROR ",                    
000000                     STS-FILE1 " " STS-FILE2                              
000000           STOP RUN .                                                   
000000 CX00196. 
           DISPLAY "CX00196" UPON CONSOLE
               DISPLAY "CX00196"  UPON CONSOLE                                                                
000000     IF NOT(STS-FILE1 = "10")GO TO CX00197.                               
000000     MOVE �n�m TO �e�k�f�s�q�m�r .                                                 
               DISPLAY "�e�k�f�s�q�m�r=" �e�k�f�s�q�m�r  UPON CONSOLE
000000 CX00197.
               DISPLAY "CX00197"  UPON CONSOLE                                                                  
000000     IF NOT(�s�q�m�a���R�[�h�i�[���� = 0)GO TO CX00198.                               
000000     MOVE �n�m TO �e�k�f�s�q�m�r .                                                 
000000     GO TO CX00199.                                                       
000000 CX00198.
           DISPLAY "CX00198" UPON CONSOLE
           DISPLAY "CX00198"  UPON CONSOLE                                                                 
000000     MOVE �s�q�m�a���R�[�h�i�[���� TO �v�j�s���R�[�h�i�[���� .                                   
000000 CX00199.                                                                 
           DISPLAY "CX00199" UPON CONSOLE
000000 CX00195.                                                                 
           DISPLAY "CX00195" UPON CONSOLE
000000 CX00009. EXIT.                                                           
000000 P500-RTN .
           DISPLAY "P500-RTN"  UPON CONSOLE                                                               
000000     MOVE �v�j�s����R�[�h TO �t�q�a�`����R�[�h 
               DISPLAY "�t�q�a�`����R�[�h=" �t�q�a�`����R�[�h UPON CONSOLE
               DISPLAY "����e"  UPON CONSOLE                                          
000000       READ  ����e INVALID CONTINUE .                                       
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00200.                  
000000         DISPLAY "HBHUN370-79 VIURIBA READ ERROR ",                       
000000                   STS-FILE1 " " STS-FILE2                                
000000         STOP RUN .                                                     
000000 CX00200.
           DISPLAY "CX00200" UPON CONSOLE
           DISPLAY "CX00200"  UPON CONSOLE                                                                 
000000     MOVE �t�q�a�`�Ǝ҃R�[�h TO �f�x�r�`�Ǝ҃R�[�h  
               DISPLAY "�Ǝ҂e"  UPON CONSOLE                                        
000000       READ �Ǝ҂e INVALID CONTINUE .                                        
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00201.                  
000000         DISPLAY "HBHUN370-80 VIGYOSYA READ ERROR" ,                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00201.                                                                 
           DISPLAY "CX00201" UPON CONSOLE
000000 CX00010. EXIT.                                                           
000000 P600-RTN .
           DISPLAY "P600-RTN"  UPON CONSOLE                                                               
000000     IF NOT(�v�j�s������ʃR�[�h�� NOT = ZERO)GO TO CX00202.                         
000000     IF NOT(�v�j�s�x�����ʃR�[�h�� NOT = ZERO)GO TO CX00203.                         
000000     MOVE �n�m TO �e�k�f�G���[                                                    
000000     MOVE '1' TO �v�j�s���`�F�b�N�t���O                                              
000000     PERFORM ERWK-RTN THRU CX00024 .                                      
000000     GO TO CX00204.                                                       
000000 CX00203.
           DISPLAY "CX00203" UPON CONSOLE
           DISPLAY "CX00203"  UPON CONSOLE                                                                  
000000     IF NOT(�v�j�s��֎��ʃR�[�h�� NOT = ZERO)GO TO CX00205.                         
000000     MOVE �n�m TO �e�k�f�G���[                                                    
000000     MOVE '2' TO �v�j�s���`�F�b�N�t���O                                              
000000     PERFORM ERWK-RTN THRU CX00024 .                                      
000000     GO TO CX00206.                                                       
000000 CX00205.
           DISPLAY "CX00205" UPON CONSOLE
           DISPLAY "CX00205"  UPON CONSOLE                                                                 
000000     IF NOT(�v�j�s�������ʃR�[�h�� = ZERO)GO TO CX00207.                             
000000     IF NOT(�v�j�s����敪 = ZERO)GO TO CX00208.                                 
000000     MOVE ���� TO �v�i�h�j���R�[�h�h�c                                                
000000     PERFORM URJKWK-RTN THRU CX00014                                      
000000     COMPUTE �v���|�{���������z = �v���|�{���������z + �v�j�s���z                                
000000     MOVE �v�j�s����R�[�h TO �h�c�w����R�[�h                                            
000000     MOVE �v�j�|����ʐ��Z�\�v�j�q TO ����ʐ��Z�\�v�j�q                                       
000000     MOVE 1 TO �v�t�a�r��������                                                   
000000     MOVE �v�j�s���z TO �v�t�a�r�������z                                               
000000     PERFORM IDX-GET-RTN THRU CX00021                                     
000000     MOVE �v�j�s�̔��`���l���R�[�h TO �h�c�w�̔��b                                          
000000     PERFORM URISABAKI-GET-RTN THRU CX00022                               
000000     MOVE ������� TO �v�i�h�j���R�[�h�h�c                                              
000000     PERFORM URJKWK-RTN THRU CX00014                                      
000000     COMPUTE �v���|�{������������z = �v���|�{������������z + �v�j�s���z                            
000000     MOVE 1 TO �v�t�a�r�������                                                   
000000     MOVE �v�j�s���z TO �v�t�a�r������z .                                             
000000     IF NOT(�v�j�s��������J�E���^ > ZERO)GO TO CX00209.                             
000000     COMPUTE �v���|�{������������z = �v���|�{������������z + (�v�j�s���z * �v�j�s��������J�E���^)            
000000     COMPUTE �v���|�{����������������z = �v���|�{����������������z + (�v�j�s���z *                     
000000     �v�j�s��������J�E���^) .                                                       
000000     IF NOT(�v�j�s��������J�E���^ = 9)GO TO CX00210.                                
000000     MOVE �n�m TO �v���|�����J�E���^�I�[�o .                                            
000000 CX00210.
           DISPLAY "CX00210" UPON CONSOLE
           DISPLAY "CX00210"  UPON CONSOLE                                                                 
000000     COMPUTE �v�t�a�r������� = �v�t�a�r������� + �v�j�s��������J�E���^                            
000000     COMPUTE �v�t�a�r������z = �v�t�a�r������z + (�v�j�s���z * �v�j�s��������J�E���^)                  
000000     MOVE �v�j�s��������J�E���^ TO �v�t�a�r�����������                                       
000000     COMPUTE �v�t�a�r����������z = �v�j�s���z * �v�j�s��������J�E���^ .                           
000000 CX00209.
           DISPLAY "CX00209" UPON CONSOLE
           DISPLAY "CX00209"  UPON CONSOLE                                                                 
000000     PERFORM WUBSWK-RTN THRU CX00017 .                                    
000000 CX00208.                                                                 
           DISPLAY "CX00208" UPON CONSOLE
000000 CX00207.                                                                 
           DISPLAY "CX00207" UPON CONSOLE
000000 CX00206.                                                                 
           DISPLAY "CX00206" UPON CONSOLE
000000 CX00204.                                                                 
           DISPLAY "CX00204" UPON CONSOLE
000000     GO TO CX00211.                                                       
000000 CX00202.
           DISPLAY "CX00202" UPON CONSOLE
           DISPLAY "CX00202"  UPON CONSOLE                                                                 
000000     IF NOT(�v�j�s�x�����ʃR�[�h�� = ZERO)GO TO CX00212.                             
000000     IF NOT(�v�j�s����x������R�[�h NOT = SPACE)GO TO CX00213.                       
000000     MOVE SPACE TO �v�j�s����x������R�[�h                                           
000000     MOVE ZERO TO �v�j�s����x���������                                             
000000     MOVE ZERO TO �v�j�s����x���e�d�o�ԍ�                                            
000000     MOVE ZERO TO �v�j�s����x���p�X�ʔ� .                                           
000000 CX00213.
           DISPLAY "CX00213" UPON CONSOLE
           DISPLAY "CX00213"  UPON CONSOLE                                                                 
000000     IF NOT(�v�j�s��֎��ʃR�[�h�� NOT = ZERO)GO TO CX00214.                         
000000     MOVE �n�m TO �e�k�f�G���[                                                    
000000     MOVE '3' TO �v�j�s���`�F�b�N�t���O                                              
000000     PERFORM ERWK-RTN THRU CX00024 .                                      
000000     GO TO CX00215.                                                       
000000 CX00214.
           DISPLAY "CX00214" UPON CONSOLE
           DISPLAY "CX00214"  UPON CONSOLE                                                                  
000000     IF NOT(�v�j�s�������ʃR�[�h�� = ZERO)GO TO CX00216.                             
000000     MOVE ���� TO �v�i�h�j���R�[�h�h�c                                                
000000     PERFORM URJKWK-RTN THRU CX00014                                      
000000     PERFORM IDX-GET-RTN THRU CX00021                                     
000000     MOVE �v�j�s�̔��`���l���R�[�h TO �h�c�w�̔��b                                          
000000     PERFORM URISABAKI-GET-RTN THRU CX00022                               
000000     PERFORM HAKKEN-RTN THRU CX00015                                      
000000     COMPUTE �v���|�{���������z = �v���|�{���������z + �v�j�s���z                                
000000     MOVE �v�j�|����ʐ��Z�\�v�j�q TO ����ʐ��Z�\�v�j�q                                       
000000     MOVE 1 TO �v�t�a�r��������                                                   
000000     MOVE �v�j�s���z TO �v�t�a�r�������z .                                             
000000     IF NOT(�v�j�s��������J�E���^ > ZERO)GO TO CX00217.                             
000000     COMPUTE �v���|�{������������z = �v���|�{������������z + (�v�j�s���z * �v�j�s��������J�E���^)            
000000     COMPUTE �v���|�{����������������z = �v���|�{����������������z + (�v�j�s���z *                     
000000     �v�j�s��������J�E���^) .                                                       
000000     IF NOT(�v�j�s��������J�E���^ = 9)GO TO CX00218.                                
000000     MOVE �n�m TO �v���|�����J�E���^�I�[�o .                                            
000000 CX00218.
           DISPLAY "CX00218" UPON CONSOLE
           DISPLAY "CX00218"  UPON CONSOLE                                                                 
000000     MOVE �v�j�s��������J�E���^ TO �v�t�a�r�������                                         
000000     COMPUTE �v�t�a�r������z = �v�j�s���z * �v�j�s��������J�E���^                               
000000     MOVE �v�j�s��������J�E���^ TO �v�t�a�r�����������                                       
000000     COMPUTE �v�t�a�r����������z = �v�j�s���z * �v�j�s��������J�E���^ .                           
000000 CX00217.
           DISPLAY "CX00217" UPON CONSOLE
           DISPLAY "CX00217"  UPON CONSOLE                                                                  
000000     PERFORM WUBSWK-RTN THRU CX00017 .                                    
000000 CX00216.                                                                 
           DISPLAY "CX00216" UPON CONSOLE
000000 CX00215.                                                                 
           DISPLAY "CX00215" UPON CONSOLE
000000     GO TO CX00219.                                                       
000000 CX00212.
           DISPLAY "CX00212" UPON CONSOLE
           DISPLAY "CX00212"  UPON CONSOLE                                                                 
000000     IF NOT(�v�j�s�������ʃR�[�h�� = ZERO)GO TO CX00220.                             
000000     MOVE ���� TO �v�i�h�j���R�[�h�h�c                                                
000000     PERFORM URJKWK-RTN THRU CX00014                                      
000000     PERFORM IDX-GET-RTN THRU CX00021                                     
000000     MOVE �v�j�s�̔��`���l���R�[�h TO �h�c�w�̔��b                                          
000000     PERFORM URISABAKI-GET-RTN THRU CX00022                               
000000     PERFORM HAKKEN-RTN THRU CX00015                                      
000000     COMPUTE �v���|�{���������z = �v���|�{���������z + �v�j�s���z                                
000000     MOVE �v�j�|����ʐ��Z�\�v�j�q TO ����ʐ��Z�\�v�j�q                                       
000000     MOVE 1 TO �v�t�a�r��������                                                   
000000     MOVE �v�j�s���z TO �v�t�a�r�������z .                                             
000000     IF NOT(�v�j�s��������J�E���^ > ZERO)GO TO CX00221.                             
000000     COMPUTE �v���|�{������������z = �v���|�{������������z + (�v�j�s���z * �v�j�s��������J�E���^)            
000000     COMPUTE �v���|�{����������������z = �v���|�{����������������z + (�v�j�s���z *                     
000000     �v�j�s��������J�E���^) .                                                       
000000     IF NOT(�v�j�s��������J�E���^ = 9)GO TO CX00222.                                
000000     MOVE �n�m TO �v���|�����J�E���^�I�[�o .                                            
000000 CX00222.
           DISPLAY "CX00222" UPON CONSOLE
           DISPLAY "CX00222"  UPON CONSOLE                                                                 
000000     MOVE �v�j�s��������J�E���^ TO �v�t�a�r�������                                         
000000     COMPUTE �v�t�a�r������z = �v�j�s���z * �v�j�s��������J�E���^                               
000000     MOVE �v�j�s��������J�E���^ TO �v�t�a�r�����������                                       
000000     COMPUTE �v�t�a�r����������z = �v�j�s���z * �v�j�s��������J�E���^                             
000000     PERFORM WUBSWK-RTN THRU CX00017 .                                    
000000 CX00221.                                                                 
           DISPLAY "CX00221" UPON CONSOLE
000000 CX00220.                                                                 
           DISPLAY "CX00220" UPON CONSOLE
000000 CX00219.                                                                 
           DISPLAY "CX00219" UPON CONSOLE
000000 CX00211.                                                                 
           DISPLAY "CX00211" UPON CONSOLE
000000 CX00011. EXIT.                                                           
000000 P700-RTN .
           DISPLAY "P700-RTN"  UPON CONSOLE                                                                
000000     IF NOT(�v�j�s�x�����ʃR�[�h�� NOT = ZERO)GO TO CX00223.                         
000000     MOVE �n�m TO �e�k�f�G���[                                                    
000000     MOVE '2' TO �v�j�s���`�F�b�N�t���O                                              
000000     PERFORM ERWK-RTN THRU CX00024 .                                      
000000     GO TO CX00224.                                                       
000000 CX00223.
           DISPLAY "CX00223" UPON CONSOLE
           DISPLAY "CX00223"  UPON CONSOLE                                                                 
000000     IF NOT(�v�j�s��֎��ʃR�[�h�� NOT = ZERO)GO TO CX00225.                         
000000     MOVE �n�m TO �e�k�f�G���[                                                    
000000     MOVE '3' TO �v�j�s���`�F�b�N�t���O                                              
000000     PERFORM ERWK-RTN THRU CX00024 .                                      
000000     GO TO CX00226.                                                       
000000 CX00225.
           DISPLAY "CX00225" UPON CONSOLE
           DISPLAY "CX00225"  UPON CONSOLE                                                                 
000000     IF NOT(�v�j�s�������ʃR�[�h�� NOT = ZERO)GO TO CX00227.                         
000000     MOVE �n�m TO �e�k�f�G���[                                                    
000000     MOVE '4' TO �v�j�s���`�F�b�N�t���O                                              
000000     PERFORM ERWK-RTN THRU CX00024 .                                      
000000     GO TO CX00228.                                                       
000000 CX00227.
           DISPLAY "CX00227" UPON CONSOLE
           DISPLAY "CX00227"  UPON CONSOLE                                                                  
000000     IF NOT(�v�j�s������ʃR�[�h�� NOT = ZERO)GO TO CX00229.                         
000000     IF NOT(�v�j�s����敪 = 0)GO TO CX00230.                                    
000000     MOVE �n�m TO �e�k�f�G���[                                                    
000000     MOVE '5' TO �v�j�s���`�F�b�N�t���O                                              
000000     PERFORM ERWK-RTN THRU CX00024 .                                      
000000     GO TO CX00231.                                                       
000000 CX00230.
           DISPLAY "CX00230" UPON CONSOLE
           DISPLAY "CX00230"  UPON CONSOLE                                                                  
000000     MOVE �v�j�|�O�̗p������v�j�q TO �O���̔��p������v�j�q                                   
000000     MOVE �f�x�r�`�Ǝ҃R�[�h TO �v�f�t�`�Ǝ҃R�[�h                                          
000000     MOVE �v�j�s����R�[�h TO �v�f�t�`����R�[�h                                           
000000     MOVE 1 TO �v�f�t�`��Q�������                                                 
000000     MOVE �v�j�s���z TO �v�f�t�`��Q������z                                             
000000     MOVE 0 TO �v�f�t�`��������                                                   
000000     MOVE 0 TO �v�f�t�`�������z                                                   
000000                 WRITE �O���̔��p������v�j�q .                                     
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00232.                  
000000                   DISPLAY "HBHUN370-81 SQWGURAG WRITE ERROR ",           
000000                            STS-FILE1 " " STS-FILE2                       
000000                   STOP RUN .                                           
000000 CX00232.                                                                 
           DISPLAY "CX00232" UPON CONSOLE
000000 CX00231.                                                                 
           DISPLAY "CX00231" UPON CONSOLE
000000     GO TO CX00233.                                                       
000000 CX00229.
           DISPLAY "CX00229" UPON CONSOLE
           DISPLAY "CX00229"  UPON CONSOLE                                                                 
000000     PERFORM SFKEN-RTN THRU CX00019                                       
000000     MOVE ���� TO �v�i�h�j���R�[�h�h�c                                                
000000     PERFORM URJKWK-RTN THRU CX00014                                      
000000     PERFORM IDX-GET-RTN THRU CX00021                                     
000000     MOVE �v�j�s�̔��`���l���R�[�h TO �h�c�w�̔��b                                          
000000     PERFORM URISABAKI-GET-RTN THRU CX00022                               
000000     PERFORM HAKKEN-RTN THRU CX00015                                      
000000     COMPUTE �v���|�{���������z = �v���|�{���������z + �v�j�s���z                                
000000     MOVE �v�j�|����ʐ��Z�\�v�j�q TO ����ʐ��Z�\�v�j�q                                       
000000     MOVE 1 TO �v�t�a�r��������                                                   
000000     MOVE �v�j�s���z TO �v�t�a�r�������z                                               
000000     PERFORM WUBSWK-RTN THRU CX00017                                      
000000     MOVE �v�j�|�O�̗p������v�j�q TO �O���̔��p������v�j�q                                   
000000     MOVE �f�x�r�`�Ǝ҃R�[�h TO �v�f�t�`�Ǝ҃R�[�h                                          
000000     MOVE �v�j�s����R�[�h TO �v�f�t�`����R�[�h                                           
000000     MOVE 0 TO �v�f�t�`��Q�������                                                 
000000     MOVE 0 TO �v�f�t�`��Q������z                                                 
000000     MOVE 1 TO �v�f�t�`��������                                                   
000000     MOVE �v�j�s���z TO �v�f�t�`�������z                                               
000000               WRITE �O���̔��p������v�j�q .                                       
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00234.                  
000000                 DISPLAY "HBHUN370-82 SQWGURAG WRITE ERROR ",             
000000                          STS-FILE1 " " STS-FILE2                         
000000                 STOP RUN .                                             
000000 CX00234.                                                                 
           DISPLAY "CX00234" UPON CONSOLE
000000 CX00233.                                                                 
           DISPLAY "CX00233" UPON CONSOLE
000000 CX00228.                                                                 
           DISPLAY "CX00228" UPON CONSOLE
000000 CX00226.                                                                 
           DISPLAY "CX00226" UPON CONSOLE
000000 CX00224.                                                                 
           DISPLAY "CX00224" UPON CONSOLE
000000 CX00012. EXIT.                                                           
000000 P800-RTN .
           DISPLAY "P800-RTN"  UPON CONSOLE                                                                
000000     IF NOT(�v�j�s�������ʃR�[�h�� = ZERO)GO TO CX00235.                             
000000     MOVE �n�m TO �e�k�f�G���[                                                    
000000     MOVE "4" TO �v�j�s���`�F�b�N�t���O                                              
000000     PERFORM ERWK-RTN THRU CX00024 .                                      
000000     GO TO CX00236.                                                       
000000 CX00235.
           DISPLAY "CX00235" UPON CONSOLE
           DISPLAY "CX00235"  UPON CONSOLE                                                                 
000000     IF NOT(�v�j�s�x�����ʃR�[�h�� NOT = ZERO)GO TO CX00237.                         
000000     MOVE �n�m TO �e�k�f�G���[                                                    
000000     MOVE "5" TO �v�j�s���`�F�b�N�t���O                                              
000000     PERFORM ERWK-RTN THRU CX00024 .                                      
000000     GO TO CX00238.                                                       
000000 CX00237.
           DISPLAY "CX00237" UPON CONSOLE
           DISPLAY "CX00237"  UPON CONSOLE                                                                  
000000     MOVE �x�� TO �v�j�`�h���R�[�h�h�c                                                
000000     PERFORM KSWK-RTN THRU CX00016 .                                      
000000     IF NOT(�v�j�s������ʃR�[�h�� NOT = ZERO)GO TO CX00239.                         
000000     MOVE �x����� TO �v�j�`�h���R�[�h�h�c                                              
000000     PERFORM KSWK-RTN THRU CX00016                                        
000000     MOVE �v�j�|����ʐ��Z�\�v�j�q TO ����ʐ��Z�\�v�j�q                                       
000000     MOVE 1 TO �v�t�a�r�x������                                                   
000000     MOVE �v�j�s���z TO �v�t�a�r�x�����z                                               
000000     MOVE 1 TO �v�t�a�r�x���������                                                 
000000     MOVE �v�j�s���z TO �v�t�a�r�x��������z                                             
000000     PERFORM WUBSWK-RTN THRU CX00017 .                                    
000000     GO TO CX00240.                                                       
000000 CX00239.
           DISPLAY "CX00239" UPON CONSOLE
           DISPLAY "CX00239"  UPON CONSOLE                                                                 
000000     MOVE �x�� TO �v�i�h�j���R�[�h�h�c                                                
000000     PERFORM URJKWK-RTN THRU CX00014                                      
000000     MOVE �v�j�|����ʐ��Z�\�v�j�q TO ����ʐ��Z�\�v�j�q                                       
000000     MOVE 1 TO �v�t�a�r�x������                                                   
000000     MOVE �v�j�s���z TO �v�t�a�r�x�����z                                               
000000     PERFORM WUBSWK-RTN THRU CX00017                                      
000000     MOVE �v�j�s�̔��`���l���R�[�h TO �h�c�w�̔��b .                                        
000000     IF NOT(�v�j�s���z >= �v�̍��z�x����l (�h�c�w�̔��b))GO TO CX00241.                    
000000     PERFORM KOSH-RTN THRU CX00018 .                                      
000000 CX00241.                                                                 
           DISPLAY "CX00241" UPON CONSOLE
000000 CX00240.                                                                 
           DISPLAY "CX00240" UPON CONSOLE
000000 CX00238.                                                                 
           DISPLAY "CX00238" UPON CONSOLE
000000 CX00236.                                                                 
           DISPLAY "CX00236" UPON CONSOLE
000000 CX00013. EXIT.                                                           
000000 URJKWK-RTN .
           DISPLAY "URJKWK-RTN"  UPON CONSOLE                                                             
000000     MOVE �v�j�s����R�[�h TO �v�i�h�j����R�[�h                                           
000000     MOVE �v�j�s��t���� TO �v�i�h�j�������                                             
000000     MOVE �v�j�s�Q�[���^�C�v TO �v�i�h�j�Q�[���^�C�v                                         
000000     MOVE �v�j�s�u���b�N�R�[�h TO �v�i�h�j�u���b�N�R�[�h                                       
000000     MOVE �v�j�s���z TO �v�i�h�j���z                                                 
000000     MOVE �v�j�s�o�͔ԍ� TO �v�i�h�j�o�͔ԍ�                                             
000000       WRITE ���ꎞ�ԑѕʔ���v�j�q .                                                
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00242.                  
000000         DISPLAY "HBHUN370-83 SQWJIKAN WRITE ERROR ",                     
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00242.                                                                 
           DISPLAY "CX00242" UPON CONSOLE
000000 CX00014. EXIT.                                                           
000000 HAKKEN-RTN .
           DISPLAY "HAKKEN-RTN"  UPON CONSOLE                                                             
000000       INITIALIZE ����ʔ���v�j�q                                                
000000     MOVE �v�j�s����R�[�h TO �v�t�a�t����R�[�h                                           
000000     MOVE �v�j�s�Q�[���^�C�v TO �v�t�a�t�Q�[���^�C�v                                         
000000     MOVE �v�j�s�u���b�N�R�[�h TO �v�t�a�t�u���b�N�R�[�h                                       
000000     COMPUTE �v�t�a�t������z = �v�j�s���z / �v�j�s�����p���񍆐�                                
000000     MOVE �v�j�s�����p���񍆐� TO �v�j�|�p���񍆐�                                          
000000     MOVE ZERO TO �v�j�|�� .                                                 
000000 CX00243. IF NOT(�v�j�|�p���񍆐� > ZERO)GO TO CX00244.
           DISPLAY "CX00243" UPON CONSOLE
           DISPLAY "CX00243"  UPON CONSOLE                           
000000     COMPUTE �v�t�a�t�� = �v�j�s�J�n�� + �v�j�|��                                     
000000         WRITE ����ʔ���v�j�q .                                                 
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00245.                  
000000           DISPLAY "HBHUN370-84 SQWURIUR WRITE ERROR ",                   
000000                    STS-FILE1 " " STS-FILE2                               
000000           STOP RUN .                                                   
000000 CX00245.
           DISPLAY "CX00245" UPON CONSOLE
           DISPLAY "CX00245"  UPON CONSOLE                                                                 
000000     COMPUTE �v�j�|�p���񍆐� = �v�j�|�p���񍆐� - 1                                      
000000     COMPUTE �v�j�|�� = �v�j�|�� + 1 .                                          
000000     GO TO CX00243.                                                       
000000 CX00244.
           DISPLAY "CX00244" UPON CONSOLE
           DISPLAY "CX00244"  UPON CONSOLE                                                                 
000000     IF NOT(�v�j�s�Q�[����� = �i���o�[�Y)GO TO CX00246.                               
000000         INITIALIZE  �w�����ʐ\���󋵂v�j�q                                          
000000     MOVE �v�j�s�Q�[���^�C�v TO �v�j�m�x�Q�[���^�C�v                                         
000000     MOVE �v�j�s�u���b�N�R�[�h TO �v�j�m�x�u���b�N�R�[�h .                                     
000000     IF NOT(�v�j�|�̔��`���l���R�[�h = 01)GO TO CX00247.                              
000000     COMPUTE �v�j�m�x���� = �v�j�s���� * �v�j�s�����p���񍆐� .                                
000000     GO TO CX00248.                                                       
000000 CX00247.
           DISPLAY "CX00247" UPON CONSOLE
           DISPLAY "CX00247"  UPON CONSOLE                                                                  
000000     MOVE �v�j�s���� TO �v�j�m�x���� .                                               
000000 CX00248.
           DISPLAY "CX00248" UPON CONSOLE
           DISPLAY "CX00248"  UPON CONSOLE                                                                  
000000     MOVE �v�j�s�p�l���� TO �h�c�w�p�l�� .                                             
000000 CX00249. IF NOT(�h�c�w�p�l�� > ZERO)GO TO CX00250.
           DISPLAY "CX00249" UPON CONSOLE
           DISPLAY "CX00249"  UPON CONSOLE                             
000000     MOVE �v�j�s�\������ (�h�c�w�p�l��) TO �v�j�m�x�\������                                    
000000     MOVE �v�j�s�\���^�C�v (�h�c�w�p�l��) TO �v�j�m�x�^�C�v�敪                                  
000000     MOVE �v�j�s�N�C�b�N�s�b�N�敪 (�h�c�w�p�l��) TO �v�j�m�x�N�C�b�N�s�b�N                            
000000           WRITE �w�����ʐ\���󋵂v�j�q .                                            
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00251.                  
000000             DISPLAY "HBHUN370-85 SQWKNYJY WRITE ERROR ",                 
000000                      STS-FILE1 " " STS-FILE2                             
000000             STOP RUN .                                                 
000000 CX00251.
           DISPLAY "CX00251" UPON CONSOLE
           DISPLAY "CX00251"  UPON CONSOLE                                                                 
000000     COMPUTE �h�c�w�p�l�� = �h�c�w�p�l�� - 1 .                                        
000000     GO TO CX00249.                                                       
000000 CX00250.
           DISPLAY "CX00250" UPON CONSOLE
           DISPLAY "CX00250"  UPON CONSOLE                                                      
000000 CX00246.
           DISPLAY "CX00246"  UPON CONSOLE                                                                 
000000     IF NOT(�v�j�s�Q�[����� = ���g AND �v�j�s�\���^�C�v (1) NOT = �ʏ�                       
000000     )GO TO CX00252.                                                      
      *20141028�C���J�n
000000*         @ZSNCNBMP( BUNSI = �v�j�s���q ,                                       
000000*                    BUNBO = �v�j�s���� ,                                       
000000*                    RTYPE = �v�j�s�\���^�C�v(1) ,                                 
000000*                    RNUMS = �v�j�|�\���ʂ萔 );                                   
       ZSNCNBMP.
      *** ������ ***                                                  
           INITIALIZE     KUMN-PARAM.                                                                       
      *** �p�����[�^�`�F�b�N ***                                   
           IF  �v�j�s���q  =  LOW-VALUE    THEN                                              
                   DISPLAY  "���q���w�肵�ĉ�����"                               
                   STOP RUN.                                                                                               
           IF  �v�j�s����  =  LOW-VALUE    THEN                                              
                   DISPLAY  "������w�肵�ĉ�����"                               
                   STOP RUN.
           IF  �v�j�s�\���^�C�v(1)  =  LOW-VALUE    THEN                                              
                   DISPLAY  "�\���^�C�v���w�肵�ĉ�����"                         
                   STOP RUN.
           IF  �v�j�|�\���ʂ萔  =  LOW-VALUE    THEN                                              
                   DISPLAY  "�\���ʂ萔���w�肵�ĉ�����"                         
                   STOP RUN.
      *** �j���[�����b�N�`�F�b�N ***                                    
           IF �v�j�s���q  NOT  NUMERIC  OR                                
              �v�j�s����  NOT  NUMERIC  OR                                   
              �v�j�s�\���^�C�v(1)  NOT  NUMERIC                                        
              STOP RUN.                                                                
      *** �\���ʂ萔�̎Z�o ***                                          
           IF   �v�j�s�\���^�C�v(1)  =  "1"                                            
                COMPUTE �j�t�l�m�g�ݍ��킹�� = �v�j�s���� - �v�j�s���q + 1
           ELSE                                                               
      *** �p�����[�^�ݒ� ***                                    
                COMPUTE �j�t�l�m���l�m = �v�j�s���q + �v�j�s�\���^�C�v(1) - 2
                MOVE �v�j�s���q TO �j�t�l�m���l�q                                                                  
      *** �g�ݍ��킹���Z�o���W���[���Ăяo�� ***
                CALL "HSAAL250" USING KUMN-PARAM.                                                                
      *** �o�̓p�����[�^�ڑ� ***                                
           MOVE �j�t�l�m�g�ݍ��킹�� TO �v�j�|�\���ʂ萔.
           DISPLAY  "AAAAAAAAAAAAAAAAAAAAAAAAAAAAA"  UPON CONSOLE
      *20141028�C���I��
000000     COMPUTE �v����������z (�h�c�w�Q�[�� �h�c�w�� �h�c�w�̔��b) = �v����������z (�h�c�w�Q�[��              
000000     �h�c�w�� �h�c�w�̔��b) + �v�j�s���z .                                              
000000     IF NOT(�v���J���J�萔�� (�h�c�w�e�[�u���ԍ� �b�m�s�̔��b �b�m�s���z��) NOT = 0                    
000000     )GO TO CX00253.                                                      
000000     MOVE �v���J���J�萔�� (�h�c�w�e�[�u���ԍ� �b�m�s�̔��b �b�m�s���z��) TO �v�j�|���J�萔�� .                
000000     GO TO CX00254.                                                       
000000 CX00253.
           DISPLAY "CX00253" UPON CONSOLE
           DISPLAY "CX00253"  UPON CONSOLE                                                                 
000000     COMPUTE �v�j�|���J�萔�� = �v���J���J�萔���� (�h�c�w�e�[�u���ԍ� �b�m�s�̔��b �b�m�s���z��) /             
000000     100 * �v��|�P�� (�h�c�w�Q�[�� �h�c�w��) .                                         
000000 CX00254.
           DISPLAY "CX00254" UPON CONSOLE
           DISPLAY "CX00254"  UPON CONSOLE                                                                 
000000     COMPUTE �v�����݌v�萔�� (�h�c�w�Q�[�� �h�c�w�� �h�c�w�̔��b �b�m�s���z��) = �v�����݌v�萔�� (           
000000     �h�c�w�Q�[�� �h�c�w�� �h�c�w�̔��b �b�m�s���z��) + �v�j�|���J�萔�� * �v�j�s���� * �v�j�|�\���ʂ萔 .          
000000     IF NOT(�b�m�s���z�� > 1)GO TO CX00255.                                     
000000     IF NOT(�v���J���J�萔�� (�h�c�w�e�[�u���ԍ� �b�m�s�̔��b 1) NOT = 0                         
000000     )GO TO CX00256.                                                      
000000     COMPUTE �v�����萔���␳�z (�h�c�w�Q�[�� �h�c�w�� �h�c�w�̔��b) = �v�����萔���␳�z (�h�c�w�Q�[��          
000000     �h�c�w�� �h�c�w�̔��b) + �v���J���J�萔�� (�h�c�w�e�[�u���ԍ� �b�m�s�̔��b 1) * �v�j�s���� *              
000000     �v�j�|�\���ʂ萔 - �v�j�|���J�萔�� * �v�j�s���� * �v�j�|�\���ʂ萔 .                             
000000     GO TO CX00257.                                                       
000000 CX00256. 
           DISPLAY "CX00256" UPON CONSOLE
           DISPLAY "CX00256"  UPON CONSOLE                                                                 
000000     COMPUTE �v�����萔���␳�z (�h�c�w�Q�[�� �h�c�w�� �h�c�w�̔��b) = �v�����萔���␳�z (�h�c�w�Q�[��          
000000     �h�c�w�� �h�c�w�̔��b) + �v���J���J�萔���� (�h�c�w�e�[�u���ԍ� �b�m�s�̔��b 1) / 100 *               
000000     �v��|�P�� (�h�c�w�Q�[�� �h�c�w��) * �v�j�s���� * �v�j�|�\���ʂ萔 - �v�j�|���J�萔�� * �v�j�s����           
000000     * �v�j�|�\���ʂ萔 .                                                         
000000 CX00257.                                                                 
           DISPLAY "CX00257" UPON CONSOLE
000000 CX00255.
           DISPLAY "CX00255" UPON CONSOLE
           DISPLAY "CX00255"  UPON CONSOLE                                                                 
000000     MOVE �v�j�s�̔��`���l���R�[�h TO �v�����̔��`���l���R�[�h (�h�c�w�Q�[�� �h�c�w�� �h�c�w�̔��b) .            
000000     GO TO CX00258.                                                       
000000 CX00252.
           DISPLAY "CX00252" UPON CONSOLE
           DISPLAY "CX00252"  UPON CONSOLE                                                                 
000000     MOVE 1 TO �v�j�|�\���ʂ萔                                                   
000000     MOVE �v�j�s�����p���񍆐� TO �v�j�|�p���񍆐� .                                        
000000 CX00259. IF NOT(�v�j�|�p���񍆐� > ZERO)GO TO CX00260.
           DISPLAY "CX00259" UPON CONSOLE
           DISPLAY "CX00259"  UPON CONSOLE                           
000000     COMPUTE �v����������z (�h�c�w�Q�[�� �h�c�w�� �h�c�w�̔��b) = �v����������z (�h�c�w�Q�[��              
000000     �h�c�w�� �h�c�w�̔��b) + (�v�j�s���z / �v�j�s�����p���񍆐�) .                               
000000     IF NOT(�v���J���J�萔�� (�h�c�w�e�[�u���ԍ� �b�m�s�̔��b �b�m�s���z��) NOT = 0                    
000000     )GO TO CX00261.                                                      
000000     MOVE �v���J���J�萔�� (�h�c�w�e�[�u���ԍ� �b�m�s�̔��b �b�m�s���z��) TO �v�j�|���J�萔�� .                
000000     GO TO CX00262.                                                       
000000 CX00261.
           DISPLAY "CX00261" UPON CONSOLE
           DISPLAY "CX00261"  UPON CONSOLE                                                                  
000000     COMPUTE �v�j�|���J�萔�� = �v���J���J�萔���� (�h�c�w�e�[�u���ԍ� �b�m�s�̔��b �b�m�s���z��) /             
000000     100 * �v��|�P�� (�h�c�w�Q�[�� �h�c�w��) .                                         
000000 CX00262.
           DISPLAY "CX00262" UPON CONSOLE
           DISPLAY "CX00262"  UPON CONSOLE                                                                  
000000     COMPUTE �v�����݌v�萔�� (�h�c�w�Q�[�� �h�c�w�� �h�c�w�̔��b �b�m�s���z��) = �v�����݌v�萔�� (           
000000     �h�c�w�Q�[�� �h�c�w�� �h�c�w�̔��b �b�m�s���z��) +                                        
000000           �v�j�|���J�萔�� *  ,                                                  
000000                            �v�j�s����    *  �v�j�s�p�l���� .                         
000000     IF NOT(�b�m�s���z�� > 1)GO TO CX00263.                                     
000000     IF NOT(�v���J���J�萔�� (�h�c�w�e�[�u���ԍ� �b�m�s�̔��b 1) NOT = 0                         
000000     )GO TO CX00264.                                                      
000000     COMPUTE �v�����萔���␳�z (�h�c�w�Q�[�� �h�c�w�� �h�c�w�̔��b) = �v�����萔���␳�z (�h�c�w�Q�[��          
000000     �h�c�w�� �h�c�w�̔��b) + �v���J���J�萔�� (�h�c�w�e�[�u���ԍ� �b�m�s�̔��b 1) * �v�j�s���� *              
000000     �v�j�s�p�l���� - �v�j�|���J�萔�� * �v�j�s���� * �v�j�s�p�l���� .                               
000000     GO TO CX00265.                                                       
000000 CX00264.
           DISPLAY "CX00264" UPON CONSOLE
           DISPLAY "CX00264"  UPON CONSOLE                                                                 
000000     COMPUTE �v�����萔���␳�z (�h�c�w�Q�[�� �h�c�w�� �h�c�w�̔��b) = �v�����萔���␳�z (�h�c�w�Q�[��          
000000     �h�c�w�� �h�c�w�̔��b) + �v���J���J�萔���� (�h�c�w�e�[�u���ԍ� �b�m�s�̔��b 1) / 100 *               
000000     �v��|�P�� (�h�c�w�Q�[�� �h�c�w��) * �v�j�s���� * �v�j�s�p�l���� - �v�j�|���J�萔�� * �v�j�s���� *          
000000     �v�j�s�p�l���� .                                                            
000000 CX00265.                                                                 
           DISPLAY "CX00265" UPON CONSOLE
000000 CX00263.
           DISPLAY "CX00263" UPON CONSOLE
           DISPLAY "CX00263"  UPON CONSOLE                                                                 
000000     MOVE �v�j�s�̔��`���l���R�[�h TO �v�����̔��`���l���R�[�h (�h�c�w�Q�[�� �h�c�w�� �h�c�w�̔��b)              
000000     COMPUTE �h�c�w�� = �h�c�w�� + 1                                            
000000     COMPUTE �v�j�|�p���񍆐� = �v�j�|�p���񍆐� - 1 .                                    
000000     GO TO CX00259.                                                       
000000 CX00260.                                                                 
           DISPLAY "CX00260" UPON CONSOLE
000000 CX00258. 
           DISPLAY "CX00258" UPON CONSOLE
           DISPLAY "CX00258"  UPON CONSOLE                                                                 
000000     MOVE �t�q�a�`����v��c�̃R�[�h TO �h�c�w�c��                                          
000000     MOVE �h�c�w�񍆂Q TO �h�c�w��                                                 
000000     MOVE �v�j�s�����p���񍆐� TO �v�j�|�p���񍆐� .                                        
000000 CX00266. IF NOT(�v�j�|�p���񍆐� > ZERO)GO TO CX00267.
           DISPLAY "CX00266" UPON CONSOLE
           DISPLAY "CX00266"  UPON CONSOLE                           
000000     COMPUTE �v�c���c�̕ʔ��� (�h�c�w�Q�[�� �h�c�w�� �h�c�w�c��) = �v�c���c�̕ʔ��� (�h�c�w�Q�[��             
000000     �h�c�w�� �h�c�w�c��) + �v�j�s���z / �v�j�s�����p���񍆐�                                    
000000     MOVE �f�x�r�`�Ǝ҃R�[�h TO �v�c���Ǝ҃R�[�h (�h�c�w�Q�[�� �h�c�w�� �h�c�w�c��)                      
000000     MOVE �v�j�s�̔��`���l���R�[�h TO �v�c���̔��`���l���R�[�h (�h�c�w�Q�[�� �h�c�w�� �h�c�w�c��)               
000000     COMPUTE �v�j�|�p���񍆐� = �v�j�|�p���񍆐� - 1                                      
000000     COMPUTE �h�c�w�� = �h�c�w�� + 1 .                                          
000000     GO TO CX00266.                                                       
000000 CX00267.
           DISPLAY "CX00267" UPON CONSOLE
           DISPLAY "CX00267"  UPON CONSOLE                                                                 
000000     MOVE �h�c�w�񍆂Q TO �h�c�w�� .                                               
000000 CX00015. EXIT.                                                           
000000 KSWK-RTN . 
           DISPLAY "KSWK-RTN"  UPON CONSOLE                                                              
000000       INITIALIZE  �v�j�`�h�x�����                                               
000000       INITIALIZE  �v�j�`�h�R���r�x�����                                            
000000     MOVE �v�j�s�Q�[���^�C�v TO �v�j�`�h�Q�[���^�C�v                                         
000000     MOVE �v�j�s�u���b�N�R�[�h TO �v�j�`�h�u���b�N�R�[�h .                                     
000000     IF NOT( (�v�j�s�R���r��������� (1) = ZERO) AND (�v�j�s�R���r��������� (2) =              
000000     ZERO) AND (�v�j�s�R���r��������� (3) = ZERO) AND (�v�j�s�R���r��������� (4) =            
000000     ZERO) AND (�v�j�s�R���r��������� (5) = ZERO) AND (�v�j�s�R���r��������� (6) =            
000000     ZERO) AND (�v�j�s�R���r��������� (7) = ZERO) AND (�v�j�s�R���r��������� (8) =            
000000     ZERO) AND (�v�j�s�R���r��������� (9) = ZERO) AND (�v�j�s�R���r��������� (10) =           
000000     ZERO) AND (�v�j�s�R���r��������� (11) = ZERO))GO TO CX00268.                   
000000     MOVE �v�j�s���� TO �v�j�`�h����                                                 
000000     MOVE 1 TO �h�c�w��                                                      
000000     MOVE 1 TO �b�m�s��                                                      
000000     MOVE 1 TO �h�c�w�p�l��                                                     
000000     MOVE 1 TO �b�m�s�p�l�� .                                                   
000000     IF NOT(�v�j�s�p�l���� > 1)GO TO CX00269.                                    
000000 CX00270. IF NOT(�b�m�s�p�l�� < 6 AND �b�m�s�p�l�� <= �v�j�s�p�l����                         
000000     )GO TO CX00271.
           DISPLAY "CX00270" UPON CONSOLE
           DISPLAY "CX00270"  UPON CONSOLE                                                      
000000     IF NOT(�v�j�s�����񓙋� (�b�m�s�p�l��) > ZERO)GO TO CX00272.                       
000000     MOVE �v�j�s�J�n�� TO �v�j�`�h�x���� (�h�c�w�p�l��)                                    
000000     MOVE �v�j�s�����񓙋� (�b�m�s�p�l��) TO �v�j�`�h�x������ (�h�c�w�p�l��)                          
000000     COMPUTE �h�c�w�p�l�� = �h�c�w�p�l�� + 1 .                                        
000000 CX00272. 
           DISPLAY "CX00272" UPON CONSOLE
           DISPLAY "CX00272"  UPON CONSOLE                                                                 
000000     COMPUTE �b�m�s�p�l�� = �b�m�s�p�l�� + 1 .                                        
000000     GO TO CX00270.                                                       
000000 CX00271.                                                                 
           DISPLAY "CX00271" UPON CONSOLE
000000     GO TO CX00273.                                                       
000000 CX00269.                                                                 
           DISPLAY "CX00269" UPON CONSOLE
000000 CX00274. IF NOT(�b�m�s�� < 6 AND �b�m�s�� <= �v�j�s�����p���񍆐�                        
000000     )GO TO CX00275.
           DISPLAY "CX00274" UPON CONSOLE
           DISPLAY "CX00274"  UPON CONSOLE                                                      
000000     IF NOT(�v�j�s�����񓙋� (�b�m�s��) > ZERO)GO TO CX00276.                        
000000     COMPUTE �v�j�`�h�x���� (�h�c�w��) = �v�j�s�J�n�� + �b�m�s�� - 1                       
000000     MOVE �v�j�s�����񓙋� (�b�m�s��) TO �v�j�`�h�x������ (�h�c�w��)                            
000000     COMPUTE �h�c�w�� = �h�c�w�� + 1 .                                          
000000 CX00276. 
           DISPLAY "CX00276" UPON CONSOLE
           DISPLAY "CX00276"  UPON CONSOLE                                                                
000000     COMPUTE �b�m�s�� = �b�m�s�� + 1 .                                          
000000     GO TO CX00274.                                                       
000000 CX00275.                                                                 
           DISPLAY "CX00275" UPON CONSOLE
000000 CX00273.                                                                 
           DISPLAY "CX00273" UPON CONSOLE
000000     GO TO CX00277.                                                       
000000 CX00268.
           DISPLAY "CX00268" UPON CONSOLE
           DISPLAY "CX00268"  UPON CONSOLE                                                                  
000000     MOVE 0 TO �v�j�`�h����                                                     
000000     MOVE �v�j�s�J�n�� TO �v�j�`�h�R���r�x����                                          
000000     MOVE �v�j�s�J�n�� TO �v�j�`�h�x���� (1)                                         
000000     MOVE �v�j�s�R���r��������� (1) TO �v�j�`�h�����P                                      
000000     MOVE �v�j�s�R���r��������� (2) TO �v�j�`�h�����Q                                      
000000     MOVE �v�j�s�R���r��������� (3) TO �v�j�|����                                        
000000     MOVE �v�j�|���� TO �v�j�`�h�����R                                                
000000     MOVE �v�j�s�R���r��������� (4) TO �v�j�|����                                        
000000     MOVE �v�j�|���� TO �v�j�`�h�����S                                                
000000     MOVE �v�j�s�R���r��������� (5) TO �v�j�|����                                        
000000     MOVE �v�j�|���� TO �v�j�`�h�����T                                                
000000     MOVE �v�j�s�R���r��������� (6) TO �v�j�|����                                        
000000     MOVE �v�j�|���� TO �v�j�`�h�����U                                                
000000     MOVE �v�j�s�R���r��������� (7) TO �v�j�|����                                        
000000     MOVE �v�j�|���� TO �v�j�`�h�����V                                                
000000     MOVE �v�j�s�R���r��������� (8) TO �v�j�|����                                        
000000     MOVE �v�j�|���� TO �v�j�`�h�����W                                                
000000     MOVE �v�j�s�R���r��������� (9) TO �v�j�|����                                        
000000     MOVE �v�j�|���� TO �v�j�`�h�����X                                                
000000     MOVE �v�j�s�R���r��������� (10) TO �v�j�|����                                       
000000     MOVE �v�j�|���� TO �v�j�`�h�����P�O                                               
000000     MOVE �v�j�s�R���r��������� (11) TO �v�j�|����                                       
000000     MOVE �v�j�|���� TO �v�j�`�h�����P�P .                                             
000000 CX00277.
           DISPLAY "CX00277" UPON CONSOLE
           DISPLAY "CX00277"  UPON CONSOLE                                                                  
000000       WRITE �񍆕ʐ��Z�\�v�j�q .                                                  
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00278.                  
000000         DISPLAY "HBHUN370-86 SQWKAISS WRITE ERROR ",                     
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00278.                                                                 
           DISPLAY "CX00278" UPON CONSOLE
000000 CX00016. EXIT.                                                           
000000 WUBSWK-RTN .
           DISPLAY "WUBSWK-RTN"  UPON CONSOLE                                                             
000000     MOVE �v�j�s����R�[�h TO �v�t�a�r����R�[�h                                           
000000     MOVE �v�j�s�Q�[���^�C�v TO �v�t�a�r�Q�[���^�C�v                                         
000000     MOVE �v�j�s�u���b�N�R�[�h TO �v�t�a�r�u���b�N�R�[�h                                       
000000       INITIALIZE �v�t�a�r���z�ѕʔ�����                                            
000000     MOVE 0 TO �v�t�a�r���J�萔�����z                                                
000000     MOVE 0 TO �v�t�a�r�萔���␳�z .                                               
000000     IF NOT(�v�j�s���R�[�h�h�c = ���� AND �v�j�s������ʃR�[�h�� = 0)GO TO CX00279.             
000000     IF NOT(�v���J���J�萔�� (�h�c�w�e�[�u���ԍ� �b�m�s�̔��b �b�m�s���z��) NOT = 0                    
000000     )GO TO CX00280.                                                      
000000     MOVE �v���J���J�萔�� (�h�c�w�e�[�u���ԍ� �b�m�s�̔��b �b�m�s���z��) TO �v�j�|���J�萔�� .                
000000     GO TO CX00281.                                                       
000000 CX00280.
           DISPLAY "CX00280" UPON CONSOLE
           DISPLAY "CX00280"  UPON CONSOLE                                                                  
000000     COMPUTE �v�j�|���J�萔�� = �v���J���J�萔���� (�h�c�w�e�[�u���ԍ� �b�m�s�̔��b �b�m�s���z��) /             
000000     100 * �v��|�P�� (�h�c�w�Q�[�� �h�c�w��) .                                         
000000 CX00281.
           DISPLAY "CX00281" UPON CONSOLE
           DISPLAY "CX00281"  UPON CONSOLE                                                                 
000000     COMPUTE �v�t�a�r���z�ѕʔ��J�萔�� (�b�m�s���z��) = �v�j�|���J�萔�� * �v�j�s�p�l���� *                
000000     �v�j�s�����p���񍆐� * �v�j�s���� * �v�j�|�\���ʂ萔                                        
000000     COMPUTE �v�t�a�r���J�萔�����z = �v�j�|���J�萔�� * �v�j�s�p�l���� * �v�j�s�����p���񍆐� *              
000000     �v�j�s���� * �v�j�|�\���ʂ萔 .                                                   
000000     IF NOT(�b�m�s���z�� > 1)GO TO CX00282.                                     
000000     IF NOT(�v���J���J�萔�� (�h�c�w�e�[�u���ԍ� �b�m�s�̔��b 1) NOT = 0                         
000000     )GO TO CX00283.                                                      
000000     COMPUTE �v�t�a�r�萔���␳�z = (�v���J���J�萔�� (�h�c�w�e�[�u���ԍ� �b�m�s�̔��b 1) * �v�j�s����          
000000     * �v�j�s�p�l���� * �v�j�s�����p���񍆐� * �v�j�|�\���ʂ萔) - (�v�j�|���J�萔�� * �v�j�s���� *             
000000     �v�j�s�p�l���� * �v�j�s�����p���񍆐� * �v�j�|�\���ʂ萔) .                                   
000000     GO TO CX00284.                                                       
000000 CX00283. 
           DISPLAY "CX00283" UPON CONSOLE
           DISPLAY "CX00283"  UPON CONSOLE                                                                
000000     COMPUTE �v�t�a�r�萔���␳�z = (�v���J���J�萔���� (�h�c�w�e�[�u���ԍ� �b�m�s�̔��b 1) / 100           
000000     * �v��|�P�� (�h�c�w�Q�[�� �h�c�w��) * �v�j�s���� * �v�j�s�p�l���� * �v�j�s�����p���񍆐� *              
000000     �v�j�|�\���ʂ萔) - (�v�j�|���J�萔�� * �v�j�s���� * �v�j�s�p�l���� * �v�j�s�����p���񍆐� *               
000000     �v�j�|�\���ʂ萔) .                                                          
000000 CX00284.                                                                 
           DISPLAY "CX00284" UPON CONSOLE
000000 CX00282.                                                                 
           DISPLAY "CX00282" UPON CONSOLE
000000 CX00279.                                                                 
           DISPLAY "CX00279" UPON CONSOLE
000000       WRITE ����ʐ��Z�\�v�j�q .                                                  
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00285.                  
000000         DISPLAY "HBHUN370-87 SQWURISS WRITE ERROR ",                     
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00285.                                                                 
           DISPLAY "CX00285" UPON CONSOLE
000000 CX00017. EXIT.                                                           
000000 KOSH-RTN .
           DISPLAY "KOSH-RTN"  UPON CONSOLE                                                                
000000       INITIALIZE  ���z�x�����v�j�q                                              
000000     MOVE �v�j�s�Q�[���^�C�v TO �j�r�l�s�Q�[���^�C�v                                         
000000     MOVE �v�j�s�u���b�N�R�[�h TO �j�r�l�s�u���b�N�R�[�h .                                     
000000     IF NOT(�v�j�s�����ʃR�[�h = LOW-VALUE)GO TO CX00286.                          
000000     MOVE �v�j�s�������ʃR�[�h�� TO �j�r�l�s�������ʃR�[�h��                                     
000000     MOVE �v�j�s�������ʃR�[�h�� TO �j�r�l�s�������ʃR�[�h��                                     
000000     MOVE �v�j�s�������ʃR�[�h�� TO �j�r�l�s�������ʃR�[�h�� .                                   
000000     GO TO CX00287.                                                       
000000 CX00286.
           DISPLAY "CX00286" UPON CONSOLE
           DISPLAY "CX00286"  UPON CONSOLE                                                                  
000000     MOVE �v�j�s�����ʃR�[�h�� TO �j�r�l�s�������ʃR�[�h��                                      
000000     MOVE �v�j�s�����ʃR�[�h�� TO �j�r�l�s�������ʃR�[�h��                                      
000000     MOVE SPACE TO �j�r�l�s�������ʃR�[�h (17:8) .                                   
000000 CX00287.
           DISPLAY "CX00287" UPON CONSOLE
           DISPLAY "CX00287"  UPON CONSOLE
      *20141028�C���J�n                                                                 
000000*       @ZDTDTCMP( TICKETNO = �v�j�s�������ʃR�[�h��  ,                               
000000*                  BASEDATE = �t�m�j�P�o�b�`�Ɩ����t  ,                               
000000*                  YYYYMMDD = �v�j�|������ );                                    
      *** ������ ***                                                  
           INITIALIZE     DTCP-PARAM.                                           
      *** �p�����[�^�@�`�F�b�N ***                                    
           IF  �v�j�s�������ʃR�[�h��  =  ZERO    THEN
                   DISPLAY "���ʃR�[�h���w�肵�ĉ�����"                           
                   STOP RUN.                                                         
           IF  �t�m�j�P�o�b�`�Ɩ����t  =  LOW-VALUE    THEN                                           
                   DISPLAY "������w�肵�ĉ�����"                             
                   STOP RUN.                                                         
           IF  �v�j�|������  =  LOW-VALUE    THEN                                           
                   DISPLAY "����N�����̎�����ڂ��w�肵�ĉ�����"               
                   STOP RUN.                                                         
      *** ���̓p�����[�^�ڑ� ***
            MOVE �v�j�s�������ʃR�[�h�� TO  DTCP-TICKETNO
            MOVE �t�m�j�P�o�b�`�Ɩ����t TO  DTCP-BASEDATE
      *** ���t�Z�o�A�N�Z�X���W���[���Ăяo�� ***                        
            CALL "HSAAL040" USING DTCP-PARAM
      *** �o�̓p�����[�^�ڑ� ***
            MOVE DTCP-YYYYMMDD TO �v�j�|������
      *20141028�C���I��
000000     MOVE �v�j�|������ TO �j�r�l�s������                                               
000000     MOVE �v�j�s����x������R�[�h TO �j�r�l�s�x������R�[�h                                     
      *20141028�C���J�n
000000*       @ZDTDTCMP( TICKETNO = �v�j�s���ʃR�[�h��      ,                             
000000*                  BASEDATE = �t�m�j�P�o�b�`�Ɩ����t  ,                               
000000*                  YYYYMMDD = �v�j�|�x���� );                                    
      *** ������ ***                                                  
           INITIALIZE     DTCP-PARAM.                                           
      *** �p�����[�^�@�`�F�b�N ***                                    
           IF  �v�j�s���ʃR�[�h��  =  ZERO    THEN
                   DISPLAY "���ʃR�[�h���w�肵�ĉ�����"                           
                   STOP RUN.                                                         
           IF  �t�m�j�P�o�b�`�Ɩ����t  =  LOW-VALUE    THEN                                           
                   DISPLAY "������w�肵�ĉ�����"                             
                   STOP RUN.                                                         
           IF  �v�j�|�x����  =  LOW-VALUE    THEN                                           
                   DISPLAY "����N�����̎�����ڂ��w�肵�ĉ�����"               
                   STOP RUN.                                                         
      *** ���̓p�����[�^�ڑ� ***
            MOVE �v�j�s���ʃR�[�h�� TO  DTCP-TICKETNO
            MOVE �t�m�j�P�o�b�`�Ɩ����t TO  DTCP-BASEDATE
      *** ���t�Z�o�A�N�Z�X���W���[���Ăяo�� ***                        
            CALL "HSAAL040" USING DTCP-PARAM
      *** �o�̓p�����[�^�ڑ� ***
            MOVE DTCP-YYYYMMDD TO �v�j�|�x����
      *20141028�C���I��
000000     MOVE �v�j�|�x���� TO �j�r�l�s�x����                                               
000000     MOVE �v�j�s���z TO �j�r�l�s�x�����z .                                             
000000     IF NOT( (�v�j�s�R���r��������� (1) = ZERO) AND (�v�j�s�R���r��������� (2) =              
000000     ZERO) AND (�v�j�s�R���r��������� (3) = ZERO) AND (�v�j�s�R���r��������� (4) =            
000000     ZERO) AND (�v�j�s�R���r��������� (5) = ZERO) AND (�v�j�s�R���r��������� (6) =            
000000     ZERO) AND (�v�j�s�R���r��������� (7) = ZERO) AND (�v�j�s�R���r��������� (8) =            
000000     ZERO) AND (�v�j�s�R���r��������� (9) = ZERO) AND (�v�j�s�R���r��������� (10) =           
000000     ZERO) AND (�v�j�s�R���r��������� (11) = ZERO))GO TO CX00288.                   
000000     MOVE �v�j�s���� TO �j�r�l�s����                                                 
000000     MOVE 1 TO �b�m�s������                                                     
000000     MOVE 1 TO �h�c�w������ .                                                   
000000 CX00289. IF NOT(�b�m�s������ <= 5)GO TO CX00290.
           DISPLAY "CX00289" UPON CONSOLE
           DISPLAY "CX00289"  UPON CONSOLE                               
000000     IF NOT(�v�j�s�����p���񍆐� > 1)GO TO CX00291.                                 
000000     IF NOT(�v�j�s�����񓙋� (�b�m�s������) NOT = ZERO)GO TO CX00292.                   
000000     COMPUTE �j�r�l�s�� (�h�c�w������) = �v�j�s�J�n�� + �b�m�s������ - 1 .                     
000000 CX00292.                                                                 
           DISPLAY "CX00292" UPON CONSOLE
000000     GO TO CX00293.                                                       
000000 CX00291. 
           DISPLAY "CX00291" UPON CONSOLE
           DISPLAY "CX00291"  UPON CONSOLE                                                                 
000000     IF NOT(�v�j�s�����񓙋� (�b�m�s������) NOT = ZERO)GO TO CX00294.                   
000000     MOVE �v�j�s�J�n�� TO �j�r�l�s�� (�h�c�w������) .                                    
000000 CX00294.                                                                 
           DISPLAY "CX00294" UPON CONSOLE
000000 CX00293. 
           DISPLAY "CX00293" UPON CONSOLE
           DISPLAY "CX00293"  UPON CONSOLE                                                                
000000     IF NOT(�v�j�s�����񓙋� (�b�m�s������) NOT = ZERO)GO TO CX00295.                   
000000     IF NOT(�v�j�s�Q�[����� = �i���o�[�Y)GO TO CX00296.                               
000000     MOVE �v�j�s�����񓙋� (�b�m�s������) TO �v�j�|����                                      
000000     MOVE �k�m�j�`�x���������� (�v�j�|����) TO �j�r�l�s���� (�h�c�w������) .                         
000000     GO TO CX00297.                                                       
000000 CX00296.
           DISPLAY "CX00296" UPON CONSOLE
           DISPLAY "CX00296"  UPON CONSOLE                                                                  
000000     MOVE �v�j�s�����񓙋� (�b�m�s������) TO �j�r�l�s���� (�h�c�w������) .                          
000000 CX00297. 
           DISPLAY "CX00297" UPON CONSOLE
           DISPLAY "CX00297"  UPON CONSOLE                                                                 
000000     COMPUTE �h�c�w������ = �h�c�w������ + 1 .                                        
000000 CX00295.
           DISPLAY "CX00295" UPON CONSOLE
           DISPLAY "CX00295"  UPON CONSOLE                                                                   
000000     COMPUTE �b�m�s������ = �b�m�s������ + 1 .                                        
000000     GO TO CX00289.                                                       
000000 CX00290.                                                                 
           DISPLAY "CX00290" UPON CONSOLE
000000     GO TO CX00298.                                                       
000000 CX00288.  
           DISPLAY "CX00288" UPON CONSOLE
           DISPLAY "CX00288"  UPON CONSOLE                                                                
000000     MOVE 0 TO �j�r�l�s����                                                     
000000     MOVE �v�j�s�J�n�� TO �j�r�l�s�R���r��                                            
000000     MOVE �v�j�s�R���r��������� (1) TO �j�r�l�s�����ʌ����P                                   
000000     MOVE �v�j�s�R���r��������� (2) TO �j�r�l�s�����ʌ����Q                                   
000000     MOVE �v�j�s�R���r��������� (3) TO �j�r�l�s�����ʌ����R                                   
000000     MOVE �v�j�s�R���r��������� (4) TO �j�r�l�s�����ʌ����S                                   
000000     MOVE �v�j�s�R���r��������� (5) TO �j�r�l�s�����ʌ����T                                   
000000     MOVE �v�j�s�R���r��������� (6) TO �j�r�l�s�����ʌ����U                                   
000000     MOVE �v�j�s�R���r��������� (7) TO �j�r�l�s�����ʌ����V                                   
000000     MOVE �v�j�s�R���r��������� (8) TO �j�r�l�s�����ʌ����W                                   
000000     MOVE �v�j�s�R���r��������� (9) TO �j�r�l�s�����ʌ����X .                                 
000000 CX00298.
           DISPLAY "CX00298" UPON CONSOLE
           DISPLAY "CX00298"  UPON CONSOLE                                                                 
000000       WRITE ���z�x�����v�j�q .                                                  
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00299.                  
000000         DISPLAY "HBHUN370-88 SQWKGKSH WRITE ERROR ",                     
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00299.                                                                 
           DISPLAY "CX00299" UPON CONSOLE
000000 CX00018. EXIT.                                                           
000000 SFKEN-RTN . 
           DISPLAY "SFKEN-RTN"  UPON CONSOLE                                                               
000000     MOVE �v�j�s���ʃR�[�h�� TO �v�j�|�s�q���ʃR�[�h��W��                                      
000000     MOVE �v�j�s���ʃR�[�h�� TO �v�j�|�s�q���ʃR�[�h���W��                                      
000000     MOVE �v�j�s���ʃR�[�h�� TO �v�j�|�s�q���ʃR�[�h���W��                                      
000000     MOVE 1 TO �b�m�s�d���ʔԎ�� .                                                
000000 CX00300. IF NOT(�b�m�s�d���ʔԎ�� <= �v��Q�|�d���ʔԎ������)GO TO CX00301. 
           DISPLAY "CX00300" UPON CONSOLE
           DISPLAY "CX00300"  UPON CONSOLE                 
000000     IF NOT( (�v��Q�|����R�[�h (�b�m�s�d���ʔԎ��) = �v�j�s����R�[�h) AND (�v��Q�|�d���ʔ� (           
000000     �b�m�s�d���ʔԎ��) = �v�j�s�d���ʔ�))GO TO CX00302.                                 
000000     MOVE �d���ʔԎ�� TO �e�k�f��Q������                                             
000000     PERFORM GHT2-RTN THRU CX00020                                        
000000     GO TO CX00019.                                                       
000000 CX00302. 
           DISPLAY "CX00302" UPON CONSOLE
           DISPLAY "CX00302"  UPON CONSOLE                                                                
000000     COMPUTE �b�m�s�d���ʔԎ�� = �b�m�s�d���ʔԎ�� + 1 .                                  
000000     GO TO CX00300.                                                       
000000 CX00301.  
           DISPLAY "CX00301" UPON CONSOLE
           DISPLAY "CX00301"  UPON CONSOLE                                                               
000000     MOVE 1 TO �b�m�s���ʃR�[�h��� .                                               
000000 CX00303. IF NOT(�b�m�s���ʃR�[�h��� <= �v��Q�|���ʃR�[�h�������)GO TO CX00304.               
           DISPLAY "CX00303" UPON CONSOLE
000000     IF NOT(�v��Q�|���ʃR�[�h (�b�m�s���ʃR�[�h���) (17:8) = ZERO)GO TO CX00305.           
           DISPLAY "CX00303"  UPON CONSOLE 
000000     MOVE �v��Q�|���ʃR�[�h (�b�m�s���ʃR�[�h���) (1:8) TO �v�j�|�P�U���ʃR�[�h��                     
000000     MOVE �v��Q�|���ʃR�[�h (�b�m�s���ʃR�[�h���) (9:8) TO �v�j�|�P�U���ʃR�[�h��                     
      *20141028�C���J�n
000000*           @ZMSSRLCV(MODE = 2 ,                                           
000000*                     SBCDBEFORE  = PTR_SBCDBEFORE  ,                      
000000*                     SBCDAFTER   = PTR_SBCDAFTER  ) .                     
      *** ������ ***                                                
           INITIALIZE     SRLC-PARAM.                                           
      *** �p�����[�^�@�`�F�b�N ***                                    
           IF  PTR_SBCDBEFORE  =  NULL   THEN                                         
                   DISPLAY "�ϊ������ʃR�[�h���w�肵�ĉ�����"                   
                   STOP RUN.
           IF  PTR_SBCDAFTER  =  NULL   THEN                                          
                   DISPLAY "�ϊ��掯�ʃR�[�h���w�肵�ĉ�����"                   
                   STOP RUN.
      *** ���̓p�����[�^�ڑ� ***                                      
            MOVE 2 TO SRLC-MODE                                             
            SET  SRLC-SBCDBEF  TO  PTR_SBCDBEFORE                                  
            SET  SRLC-SBCDAFT  TO  PTR_SBCDAFTER                                   
      *** ���ʃR�[�h�ϊ����W���[���Ăяo�� ***                          
            CALL "HSAAL060" USING SRLC-PARAM.
      *20141028�C���I��
000000     IF NOT(�v�j�|�Q�S���ʃR�[�h = �v�j�|�s�q���ʃR�[�h)GO TO CX00306.                        
000000     MOVE ���ʃR�[�h��� TO �e�k�f��Q������                                            
000000     PERFORM GHT2-RTN THRU CX00020                                        
000000     GO TO CX00019.                                                       
000000 CX00306.                                                                 
           DISPLAY "CX00306" UPON CONSOLE
000000     GO TO CX00307.                                                       
000000 CX00305. 
           DISPLAY "CX00305" UPON CONSOLE
           DISPLAY "CX00305"  UPON CONSOLE                                                                 
000000     IF NOT(�v��Q�|���ʃR�[�h (�b�m�s���ʃR�[�h���) = �v�j�|�s�q���ʃR�[�h)GO TO CX00308.            
000000     MOVE ���ʃR�[�h��� TO �e�k�f��Q������                                            
000000     PERFORM GHT2-RTN THRU CX00020                                        
000000     GO TO CX00019.                                                       
000000 CX00308.                                                                 
           DISPLAY "CX00308" UPON CONSOLE
000000 CX00307.
           DISPLAY "CX00307" UPON CONSOLE
           DISPLAY "CX00307"  UPON CONSOLE                                                                 
000000     COMPUTE �b�m�s���ʃR�[�h��� = �b�m�s���ʃR�[�h��� + 1 .                                
000000     GO TO CX00303.                                                       
000000 CX00304.                                                                 
           DISPLAY "CX00304" UPON CONSOLE
000000 CX00019. EXIT.                                                           
000000 GHT2-RTN .
           DISPLAY "GHT2-RTN"  UPON CONSOLE                                                               
000000       INITIALIZE  �O�̗p��Q����s�v�j�q .                                         
000000     IF NOT(�e�k�f��Q������ = �d���ʔԎ��)GO TO CX00309.                             
000000     IF NOT(�v�j�s�����ʃR�[�h = LOW-VALUE)GO TO CX00310.                          
000000     MOVE �v�j�|�s�q���ʃR�[�h TO �v�f�s�e���ʃR�[�h .                                       
000000     GO TO CX00311.                                                       
000000 CX00310.
           DISPLAY "CX00310" UPON CONSOLE
           DISPLAY "CX00310"  UPON CONSOLE                                                                  
000000     MOVE �v�j�s�����ʃR�[�h�� TO �v�f�s�e���ʃR�[�h��                                        
000000     MOVE �v�j�s�����ʃR�[�h�� TO �v�f�s�e���ʃR�[�h��                                        
000000     MOVE ZERO TO �v�f�s�e���ʃR�[�h�� .                                            
000000 CX00311.                                                                 
           DISPLAY "CX00311" UPON CONSOLE
000000     GO TO CX00312.                                                       
000000 CX00309.
           DISPLAY "CX00309" UPON CONSOLE
           DISPLAY "CX00309"  UPON CONSOLE                                                                 
000000     MOVE �v��Q�|���ʃR�[�h (�b�m�s���ʃR�[�h���) TO �v�f�s�e���ʃR�[�h .                           
000000 CX00312.
           DISPLAY "CX00312" UPON CONSOLE
           DISPLAY "CX00312"  UPON CONSOLE                                                                 
000000     MOVE �v�j�s�Q�[���^�C�v TO �v�f�s�e�Q�[���^�C�v                                         
000000     MOVE �v�j�s�u���b�N�R�[�h TO �v�f�s�e�u���b�N�R�[�h                                       
000000     MOVE �v�j�s�J�n�� TO �v�f�s�e��                                               
000000     MOVE �v�j�s����R�[�h TO �v�f�s�e����R�[�h                                           
000000     MOVE �v�j�s������� TO �v�f�s�e�������                                             
000000     MOVE �v�j�s�d���ʔ� TO �v�f�s�e�d���ʔ�                                             
000000     MOVE �v�j�s�p�l���� TO �v�f�s�e�p�l����                                             
000000     MOVE �v�j�s���� TO �v�f�s�e����                                                 
000000     MOVE �v�j�s���z TO �v�f�s�e���z                                                 
000000     MOVE 1 TO �h�c�w�p�l�� .                                                   
000000 CX00313. IF NOT(�h�c�w�p�l�� <= �v�j�s�p�l����)GO TO CX00314.
           DISPLAY "CX00313" UPON CONSOLE
           DISPLAY "CX00313"  UPON CONSOLE                          
000000     IF NOT(�v�j�s�Q�[����� = �i���o�[�Y)GO TO CX00315.                               
000000     MOVE SPACE TO �v�j�|�\�������ϊ� .                                            
000000     IF NOT(�v�j�s���q = ���q�i���o�[�Y�R)GO TO CX00316.                               
000000     IF NOT(�v�j�s�\���^�C�v (�h�c�w�p�l��) = 1 OR 2 OR 3)GO TO CX00317.                
000000     MOVE �v�j�s�\������ (�h�c�w�p�l��) TO �v�j�|�\�������ϊ��m�R�R .                              
000000     GO TO CX00318.                                                       
000000 CX00317.
           DISPLAY "CX00317" UPON CONSOLE
           DISPLAY "CX00317"  UPON CONSOLE                                                                 
000000     MOVE �v�j�s�\������ (�h�c�w�p�l��) TO �v�j�|�\�������ϊ��m�R�Q .                              
000000 CX00318.                                                                 
           DISPLAY "CX00318" UPON CONSOLE
000000     GO TO CX00319.                                                       
000000 CX00316.    
           DISPLAY "CX00316" UPON CONSOLE
           DISPLAY "CX00316"  UPON CONSOLE                                                              
000000     IF NOT(�v�j�s���q = ���q�i���o�[�Y�S)GO TO CX00320.                               
000000     MOVE SPACE TO �v�j�|�\�������ϊ� .                                            
000000     IF NOT(�v�j�s�\���^�C�v (�h�c�w�p�l��) = 1 OR 2 OR 3 OR 6)GO TO CX00321.           
000000     MOVE �v�j�s�\������ (�h�c�w�p�l��) TO �v�j�|�\�������ϊ��m�S�S .                              
000000     GO TO CX00322.                                                       
000000 CX00321.
           DISPLAY "CX00321" UPON CONSOLE
           DISPLAY "CX00321"  UPON CONSOLE                                                                  
000000     MOVE �v�j�s�\������ (�h�c�w�p�l��) TO �v�j�|�\�������ϊ��m�S�Q .                              
000000 CX00322.                                                                 
           DISPLAY "CX00322" UPON CONSOLE
000000 CX00320.                                                                 
           DISPLAY "CX00320" UPON CONSOLE
000000 CX00319.                                                                 
           DISPLAY "CX00319" UPON CONSOLE
000000     GO TO CX00323.                                                       
000000 CX00315.                                                                 
           DISPLAY "CX00315" UPON CONSOLE
000000     IF NOT(�v�j�s�Q�[����� = ���g)GO TO CX00324.  
           DISPLAY "CX00315"  UPON CONSOLE                                 
      *20141028�C���J�n
000000*             @ZTSIDXCG( BUNSI  =  �v�j�s���q                 ,                 
000000*                      BUNBO    =  �v�j�s����                 ,                 
000000*                      IDXCODE  =  0                          ,            
000000*                      BITCODE  =  2                          ,            
000000*                      NUMCODE  =  1                          ,            
000000*                      TYPE     =  �v�j�s�\���^�C�v(�h�c�w�p�l��),                       
000000*                      CGIDX    =  �v�j�s�\������(�h�c�w�p�l��) ,                       
000000*                      CGNUM    =  �v�j�|�\�������ϊ�);                             
      *** �p�����[�^�@�`�F�b�N ***                                  
           IF  �v�j�s���q  =  LOW-VALUE    THEN                                              
                   DISPLAY "���q���w�肵�ĉ�����"                               
                   STOP RUN.                                                         
           IF  �v�j�s����  =  LOW-VALUE    THEN                                              
                   DISPLAY "������w�肵�ĉ�����"                               
                   STOP RUN.
           IF  �v�j�s�\���^�C�v(�h�c�w�p�l��)  =  LOW-VALUE    THEN                                               
                   DISPLAY "�\���^�C�v���w�肵�ĉ�����"                         
                   STOP RUN.                                                         
           IF  �v�j�s�\������(�h�c�w�p�l��)  =  ZERO    THEN                                      
                   DISPLAY "�ϊ��C���f�N�X���w�肵�ĉ�����"             
                   STOP RUN.                                                                                              
           IF  �v�j�|�\�������ϊ�  =  LOW-VALUE    THEN                                      
                   DISPLAY "�ϊ��\���������w�肵�ĉ�����"               
                   STOP RUN.
      *** ���̓p�����[�^�ڑ� ***                                     
           MOVE �v�j�s���q   TO IDXC-BUNSI
           MOVE �v�j�s����   TO IDXC-BUNBO
           MOVE 0 TO IDXC-IDXCODE
           MOVE 2 TO IDXC-BITCODE
           MOVE 1 TO IDXC-NUMCODE
           MOVE �v�j�s�\���^�C�v(�h�c�w�p�l��)    TO IDXC-TYPE
           MOVE 2 TO IDXC-SEQ                                           
           MOVE �v�j�s�\������(�h�c�w�p�l��) TO IDXC-CGIDX
      *** ���g�h�c�w�ϊ����W���[���Ăяo�� ***                         
           CALL "HRATS010" USING  IDXC-PARAM
      *** �o�̓p�����[�^�ڑ� ***                                       
           MOVE IDXC-CGNUM TO �v�j�|�\�������ϊ�.
      *20141028�C���I��
000000     MOVE 1 TO �b�m�s�\������ .                                                  
000000 CX00325. IF NOT(�b�m�s�\������ <= 12)GO TO CX00326.
           DISPLAY "CX00325" UPON CONSOLE
           DISPLAY "CX00325"  UPON CONSOLE                               
000000     IF NOT(�v�j�|�\�������ϊ��k�s (�b�m�s�\������) = "00")GO TO CX00327.                   
000000     MOVE SPACE TO �v�j�|�\�������ϊ��k�s (�b�m�s�\������) .                                
000000 CX00327. 
           DISPLAY "CX00327" UPON CONSOLE
           DISPLAY "CX00327"  UPON CONSOLE                                                                
000000     COMPUTE �b�m�s�\������ = �b�m�s�\������ + 1 .                                      
000000     GO TO CX00325.                                                       
000000 CX00326.                                                                 
           DISPLAY "CX00326" UPON CONSOLE
000000 CX00324.                                                                 
           DISPLAY "CX00324" UPON CONSOLE
000000 CX00323.  
           DISPLAY "CX00323" UPON CONSOLE
           DISPLAY "CX00323"  UPON CONSOLE                                                                  
000000     MOVE �v�j�|�\�������ϊ� TO �v�f�s�e�\������ (�h�c�w�p�l��)                                  
000000     MOVE �v�j�s�\���^�C�v (�h�c�w�p�l��) TO �v�f�s�e�\���^�C�v (�h�c�w�p�l��)                         
000000     MOVE �v�j�s�N�C�b�N�s�b�N�敪 (�h�c�w�p�l��) TO �v�f�s�e�N�C�b�N�s�b�N (�h�c�w�p�l��)                   
000000     COMPUTE �h�c�w�p�l�� = �h�c�w�p�l�� + 1 .                                        
000000     GO TO CX00313.                                                       
000000 CX00314.    
           DISPLAY "CX00314" UPON CONSOLE
           DISPLAY "CX00314"  UPON CONSOLE                                                               
000000     IF NOT(�e�k�f��Q������ = �d���ʔԎ��)GO TO CX00328.                             
000000     MOVE "1" TO �v�f�s�e���R�R�[�h .                                              
000000     GO TO CX00329.                                                       
000000 CX00328. IF NOT(�e�k�f��Q������ = ���ʃR�[�h���)GO TO CX00330.    
           DISPLAY "CX00328" UPON CONSOLE
           DISPLAY "CX00328"  UPON CONSOLE                      
000000     IF NOT(�v��Q�|����敪 (�b�m�s���ʃR�[�h���) = "3")GO TO CX00331.                    
000000     MOVE "2" TO �v�f�s�e���R�R�[�h .                                              
000000     GO TO CX00332.                                                       
000000 CX00331. 
           DISPLAY "CX00331" UPON CONSOLE
           DISPLAY "CX00331"  UPON CONSOLE                                                                  
000000     MOVE "1" TO �v�f�s�e���R�R�[�h .                                              
000000 CX00332.                                                                 
           DISPLAY "CX00332" UPON CONSOLE
000000 CX00330.                                                                 
           DISPLAY "CX00330" UPON CONSOLE
000000 CX00329. 
           DISPLAY "CX00329" UPON CONSOLE
           DISPLAY "CX00329"  UPON CONSOLE                                                                 
000000       WRITE �O�̗p��Q����s�v�j�q .                                               
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00333.                  
000000         DISPLAY "HBHUN370-89 SQWGTOFK WRITE ERROR ",                     
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00333.                                                                 
           DISPLAY "CX00333" UPON CONSOLE
000000 CX00020. EXIT.                                                           
000000 IDX-GET-RTN . 
           DISPLAY "IDX-GET-RTN"  UPON CONSOLE                                                             
000000     MOVE ZERO TO �h�c�w�Q�[��                                                  
000000     MOVE �n�e�e TO �e�k�f�Q�[�� .                                                 
000000 CX00334. IF NOT( (�h�c�w�Q�[�� < 30) AND (�e�k�f�Q�[�� = �n�e�e)                        
000000     )GO TO CX00335.  
           DISPLAY "CX00334" UPON CONSOLE
           DISPLAY "CX00334"  UPON CONSOLE                                                     
000000     COMPUTE �h�c�w�Q�[�� = �h�c�w�Q�[�� + 1 .                                        
000000     IF NOT( (�v��|�Q�[���^�C�v (�h�c�w�Q�[��) = �v�j�s�Q�[���^�C�v) AND (�v��|�u���b�N�R�[�h (           
000000     �h�c�w�Q�[��) = �v�j�s�u���b�N�R�[�h))GO TO CX00336.                                 
000000     MOVE �n�m TO �e�k�f�Q�[�� .                                                  
000000 CX00336.                                                                 
           DISPLAY "CX00336" UPON CONSOLE
000000     GO TO CX00334.                                                       
000000 CX00335.  
           DISPLAY "CX00335" UPON CONSOLE
           DISPLAY "CX00335"  UPON CONSOLE                                                               
000000     IF NOT(�e�k�f�Q�[�� = �n�m)GO TO CX00337.                                    
000000     MOVE ZERO TO �h�c�w��                                                   
000000     MOVE �n�e�e TO �e�k�f�� .                                                  
000000 CX00338. IF NOT( (�h�c�w�� < 21) AND (�e�k�f�� = �n�e�e))GO TO CX00339.           
           DISPLAY "CX00338" UPON CONSOLE
           DISPLAY "CX00338"  UPON CONSOLE   
000000     COMPUTE �h�c�w�� = �h�c�w�� + 1 .                                          
000000     IF NOT( (�v��|�� (�h�c�w�Q�[�� �h�c�w��) = �v�j�s�J�n��))GO TO CX00340.              
000000     MOVE �n�m TO �e�k�f�� .                                                   
000000 CX00340.                                                                 
           DISPLAY "CX00340" UPON CONSOLE
000000     GO TO CX00338.                                                       
000000 CX00339.                                                                 
           DISPLAY "CX00339" UPON CONSOLE
000000 CX00337.                                                                 
           DISPLAY "CX00337" UPON CONSOLE
000000     IF NOT( (�e�k�f�Q�[�� = �n�e�e) OR (�e�k�f�� = �n�e�e))GO TO CX00341.               
000000         DISPLAY "�Y���Q�[���܂��͉񍆂Ȃ�"                                           
000000         STOP RUN .                                                     
000000 CX00341.    
           DISPLAY "CX00341" UPON CONSOLE
           DISPLAY "CX00341"  UPON CONSOLE                                                                
000000     MOVE �h�c�w�� TO �h�c�w�񍆂Q .                                               
000000 CX00021. EXIT.                                                           
000000 URISABAKI-GET-RTN .    
           DISPLAY "URISABAKI-GET-RTN"  UPON CONSOLE                                                   
000000     MOVE �v��|���J�萔���s�a�k�ԍ� (�h�c�w�Q�[�� �h�c�w��) TO �h�c�w�e�[�u���ԍ�                       
000000     MOVE 1 TO �b�m�s���Ǝ�                                                    
000000     MOVE 1 TO �b�m�s�Q�[��                                                     
000000     MOVE 1 TO �b�m�s��                                                      
000000     MOVE �n�e�e TO �e�k�f���Ǝ�                                                  
000000     MOVE �n�e�e TO �e�k�f�Q�[��                                                   
000000     MOVE �n�e�e TO �e�k�f��                                                    
000000     MOVE �v�j�s�̔��`���l���R�[�h TO �b�m�s�̔��b .                                        
000000     IF NOT(�v�j�|�̔��`���l���R�[�h = 01)GO TO CX00342.                              
000000 CX00343. IF NOT( (�b�m�s�Q�[�� < 30) AND (�e�k�f�Q�[�� = �n�e�e)                        
000000     )GO TO CX00344. 
           DISPLAY "CX00343" UPON CONSOLE
           DISPLAY "CX00343"  UPON CONSOLE                                                     
000000     IF NOT( (�v�|�̂b�ʃQ�[���^�C�v (�b�m�s�̔��b �b�m�s�Q�[��) = �v�j�s�Q�[���^�C�v) AND (              
000000     �v�|�̂b�ʃu���b�N�R�[�h (�b�m�s�̔��b �b�m�s�Q�[��) = �v�j�s�u���b�N�R�[�h))GO TO CX00345.            
000000     MOVE �n�m TO �e�k�f�Q�[�� .                                                  
000000 CX00345.  
           DISPLAY "CX00345" UPON CONSOLE
           DISPLAY "CX00345"  UPON CONSOLE                                                                
000000     IF NOT(�e�k�f�Q�[�� = �n�e�e)GO TO CX00346.                                   
000000     COMPUTE �b�m�s�Q�[�� = �b�m�s�Q�[�� + 1 .                                        
000000 CX00346.                                                                 
           DISPLAY "CX00346" UPON CONSOLE
000000     GO TO CX00343.                                                       
000000 CX00344.                                                                 
           DISPLAY "CX00344" UPON CONSOLE
000000     IF NOT(�e�k�f�Q�[�� = �n�m)GO TO CX00347.                                    
000000 CX00348. IF NOT( (�b�m�s�� < 21) AND (�e�k�f�� = �n�e�e))GO TO CX00349.           
           DISPLAY "CX00348" UPON CONSOLE
000000     IF NOT( (�v�|�̂b�ʉ� (�b�m�s�̔��b �b�m�s�Q�[�� �b�m�s��) = �v�j�s�J�n��)                    
000000     )GO TO CX00350.    
           DISPLAY "CX00348"  UPON CONSOLE                                                   
000000     MOVE �v�|�̂b�ʋ��z�єԍ� (�b�m�s�̔��b �b�m�s�Q�[�� �b�m�s��) TO �b�m�s���z��                      
000000     MOVE �n�m TO �e�k�f�� .                                                   
000000 CX00350.        
           DISPLAY "CX00350" UPON CONSOLE
           DISPLAY "CX00350"  UPON CONSOLE                                                            
000000     IF NOT(�e�k�f�� = �n�e�e)GO TO CX00351.                                    
000000     COMPUTE �b�m�s�� = �b�m�s�� + 1 .                                          
000000 CX00351.                                                                 
           DISPLAY "CX00351" UPON CONSOLE
000000     GO TO CX00348.                                                       
000000 CX00349.                                                                 
           DISPLAY "CX00349" UPON CONSOLE
000000 CX00347.                                                                 
           DISPLAY "CX00347" UPON CONSOLE
000000     IF NOT( (�e�k�f�Q�[�� = �n�e�e) OR (�e�k�f�� = �n�e�e))GO TO CX00352.               
000000     MOVE 1 TO �b�m�s���z�� .                                                   
000000 CX00352.                                                                 
           DISPLAY "CX00352" UPON CONSOLE
000000 CX00342.     
           DISPLAY "CX00342" UPON CONSOLE
           DISPLAY "CX00342"  UPON CONSOLE                                                                   
000000     IF NOT(�v�j�|�̔��`���l���R�[�h = 02)GO TO CX00353.                              
000000 CX00354. IF NOT( (�b�m�s���Ǝ� < 999) AND (�e�k�f���Ǝ� = �n�e�e)                     
000000     )GO TO CX00355.                                                      
           DISPLAY "CX00354" UPON CONSOLE
000000     IF NOT( (�v�|�@�֕ʑ��Ǝ҂b�c�O�Q (�b�m�s���Ǝ�) = �f�x�r�`���Ǝ҃R�[�h)                      
000000     )GO TO CX00356.                                                      
000000     MOVE �n�m TO �e�k�f���Ǝ� .                                                 
000000 CX00356.     
           DISPLAY "CX00356" UPON CONSOLE
           DISPLAY "CX00356"  UPON CONSOLE                                                               
000000     IF NOT(�e�k�f���Ǝ� = �n�e�e)GO TO CX00357.                                  
000000     COMPUTE �b�m�s���Ǝ� = �b�m�s���Ǝ� + 1 .                                      
000000 CX00357.                                                                 
           DISPLAY "CX00357" UPON CONSOLE
000000     GO TO CX00354.                                                       
000000 CX00355.                                                                 
           DISPLAY "CX00355" UPON CONSOLE
000000     IF NOT(�e�k�f���Ǝ� = �n�m)GO TO CX00358.                                   
000000 CX00359. IF NOT( (�b�m�s�Q�[�� < 30) AND (�e�k�f�Q�[�� = �n�e�e)                        
000000     )GO TO CX00360.    
           DISPLAY "CX00359" UPON CONSOLE
           DISPLAY "CX00359"  UPON CONSOLE                                                    
000000     IF NOT( (�v�|�@�֕ʃQ�[���^�C�v�O�Q (�b�m�s���Ǝ� �b�m�s�Q�[��) = �v�j�s�Q�[���^�C�v) AND (           
000000     �v�|�@�֕ʃu���b�N�b�c�O�Q (�b�m�s���Ǝ� �b�m�s�Q�[��) = �v�j�s�u���b�N�R�[�h)                         
000000     )GO TO CX00361.                                                      
000000     MOVE �n�m TO �e�k�f�Q�[�� .                                                  
000000 CX00361.  
           DISPLAY "CX00361" UPON CONSOLE
           DISPLAY "CX00361"  UPON CONSOLE                                                                 
000000     IF NOT(�e�k�f�Q�[�� = �n�e�e)GO TO CX00362.                                   
000000     COMPUTE �b�m�s�Q�[�� = �b�m�s�Q�[�� + 1 .                                        
000000 CX00362.                                                                 
           DISPLAY "CX00362" UPON CONSOLE
000000     GO TO CX00359.                                                       
000000 CX00360.                                                                 
           DISPLAY "CX00360" UPON CONSOLE
000000 CX00358. 
           DISPLAY "CX00358" UPON CONSOLE
           DISPLAY "CX00358"  UPON CONSOLE                                                                  
000000     IF NOT(�e�k�f�Q�[�� = �n�m)GO TO CX00363.                                    
000000 CX00364. IF NOT( (�b�m�s�� < 21) AND (�e�k�f�� = �n�e�e))GO TO CX00365.           
           DISPLAY "CX00364" UPON CONSOLE
000000     IF NOT(�v�|�@�֕ʉ񍆂O�Q (�b�m�s���Ǝ� �b�m�s�Q�[�� �b�m�s��) = �v�j�s�J�n��                    
000000     )GO TO CX00366.                                                      
000000     MOVE �v�|�@�֕ʋ��z�єԍ��O�Q (�b�m�s���Ǝ� �b�m�s�Q�[�� �b�m�s��) TO �b�m�s���z��                   
000000     MOVE �n�m TO �e�k�f�� .                                                   
000000 CX00366.       
           DISPLAY "CX00366" UPON CONSOLE
           DISPLAY "CX00366"  UPON CONSOLE                                                            
000000     IF NOT(�e�k�f�� = �n�e�e)GO TO CX00367.                                    
000000     COMPUTE �b�m�s�� = �b�m�s�� + 1 .                                          
000000 CX00367.                                                                 
           DISPLAY "CX00367" UPON CONSOLE
000000     GO TO CX00364.                                                       
000000 CX00365.                                                                 
           DISPLAY "CX00365" UPON CONSOLE
000000 CX00363.      
           DISPLAY "CX00363" UPON CONSOLE
           DISPLAY "CX00363"  UPON CONSOLE                                                              
000000     IF NOT( (�e�k�f���Ǝ� = �n�e�e) OR (�e�k�f�Q�[�� = �n�e�e) OR (�e�k�f�� = �n�e�e)           
000000     )GO TO CX00368.                                                      
000000     MOVE 1 TO �b�m�s���z�� .                                                   
000000 CX00368.                                                                 
           DISPLAY "CX00368" UPON CONSOLE
000000 CX00353.                                                                 
           DISPLAY "CX00353" UPON CONSOLE
000000 CX00022. EXIT.                                                           
000000 WK-WRITE-RTN .
           DISPLAY "WK-WRITE-RTN"  UPON CONSOLE                                                              
000000     MOVE �v�j�|���� TO ����������v�j�q                                               
000000       WRITE ����������v�j�q .                                                   
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00369.                  
000000         DISPLAY "HBHUN370-90 SQWURISE WRITE ERROR ",                     
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00369.              
           DISPLAY "CX00369" UPON CONSOLE
           DISPLAY "CX00369"  UPON CONSOLE                                                    
000000     MOVE 1 TO �h�c�w�Q�[��                                                     
000000       INITIALIZE  �c�̕ʐ��Z�\�v�j�q .                                            
000000 CX00370. IF NOT(�h�c�w�Q�[�� < 31 AND �v�c���Q�[���^�C�v (�h�c�w�Q�[��) NOT = ZERO            
000000     )GO TO CX00371. 
           DISPLAY "CX00370" UPON CONSOLE
           DISPLAY "CX00370"  UPON CONSOLE                                                      
000000     MOVE �v�c���Q�[���^�C�v (�h�c�w�Q�[��) TO �v�c�m�r�Q�[���^�C�v                                
000000     MOVE �v�c���u���b�N�R�[�h (�h�c�w�Q�[��) TO �v�c�m�r�u���b�N�R�[�h                              
000000     MOVE 1 TO �h�c�w�� .                                                    
000000 CX00372. IF NOT(�h�c�w�� < 22 AND �v�c���� (�h�c�w�Q�[�� �h�c�w��) NOT = ZERO           
000000     )GO TO CX00373. 
           DISPLAY "CX00372" UPON CONSOLE
           DISPLAY "CX00372"  UPON CONSOLE                                                      
000000     MOVE �v�c���� (�h�c�w�Q�[�� �h�c�w��) TO �v�c�m�r��                                  
000000     MOVE 1 TO �h�c�w�c�� .                                                    
000000 CX00374. IF NOT(�h�c�w�c�� < 81)GO TO CX00375.                                
           DISPLAY "CX00374" UPON CONSOLE
000000     IF NOT(�v�c���c�̕ʔ��� (�h�c�w�Q�[�� �h�c�w�� �h�c�w�c��) NOT = ZERO                      
000000     )GO TO CX00376. 
           DISPLAY "CX00374"  UPON CONSOLE                                                     
000000     MOVE �h�c�w�c�� TO �v�c�m�r�c�̃R�[�h                                              
000000     MOVE �v�c���c�̕ʔ��� (�h�c�w�Q�[�� �h�c�w�� �h�c�w�c��) TO �v�c�m�r������z                       
000000     MOVE �v�c���̔��`���l���R�[�h (�h�c�w�Q�[�� �h�c�w�� �h�c�w�c��) TO �v�c�m�r�̔��`���l���R�[�h              
000000               WRITE �c�̕ʐ��Z�\�v�j�q .                                          
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00377.                  
000000                 DISPLAY "HBHUN370-91 SQWDNSSN WRITE ERROR ",             
000000                          STS-FILE1 " " STS-FILE2                         
000000                 STOP RUN .                                             
000000 CX00377.                                                                 
           DISPLAY "CX00377" UPON CONSOLE
000000 CX00376.                                                                  
           DISPLAY "CX00376" UPON CONSOLE
000000     COMPUTE �h�c�w�c�� = �h�c�w�c�� + 1 .                                          
000000     GO TO CX00374.                                                       
000000 CX00375.    
           DISPLAY "CX00375" UPON CONSOLE
           DISPLAY "CX00375"  UPON CONSOLE                                                             
000000     COMPUTE �h�c�w�� = �h�c�w�� + 1 .                                          
000000     GO TO CX00372.                                                       
000000 CX00373.           
           DISPLAY "CX00373" UPON CONSOLE
           DISPLAY "CX00373"  UPON CONSOLE                                                        
000000     COMPUTE �h�c�w�Q�[�� = �h�c�w�Q�[�� + 1 .                                        
000000     GO TO CX00370.                                                       
000000 CX00371.     
           DISPLAY "CX00371" UPON CONSOLE
           DISPLAY "CX00371"  UPON CONSOLE                                                               
000000     MOVE 1 TO �h�c�w�Q�[��                                                     
000000       INITIALIZE  ���J�萔���v�j�q .
      *20141028�C���J�n                                             
000000* CX00378. IF NOT( (�h�c�w�Q�[�� < 31) AND (�v�����Q�[���^�C�v (�h�c�w�Q�[��) NOT =             
       CX00378. IF NOT( (�v�j�|���J�萔���v�j�s�a�k�� < 11) AND (�v�����Q�[���^�C�v (�h�c�w�Q�[��) NOT =             
      *20141028�C���I��
000000     ZERO))GO TO CX00379.  
           DISPLAY "CX00378"  UPON CONSOLE                                                  
000000     MOVE �v�����Q�[���^�C�v (�h�c�w�Q�[��) TO �v�t�s�d�Q�[���^�C�v                                
000000     MOVE �v�����u���b�N�R�[�h (�h�c�w�Q�[��) TO �v�t�s�d�u���b�N�R�[�h                              
000000     MOVE 1 TO �h�c�w�� .                                                    
000000 CX00380. IF NOT( (�h�c�w�� < 22) AND (�v������ (�h�c�w�Q�[�� �h�c�w��) NOT =            
000000     ZERO))GO TO CX00381.
           DISPLAY "CX00380" UPON CONSOLE
           DISPLAY "CX00380"  UPON CONSOLE                                                 
000000     MOVE �v������ (�h�c�w�Q�[�� �h�c�w��) TO �v�t�s�d��                                  
000000     MOVE 1 TO �h�c�w�̔��b .                                                   
000000 CX00382. IF NOT(�h�c�w�̔��b <= �r�f�i�P�̔��b�������l)GO TO CX00383.                     
           DISPLAY "CX00382" UPON CONSOLE
000000     IF NOT(�v�����̔��`���l���R�[�h (�h�c�w�Q�[�� �h�c�w�� �h�c�w�̔��b) NOT = ZERO                 
000000     )GO TO CX00384. 
           DISPLAY "CX00382"  UPON CONSOLE                                                       
000000     MOVE �v�����̔��`���l���R�[�h (�h�c�w�Q�[�� �h�c�w�� �h�c�w�̔��b) TO �v�t�s�d�̔��`���l���R�[�h             
000000     MOVE �v����������z (�h�c�w�Q�[�� �h�c�w�� �h�c�w�̔��b) TO �v�t�s�d������z                       
000000     MOVE �v�����萔���␳�z (�h�c�w�Q�[�� �h�c�w�� �h�c�w�̔��b) TO �v�t�s�d�萔���␳�z                   
000000     MOVE 1 TO �h�c�w���z�� .                                                   
000000 CX00385. IF NOT(�h�c�w���z�� < 6)GO TO CX00386. 
           DISPLAY "CX00385" UPON CONSOLE
           DISPLAY "CX00385"  UPON CONSOLE                               
000000     MOVE �v�����݌v�萔�� (�h�c�w�Q�[�� �h�c�w�� �h�c�w�̔��b �h�c�w���z��) TO �v�t�s�d���z�ѕʔ��J�萔��          
000000     (�h�c�w���z��)                                                             
000000     COMPUTE �h�c�w���z�� = �h�c�w���z�� + 1 .                                        
000000     GO TO CX00385.                                                       
000000 CX00386.    
           DISPLAY "CX00386" UPON CONSOLE
           DISPLAY "CX00386"  UPON CONSOLE                                                             
000000               WRITE ���J�萔���v�j�q INVALID CONTINUE .                          
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00387.                  
000000                 DISPLAY "HBHUN370-92 VIWURTES WRITE ERROR ",             
000000                          STS-FILE1 " " STS-FILE2                         
000000                 STOP RUN .                                             
000000 CX00387.                                                                 
           DISPLAY "CX00387" UPON CONSOLE
000000 CX00384.          
           DISPLAY "CX00384" UPON CONSOLE
           DISPLAY "CX00384"  UPON CONSOLE                                                          
000000     COMPUTE �h�c�w�̔��b = �h�c�w�̔��b + 1 .                                        
000000     GO TO CX00382.                                                       
000000 CX00383.     
           DISPLAY "CX00383" UPON CONSOLE
           DISPLAY "CX00383"  UPON CONSOLE                                                                
000000     COMPUTE �h�c�w�� = �h�c�w�� + 1 .                                          
000000     GO TO CX00380.                                                       
000000 CX00381. 
           DISPLAY "CX00381" UPON CONSOLE
           DISPLAY "CX00381"  UPON CONSOLE                                                                    
000000     COMPUTE �h�c�w�Q�[�� = �h�c�w�Q�[�� + 1 .                                        
      *20141028�ǉ��J�n
           IF �h�c�w�Q�[�� > 4 
               MOVE 1 TO �h�c�w�Q�[��
               INITIALIZE �v�j�|���J�萔���v�j�s�a�k
               COMPUTE �v�j�|���J�萔���v�j�s�a�k�� = �v�j�|���J�萔���v�j�s�a�k�� + 1
           ELSE
      *20141028�ǉ��I��
000000     GO TO CX00378.                                                       
000000 CX00379. 
           DISPLAY "CX00379" UPON CONSOLE
           DISPLAY "CX00379"  UPON CONSOLE                                                                
000000 CX00023. EXIT.                                                           
000000 ERWK-RTN .   
           DISPLAY "ERWK-RTN"  UPON CONSOLE                                                             
000000     MOVE �v�j�s�ʏ�� TO �d�q�v�j�ʏ��                                             
000000       WRITE �G���[�v�j�q .                                                     
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00388.                  
000000         DISPLAY "HBHUN370-93 SQTRONRI WRITE ERROR ",                     
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00388.                                                                 
           DISPLAY "CX00388" UPON CONSOLE
000000 CX00024. EXIT.                                                           
000000 ERR-REC-RTN .                                                            
000000     IF NOT(�e�k�f�G���[ = �n�m)GO TO CX00389.                                    
      *20141027�C���J�n
000000*         @ZCTMSGOT(MSGID = #BH201                                         
000000*                   PROGID = HBHUN370); .                                  
      *20141027�C���I��
000000 CX00389.                                                                 
000000 CX00025. EXIT.                                                           

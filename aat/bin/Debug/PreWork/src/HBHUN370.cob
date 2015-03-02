000000 IDENTIFICATION DIVISION.                                                 
000000 PROGRAM-ID. HBHUN370 .                                                   
000000 DATE-WRITTEN.                                                            
000000 DATE-COMPILED.                                                           
000000 ENVIRONMENT DIVISION.                                                    
000000 CONFIGURATION SECTION.                                                   
000000 SOURCE-COMPUTER.        ACOS.                                            
000000 OBJECT-COMPUTER.        ACOS.                                            
      *20141027C³ŠJŽn
000000* SPECIAL-NAMES.                                                           
000000*          ITG002    IS    SPCHNL.                                         
      *20141027C³ŠJŽn
000000 INPUT-OUTPUT SECTION.                                                     
000000 FILE-CONTROL.                                                            
000000     SELECT  ƒgƒ‰ƒ“ƒUƒNƒVƒ‡ƒ“‚e|‚`                                                  
000000*             ASSIGN               VRTRNSA                                 
                   ASSIGN               VRTRNSA-MSD
000000*             ORGANIZATION         VSAS  RELATIVE                          
                   ORGANIZATION         IS  RELATIVE
000000             ACCESS               DYNAMIC                                 
000000             RELATIVE             TR-A-RKEY                               
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT  ƒgƒ‰ƒ“ƒUƒNƒVƒ‡ƒ“‚e|‚a                                                  
000000*             ASSIGN               VRTRNSB                                 
000000*             ORGANIZATION         VSAS  RELATIVE                          
000000             ASSIGN               VRTRNSB-MSD                                 
000000             ORGANIZATION         IS  RELATIVE                          
000000             ACCESS               DYNAMIC                                 
000000             RELATIVE             TR-B-RKEY                               
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT ‰^—pŠÇ—‚e                                                         
000000*                  ASSIGN             VRUNYKAN                             
000000*                  ORGANIZATION       VSAS  RELATIVE                       
000000                  ASSIGN             VRUNYKAN-MSD                             
000000                  ORGANIZATION       IS  RELATIVE                       
000000                  ACCESS             RANDOM                               
000000                  RELATIVE           ‚q‚j|‰^—pŠÇ—‚e                             
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT ”„ê‚e                                                           
000000*                  ASSIGN             VIURIBA                              
000000*                  ORGANIZATION       VSAS INDEXED                         
000000                  ASSIGN             VIURIBA-MSD                              
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       RANDOM                               
000000                  RECORD  KEY        ‚t‚q‚a‚`”„êƒR[ƒh                            
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT  ƒQ[ƒ€‚e                                                         
000000*             ASSIGN               VIGAME                                  
000000*             ORGANIZATION         VSAS  INDEXED                           
000000             ASSIGN               VIGAME-MSD                                  
000000             ORGANIZATION         IS  INDEXED                           
000000             ACCESS               DYNAMIC                                 
000000             RECORD               ‚f‚`‚l‚dƒQ[ƒ€‚h‚c                               
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT  ƒQ[ƒ€ƒ‹[ƒ‹‚e                                                      
000000*             ASSIGN               VIGMRULE                                
000000*             ORGANIZATION         VSAS INDEXED                            
000000             ASSIGN               VIGMRULE-MSD                                
000000             ORGANIZATION         IS INDEXED                            
000000             ACCESS               RANDOM                                  
000000             RECORD               ‚f‚l‚q‚QƒŒƒR[ƒhƒL[                          
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT  ƒQ[ƒ€ó‹µ‚e                                                       
000000*             ASSIGN               VIGAMJYO                                
000000*             ORGANIZATION         VSAS  INDEXED                           
000000             ASSIGN               VIGAMJYO-MSD                                
000000             ORGANIZATION         IS  INDEXED                           
000000             ACCESS               RANDOM                                  
000000             RECORD               ‚f‚l‚i‚xƒQ[ƒ€‚h‚c                               
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT ‹ÆŽÒ‚e                                                           
000000*                  ASSIGN             VIGYOSYA                             
000000*                  ORGANIZATION       VSAS INDEXED                         
000000                  ASSIGN             VIGYOSYA-MSD                             
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       RANDOM                               
000000                  RECORD  KEY        ‚f‚x‚r‚`‹ÆŽÒƒR[ƒh‚w                            
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT ‹à—Z‹@ŠÖŽè”—¿•ÏX‚fî•ñ‚e                                                 
000000*                  ASSIGN             VITSGMKY                             
000000*                  ORGANIZATION       VSAS INDEXED                         
000000                  ASSIGN             VITSGMKY-MSD                             
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       DYNAMIC                              
000000                  RECORD  KEY        ‚s‚r‚f‚lƒŒƒR[ƒhƒL[                           
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT ”Ì”„‚b•ÊŽè”—¿•ÏX‚fî•ñ‚e                                                 
000000*                  ASSIGN             VITSGMCH                             
000000*                  ORGANIZATION       VSAS INDEXED                         
000000                  ASSIGN             VITSGMCH-MSD                             
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       DYNAMIC                              
000000                  RECORD  KEY        ‚g‚b‚g‚sƒŒƒR[ƒhƒL[                           
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT ”Ì”„ƒ`ƒƒƒlƒ‹‚e                                                       
000000*                  ASSIGN             VICHNNEL                             
000000*                  ORGANIZATION       VSAS INDEXED                         
000000                  ASSIGN             VICHNNEL-MSD                             
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       DYNAMIC                              
000000                  RECORD  KEY        ‚b‚g‚m‚k”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh‚w                        
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT ”„ŽJŽè”—¿‚e                                                        
000000*                  ASSIGN             VIURTESU                             
000000*                  ORGANIZATION       VSAS INDEXED                         
000000                  ASSIGN             VIURTESU-MSD                             
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       DYNAMIC                              
000000                  RECORD  KEY        ‚t‚q‚s‚rƒŒƒR[ƒhƒL[                           
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT ”„ŽJŽè”—¿‚v‚j‚e                                                      
000000*                  ASSIGN             VIWURTES                             
000000*                  ORGANIZATION       VSAS INDEXED                         
000000                  ASSIGN             VIWURTES-MSD                             
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       RANDOM                               
000000                  RECORD  KEY        ‚v‚t‚s‚dƒŒƒR[ƒhƒL[                           
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT  ‚r‚fî•ñŠÇ—‚e                                                      
000000*             ASSIGN               VRSGJYO                                 
000000*             ORGANIZATION         VSAS  RELATIVE                          
000000             ASSIGN               VRSGJYO-MSD                                 
000000             ORGANIZATION         IS  RELATIVE                          
000000             ACCESS               RANDOM                                  
000000             RELATIVE             SGF-KEY                                 
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT  ŠO•””Ì”„—p“ÁŽêŽæˆø‚e|‚`                                                 
000000*             ASSIGN               VRTKSYGA                                
000000*             ORGANIZATION         VSAS  RELATIVE                          
000000             ASSIGN               VRTKSYGA-MSD                                
000000             ORGANIZATION         IS  RELATIVE                          
000000             ACCESS               DYNAMIC                                 
000000             RELATIVE             ‚q‚j|“ÁŽêŽæˆø‚`                                
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT  ŠO•””Ì”„—p“ÁŽêŽæˆø‚e|‚a                                                 
000000*             ASSIGN               VRTKSYGB                                
000000*             ORGANIZATION         VSAS  RELATIVE                          
000000             ASSIGN               VRTKSYGB-MSD                                
000000             ORGANIZATION         IS  RELATIVE                          
000000             ACCESS               DYNAMIC                                 
000000             RELATIVE             ‚q‚j|“ÁŽêŽæˆø‚a                                
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT ”­”„ƒQ[ƒ€‚e|‚`                                                      
000000*                  ASSIGN             VIHATGMA                             
000000*                  ORGANIZATION       VSAS INDEXED                         
000000                  ASSIGN             VIHATGMA-MSD                             
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       DYNAMIC                              
000000                  RECORD  KEY        ‚g‚s‚f‚`ƒQ[ƒ€‚h‚c                            
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT ”­”„ƒQ[ƒ€‚e|‚a                                                      
000000*                  ASSIGN             VIHATGMB                             
000000*                  ORGANIZATION       VSAS INDEXED                         
000000                  ASSIGN             VIHATGMB-MSD                             
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       DYNAMIC                              
000000                  RECORD  KEY        ‚g‚s‚f‚aƒQ[ƒ€‚h‚c                            
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT ‚ŠzŽx•¥î•ñ‚v‚j‚e                                                     
000000*                  ASSIGN             SQWKGKSH                             
000000                  ASSIGN             SQWKGKSH-MSD                             
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT ”„ã‹à¸¸‚v‚j‚e                                                      
000000*                  ASSIGN             SQWURISE                             
000000                  ASSIGN             SQWURISE-MSD                             
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT ”„ê•Ê”„ã‚v‚j‚e                                                      
000000*                  ASSIGN             SQWURIUR                             
000000                  ASSIGN             SQWURIUR-MSD                             
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT ”„êŽžŠÔ‘Ñ•Ê”„ã‚v‚j‚e                                                   
000000*                  ASSIGN             SQWJIKAN                             
000000                  ASSIGN             SQWJIKAN-MSD                             
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT w“ü“ú•Ê\žó‹µ‚v‚j‚e                                                   
000000*                  ASSIGN             SQWKNYJY                             
000000                  ASSIGN             SQWKNYJY-MSD                             
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT ”„ê•Ê¸ŽZ•\‚v‚j‚e                                                     
000000*                  ASSIGN             SQWURISS                             
000000                  ASSIGN             SQWURISS-MSD                             
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT ‰ñ†•Ê¸ŽZ•\‚v‚j‚e                                                     
000000*                  ASSIGN             SQWKAISS                             
000000                  ASSIGN             SQWKAISS-MSD                             
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT ’c‘Ì•Ê¸ŽZ•\‚v‚j‚e                                                     
000000*                  ASSIGN             SQWDNSSN                             
000000                  ASSIGN             SQWDNSSN-MSD                             
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT ŠO•””Ì”„—p”„ãî•ñ‚v‚j‚e                                                  
000000*                  ASSIGN             SQWGURAG                             
000000                  ASSIGN             SQWGURAG-MSD                             
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT ŠO”Ì—páŠQŽæÁ•s‰Â‚v‚j‚e                                                  
000000*                  ASSIGN             SQWGTOFK                             
000000                  ASSIGN             SQWGTOFK-MSD                             
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT ƒGƒ‰[‚v‚j‚e                                                        
000000*                  ASSIGN             SQWERROR                             
000000                  ASSIGN             SQWERROR-MSD                             
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
      *20141028’Ç‰ÁŠJŽn
000000     SELECT •Ï””Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh‚e                                                        
000000                  ASSIGN             NEWFILE-MSD                             
000000             FILE STATUS          STS-FILE1.                   
      *20141028’Ç‰ÁI—¹
000000 DATA DIVISION.                                                           
000000 FILE SECTION.                                                            
000000 FD  ƒgƒ‰ƒ“ƒUƒNƒVƒ‡ƒ“‚e|‚`                                                          
000000     LABEL  RECORD  STANDARD                                            
      *20141027’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "VRTRNSA".
      *20141027’Ç‰ÁI—¹
000000 01  ƒgƒ‰ƒ“ƒUƒNƒVƒ‡ƒ“‚q|‚`.                                                         
000000   03  ‚s‚q‚m‚`ƒŒƒR[ƒhŠi”[Œ”     USAGE   COMP-1.                                   
000000   03  ‚s‚q‚m‚`‚e‚d‚oŽ¯•ÊŽq         PIC     9(2).                                   
000000   03  ‚s‚q‚m‚`ƒpƒX”Ô†             PIC     9(2).                                 
000000   03  ‚s‚q‚m‚`ƒpƒX•Ê“d•¶“ú•t       USAGE   COMP-2.                                  
000000   03  ‚s‚q‚m‚`ƒpƒX•Ê“d•¶’Ê”Ô       USAGE   COMP-2.                                  
000000   03  ‚s‚q‚m‚`ŒÂ•Êî•ñ             OCCURS  63.                                   
000000     COPY CFTRNS REPLACING                                                
000000              //‚s‚q‚m‚r//  BY  //‚s‚q‚m‚`// .                                    
000000 FD  ƒgƒ‰ƒ“ƒUƒNƒVƒ‡ƒ“‚e|‚a                                                          
000000     LABEL  RECORD  STANDARD                                             
      *20141027’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "VRTRNSB".
      *20141027’Ç‰ÁI—¹
000000 01  ƒgƒ‰ƒ“ƒUƒNƒVƒ‡ƒ“‚q|‚a.                                                         
000000   03  ‚s‚q‚m‚aƒŒƒR[ƒhŠi”[Œ”     USAGE   COMP-1.                                   
000000   03  ‚s‚q‚m‚a‚e‚d‚oŽ¯•ÊŽq         PIC     9(2).                                   
000000   03  ‚s‚q‚m‚aƒpƒX”Ô†             PIC     9(2).                                 
000000   03  ‚s‚q‚m‚aƒpƒX•Ê“d•¶“ú•t       USAGE   COMP-2.                                  
000000   03  ‚s‚q‚m‚aƒpƒX•Ê“d•¶’Ê”Ô       USAGE   COMP-2.                                  
000000   03  ‚s‚q‚m‚aŒÂ•Êî•ñ             OCCURS  63.                                   
000000     COPY CFTRNS REPLACING                                                
000000              //‚s‚q‚m‚r//  BY  //‚s‚q‚m‚a// .                                    
000000 FD  ‰^—pŠÇ—‚e
      *20141027C³ŠJŽn                                                          
000000*     RECORD  VARYING  IN  SIZE
           LABEL RECORD STANDARD
      *20141027C³I—¹                                           
      *20141027’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "VRUNYKAN".
      *20141027’Ç‰ÁI—¹
000000* 01  ‰^—pŠÇ—‚q‚Q.                                                              
000000*     COPY CFUNK2 .                                                        
000000 01  ‰^—pŠÇ—‚q‚P.                                                              
000000     COPY CFUNK1 .                                                        
000000* 01  ‰^—pŠÇ—‚q‚R.                                                              
000000*     COPY CFUNK3 .                                                        
000000 FD  ‹ÆŽÒ‚e                                                                  
000000     LABEL RECORD STANDARD                                               
      *20141027’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "VIGYOSYA".
      *20141027’Ç‰ÁI—¹
000000 01  ‹ÆŽÒ‚q.                                                                 
000000     COPY CFGYSA .                                                        
000000 FD  ”„ê‚e                                                                  
000000     LABEL RECORD STANDARD                                               
      *20141027’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "VIURIBA".
      *20141027’Ç‰ÁI—¹
000000 01  ”„ê‚q.                                                                 
000000     COPY CFURBA .                                                        
000000 FD  ƒQ[ƒ€ó‹µ‚e                                                               
000000     LABEL  RECORD  STANDARD                                             
      *20141027’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "VIGAMJYO".
      *20141027’Ç‰ÁI—¹
000000 01  ƒQ[ƒ€ó‹µ‚q.                                                              
000000     COPY CFGMJY .                                                        
000000 FD  ƒQ[ƒ€ƒ‹[ƒ‹‚e                                                              
000000     LABEL  RECORD  STANDARD                                             
      *20141027’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "VIGMRULE".
      *20141027’Ç‰ÁI—¹
      *20141102C³ŠJŽn
000000* 01  ƒQ[ƒ€ƒ‹[ƒ‹‚j.                                                             
000000*     COPY CFGMR1 .
      *20141102C³I—¹                                                        
000000 01  ƒQ[ƒ€ƒ‹[ƒ‹‚l.                                                             
000000     COPY CFGMR2 .                                                        
000000 FD  ƒQ[ƒ€‚e                                                                 
000000     LABEL  RECORD  STANDARD                                             
      *20141027’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "VIGAME".
      *20141027’Ç‰ÁI—¹
000000 01  ƒQ[ƒ€‚q.                                                                
000000     COPY CFGAME .                                                        
000000 FD  ”­”„ƒQ[ƒ€‚e|‚`                                                             
000000     LABEL  RECORD  STANDARD                                             
      *20141027’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "VIHATGMA".
      *20141027’Ç‰ÁI—¹
000000 01  ”­”„ƒQ[ƒ€‚q|‚`.                                                            
000000     COPY CFHTGM REPLACING                                                
000000              //‚g‚s‚f‚l//  BY  //‚g‚s‚f‚`// .                                    
000000 FD  ”­”„ƒQ[ƒ€‚e|‚a                                                             
000000     LABEL  RECORD  STANDARD                                             
      *20141027’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "VIHATGMB".
      *20141027’Ç‰ÁI—¹
000000 01  ”­”„ƒQ[ƒ€‚q|‚a.                                                            
000000     COPY CFHTGM REPLACING                                                
000000              //‚g‚s‚f‚l//  BY  //‚g‚s‚f‚a// .                                    
000000 FD  ŠO•””Ì”„—p“ÁŽêŽæˆø‚e|‚`                                                         
000000     LABEL  RECORD  STANDARD                                             
      *20141027’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "VRTKSYGA".
      *20141027’Ç‰ÁI—¹
000000 01  ŠO•””Ì”„—p“ÁŽêŽæˆø‚q|‚`.                                                        
000000     COPY CFGHT2 .                                                        
000000 FD  ŠO•””Ì”„—p“ÁŽêŽæˆø‚e|‚a                                                         
000000     LABEL  RECORD  STANDARD                                             
      *20141027’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "VRTKSYGB".
      *20141027’Ç‰ÁI—¹
000000 01  ŠO•””Ì”„—p“ÁŽêŽæˆø‚q|‚a.                                                        
000000     COPY CFGHT2 REPLACING                                                
000000              //‚f‚g‚s‚Q//  BY  //‚f‚g‚s‚Q‚a// .                                   
000000 FD  ‹à—Z‹@ŠÖŽè”—¿•ÏX‚fî•ñ‚e                                                        
000000     LABEL  RECORD  STANDARD                                             
      *20141027’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "VITSGMKY".
      *20141027’Ç‰ÁI—¹
000000 01  ‹à—Z‹@ŠÖŽè”—¿•ÏX‚fî•ñ‚q.                                                       
000000     COPY CFTSGM .                                                        
000000 FD  ”Ì”„‚b•ÊŽè”—¿•ÏX‚fî•ñ‚e                                                        
000000     LABEL  RECORD  STANDARD                                             
      *20141027’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "VITSGMCH".
      *20141027’Ç‰ÁI—¹
000000 01  ”Ì”„‚b•ÊŽè”—¿•ÏX‚fî•ñ‚q.                                                       
000000     COPY CFHCHT .                                                        
000000 FD  ”Ì”„ƒ`ƒƒƒlƒ‹‚e                                                              
000000     LABEL RECORD STANDARD                                               
      *20141027’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "VICHNNEL".
      *20141027’Ç‰ÁI—¹
000000 01  ”Ì”„ƒ`ƒƒƒlƒ‹‚q.                                                             
000000     COPY CFCHNL .                                                        
000000 FD  ‚ŠzŽx•¥î•ñ‚v‚j‚e                                                            
000000     LABEL  RECORD  STANDARD                                             
      *20141027’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "SQWKGKSH".
      *20141027’Ç‰ÁI—¹
000000 01  ‚ŠzŽx•¥î•ñ‚v‚j‚q.                                                           
000000     COPY CFKSMT .                                                        
000000 FD  ”„ã‹à¸¸‚v‚j‚e                                                             
000000     LABEL  RECORD  STANDARD                                             
      *20141027’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "SQWURISE".
      *20141027’Ç‰ÁI—¹
000000 01  ”„ã‹à¸¸‚v‚j‚q.                                                            
000000     COPY CFWUAS .                                                        
000000 FD  ”„ê•Ê”„ã‚v‚j‚e                                                             
000000     LABEL  RECORD  STANDARD                                             
      *20141027’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "SQWURIUR".
      *20141027’Ç‰ÁI—¹
000000 01  ”„ê•Ê”„ã‚v‚j‚q.                                                            
000000     COPY CFWUBU .                                                        
000000 FD  ”„êŽžŠÔ‘Ñ•Ê”„ã‚v‚j‚e                                                          
000000     LABEL  RECORD  STANDARD                                            
      *20141027’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "SQWJIKAN".
      *20141027’Ç‰ÁI—¹
000000 01  ”„êŽžŠÔ‘Ñ•Ê”„ã‚v‚j‚q.                                                         
000000     COPY CFWJIK .                                                        
000000 FD  w“ü“ú•Ê\žó‹µ‚v‚j‚e                                                          
000000     LABEL  RECORD  STANDARD                                             
      *20141027’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "SQWKNYJY".
      *20141027’Ç‰ÁI—¹
000000 01  w“ü“ú•Ê\žó‹µ‚v‚j‚q.                                                         
000000     COPY CFWKNY .                                                        
000000 FD  ”„ê•Ê¸ŽZ•\‚v‚j‚e                                                            
000000     LABEL  RECORD  STANDARD                                             
      *20141027’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "SQWURISS".
      *20141027’Ç‰ÁI—¹
000000 01  ”„ê•Ê¸ŽZ•\‚v‚j‚q.                                                           
000000     COPY CFWUBS .                                                        
000000 FD  ‰ñ†•Ê¸ŽZ•\‚v‚j‚e                                                            
000000     LABEL  RECORD  STANDARD                                             
      *20141027’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "SQWKAISS".
      *20141027’Ç‰ÁI—¹
000000 01  ‰ñ†•Ê¸ŽZ•\‚v‚j‚q.                                                           
000000     COPY CFWKAI .                                                        
000000 FD  ’c‘Ì•Ê¸ŽZ•\‚v‚j‚e                                                            
000000     LABEL  RECORD  STANDARD                                             
      *20141027’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "SQWDNSSN".
      *20141027’Ç‰ÁI—¹
000000 01  ’c‘Ì•Ê¸ŽZ•\‚v‚j‚q.                                                           
000000     COPY CFWDNS .                                                        
000000 FD  ƒGƒ‰[‚v‚j‚e                                                               
000000     LABEL  RECORD  STANDARD                                             
      *20141027’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "SQWERROR".
      *20141027’Ç‰ÁI—¹
000000 01  ƒGƒ‰[‚v‚j‚q.                                                              
000000   03  ‚d‚q‚v‚jŒÂ•Êî•ñ.                                                          
000000     COPY CFTRNS REPLACING                                                
000000              //‚s‚q‚m‚r//  BY  //‚d‚q‚v‚j// .                                    
000000 FD  ŠO•””Ì”„—p”„ãî•ñ‚v‚j‚e                                                         
000000     LABEL  RECORD  STANDARD                                             
      *20141027’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "SQWGURAG".
      *20141027’Ç‰ÁI—¹
000000 01  ŠO•””Ì”„—p”„ãî•ñ‚v‚j‚q.                                                        
000000     COPY CFWGUA .                                                        
000000 FD  ŠO”Ì—páŠQŽæÁ•s‰Â‚v‚j‚e                                                         
000000     LABEL  RECORD  STANDARD                                             
      *20141027’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "SQWGTOFK".
      *20141027’Ç‰ÁI—¹
000000 01  ŠO”Ì—páŠQŽæÁ•s‰Â‚v‚j‚q.                                                        
000000     COPY CFWGTF .                                                        
000000 FD  ‚r‚fî•ñŠÇ—‚e
      *20141027C³ŠJŽn                                                              
000000*     RECORD  VARYING  IN  SIZE                                         
           LABEL  RECORD  STANDARD
      *20141027C³I—¹
      *20141027’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "VRSGJYO".
      *20141027’Ç‰ÁI—¹
000000* 01  ‚r‚fî•ñŠÇ—‚q‚R.                                                            
000000*     COPY CFSGJ3 .                                                        
000000 01  ‚r‚fî•ñŠÇ—‚q‚P.                                                            
000000     COPY CFSGJ1 .                                                        
000000* 01  ‚r‚fî•ñŠÇ—‚q‚Q.                                                            
000000*     COPY CFSGJ2 .                                                        
000000 FD  ”„ŽJŽè”—¿‚e                                                               
000000     LABEL  RECORD  STANDARD                                             
      *20141027’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "VIURTESU".
      *20141027’Ç‰ÁI—¹
000000 01  ”„ŽJŽè”—¿‚q.                                                              
000000     COPY CFURTS .                                                        
000000 FD  ”„ŽJŽè”—¿‚v‚j‚e                                                             
000000     LABEL  RECORD  STANDARD                                             
      *20141027’Ç‰ÁŠJŽn
           VALUE  OF IDENTIFICATION IS "VIWURTES".
      *20141027’Ç‰ÁI—¹
000000 01  ”„ŽJŽè”—¿‚v‚j‚q.                                                            
000000     COPY CFWUTE .
      *20141028’Ç‰ÁŠJŽn
000000 FD  •Ï””Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh‚e
           LABEL  RECORD  STANDARD                                                        
           VALUE  OF IDENTIFICATION IS "NEWFILE".
       01  SPCHNL                            PIC X(02).
      *20141028’Ç‰ÁI—¹                                                        
000000 WORKING-STORAGE SECTION.                                                 
000000 01  ì‹ÆƒGƒŠƒA.                                                               
000000   03  ‚v‚j|“™‹‰                      PIC 9(02).                              
000000   03  ‚v‚j|”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh        PIC 9(02).                                     
000000   03  ‚v‚j|ƒQ[ƒ€ƒ^ƒCƒv              PIC 9(02).                                  
000000   03  ‚v‚j|ƒuƒƒbƒNƒR[ƒh            COMP-1.                                      
000000   03  ‚v‚j|‘åŽè‹ÆŽÒ                  PIC X(03).                                
000000   03  ‚v‚j|¢‘ã‹æ•ª                  PIC X(01).                                
000000   03  ‚v‚j|Œp‘±‰ñ†”                PIC 9(01).                                 
000000   03  ‚v‚j|‰ñ†                      PIC 9(01).                              
000000   03  ‚v‚j|\ž’Ê‚è”                PIC 9(04).                                 
000000   03  ‚v‚j|”­Œ”“ú                    PIC 9(08).                               
000000   03  ‚v‚j|Žx•¥“ú                    PIC 9(08).                               
000000   03  ‚v‚j|Œû”                      PIC 9(03).                              
000000   03  ‚v‚j|”„ŽJŽè”—¿                PIC 9(05)V9(02) COMP-3.                    
000000   03  ‚v‚j|•ÏXŒãŽè”—¿              PIC 9(11)V9(02) COMP-3.                     
000000   03  ‚v‚j|ƒpƒlƒ‹”                  PIC 9(01).                                
000000   03  ‚v‚j|\ž”Žš                  PIC 9(10).                                
000000   03  ‚v‚j|\ž”Žš‚q                REDEFINES ‚v‚j|\ž”Žš.                         
000000     05  ‚s‚a‚k\ž”Žš                PIC 9(01) OCCURS 10.                      
000000   03  ‚v‚j|“–‚¹‚ñ”Žš                PIC 9(10).                                 
000000   03  ‚v‚j|“–‚¹‚ñ”Žš‚q              REDEFINES ‚v‚j|“–‚¹‚ñ”Žš.                         
000000     05  ‚s‚a‚k“–‚¹‚ñ”Žš              PIC 9(01) OCCURS 10.                       
000000   03  ‚v‚j|‚s‚qŽ¯•ÊƒR[ƒh.                                                        
000000     05  ‚v‚j|‚s‚qŽ¯•ÊƒR[ƒhã‚WŒ…    PIC 9(08).                                      
000000     05  ‚v‚j|‚s‚qŽ¯•ÊƒR[ƒh’†‚WŒ…    PIC 9(08).                                      
000000     05  ‚v‚j|‚s‚qŽ¯•ÊƒR[ƒh‰º‚WŒ…    PIC 9(08).                                      
000000   03  ‚v‚j|\ž”Žš•ÏŠ·              PIC X(24).                                  
000000   03  ‚v‚j|\ž”Žš•ÏŠ·‚q‚m‚R‚R REDEFINES ‚v‚j|\ž”Žš•ÏŠ·.                                 
000000     05  ‚v‚j|\ž”Žš•ÏŠ·‚m‚R‚R      PIC 9(03).                                     
000000     05  FILLER                        PIC X(21).                         
000000   03  ‚v‚j|\ž”Žš•ÏŠ·‚q‚m‚R‚Q REDEFINES ‚v‚j|\ž”Žš•ÏŠ·.                                 
000000     05  ‚v‚j|\ž”Žš•ÏŠ·‚m‚R‚Q      PIC 9(02).                                     
000000     05  FILLER                        PIC X(22).                         
000000   03  ‚v‚j|\ž”Žš•ÏŠ·‚q‚m‚S‚S REDEFINES ‚v‚j|\ž”Žš•ÏŠ·.                                 
000000     05  ‚v‚j|\ž”Žš•ÏŠ·‚m‚S‚S      PIC 9(04).                                     
000000     05  FILLER                        PIC X(20).                         
000000   03  ‚v‚j|\ž”Žš•ÏŠ·‚q‚m‚S‚Q REDEFINES ‚v‚j|\ž”Žš•ÏŠ·.                                 
000000     05  ‚v‚j|\ž”Žš•ÏŠ·‚m‚S‚Q      PIC 9(02).                                     
000000     05  FILLER                        PIC X(22).                         
000000   03  ‚v‚j|\ž”Žš•ÏŠ·‚q‚k‚s   REDEFINES ‚v‚j|\ž”Žš•ÏŠ·.                                
000000     05  ‚v‚j|\ž”Žš•ÏŠ·‚k‚s        PIC X(02) OCCURS 12.                          
000000   03 —˜—pŽÒ§Œä•Ï”ƒGƒŠƒA.                                                         
000000     05  •Ï””Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh        PIC 9(02).                                    
000000   03  ‚v‚j|Ž¯•ÊƒR[ƒh•ÏŠ·.                                                        
000000     05  PTR_SBCDBEFORE                USAGE POINTER.                     
000000     05  PTR_SBCDAFTER                 USAGE POINTER.                     
000000     05  ‚v‚j|‚P‚UŽ¯•ÊƒR[ƒh.                                                      
000000       07  ‚v‚j|‚P‚UŽ¯•ÊƒR[ƒhã      PIC  9(08).                                   
000000       07  ‚v‚j|‚P‚UŽ¯•ÊƒR[ƒh‰º      PIC  9(08).                                   
000000     05  ‚v‚j|‚Q‚SŽ¯•ÊƒR[ƒh.                                                      
000000       07  ‚v‚j|‚Q‚SŽ¯•ÊƒR[ƒhã      PIC  9(08).                                   
000000       07  ‚v‚j|‚Q‚SŽ¯•ÊƒR[ƒh’†      PIC  9(08).                                   
000000       07  ‚v‚j|‚Q‚SŽ¯•ÊƒR[ƒh‰º      PIC  9(08).                                   
000000 01  ƒJƒEƒ“ƒ^.                                                                
000000   03  ‚b‚m‚sƒQ[ƒ€                    PIC 9(02).                               
000000   03  ‚b‚m‚s‰ñ†                      PIC 9(02).                              
000000   03  ‚b‚m‚s‘åŽè‹ÆŽÒ                  PIC 9(03).                                
000000   03  ‚b‚m‚s\ž”Žš                  PIC 9(02).                                
000000   03  ‚b‚m‚s”Ì”„‚b                    PIC 9(02).                               
000000   03  ‚b‚m‚s‹àŠz‘Ñ                    PIC 9(02).                               
000000   03  ‚b‚m‚s“–‚¹‚ñ                    PIC 9(02).                               
000000   03  ‚b‚m‚sƒpƒlƒ‹                    PIC 9(01).                               
000000   03  ‚b‚m‚s“d•¶’Ê”ÔŽæÁ              PIC 9(05).                                  
000000   03  ‚b‚m‚sŽ¯•ÊƒR[ƒhŽæÁ            PIC 9(05).                                   
000000 01  ‘Š‘ÎƒL[.                                                                
      *20141027C³ŠJŽn
000000*   03  ‚q‚j|‰^—pŠÇ—‚e                COMP-2.                                    
000000*   03  ‚q‚j|“ÁŽêŽæˆø‚`                COMP-2.                                    
000000*   03  ‚q‚j|“ÁŽêŽæˆø‚a                COMP-2.                                    
000000*   03  TR-A-RKEY                       COMP-2.                            
000000*   03  TR-B-RKEY                       COMP-2.                            
000000*   03  SGF-KEY                         COMP-2.                            
      *20141027C³I—¹
      *20141027’Ç‰ÁŠJŽn
000000   03  ‚q‚j|‰^—pŠÇ—‚e                PIC 9(08).                                    
000000   03  ‚q‚j|“ÁŽêŽæˆø‚`                PIC 9(08).                                    
000000   03  ‚q‚j|“ÁŽêŽæˆø‚a                PIC 9(08).                                    
000000   03  TR-A-RKEY                       PIC 9(08).                            
000000   03  TR-B-RKEY                       PIC 9(08).                            
000000   03  SGF-KEY                         PIC 9(08).                            
      *20141027’Ç‰ÁI—¹
000000 01  “YŽš.                                                                  
000000   03  ‚h‚c‚wŠi”[ƒŒƒR[ƒh              PIC 9(02).                                  
000000   03  ‚h‚c‚w”„êƒR[ƒh                PIC X(06).                                 
000000   03  ‚h‚c‚w”„êƒR[ƒh‚q              REDEFINES ‚h‚c‚w”„êƒR[ƒh.                         
000000     05  ‚h‚c‚w”„ê                    PIC 9(05).                              
000000     05  FILLER                        PIC X(01).                         
000000   03  ‚h‚c‚wƒQ[ƒ€                    PIC 9(02).                               
000000   03  ‚h‚c‚w‰ñ†                      PIC 9(02).                              
000000   03  ‚h‚c‚w‰ñ†‚Q                    PIC 9(02).                               
000000   03  ‚h‚c‚w”Ì”„‚b                    PIC 9(02).                               
000000   03  ‚h‚c‚wƒe[ƒuƒ‹”Ô†              PIC 9(02).                                  
000000   03  ‚h‚c‚w“–‚¹‚ñ                    PIC 9(02).                               
000000   03  ‚h‚c‚w‹àŠz‘Ñ                    PIC 9(01).                               
000000   03  ‚h‚c‚wƒpƒlƒ‹                    PIC 9(01).                               
000000   03  ‚h‚c‚w’c‘Ì                      PIC 9(03).                              
000000   03  ‚h‚c‚w‘åŽè‹ÆŽÒ                  PIC 9(03).                                
000000 01  ƒtƒ‰ƒO.                                                                 
000000   03  ŠeŽíƒtƒ‰ƒO.                                                             
000000     05  ‚e‚k‚fƒQ[ƒ€                  PIC 9(01).                               
000000     05  ‚e‚k‚f‰ñ†                    PIC 9(01).                              
000000     05  ‚e‚k‚fƒGƒ‰[                  PIC 9(01).                               
000000     05  ‚e‚k‚f”Ì”„‚b                  PIC 9(01).                               
000000     05  ‚e‚k‚f‘åŽè‹ÆŽÒ                PIC 9(01).                                
000000     05  ‚e‚k‚fáŠQŽæÁŽí•Ê            PIC 9(01).                                  
000000   03  ƒtƒ@ƒCƒ‹I—¹ƒtƒ‰ƒO.                                                         
000000     05  ‚e‚k‚f‚s‚q‚m‚r                PIC 9(01).                                
000000     05  ‚e‚k‚f‚g‚s‚f‚l                PIC 9(01).                                
000000     05  ‚e‚k‚f‚b‚g‚m‚k                PIC 9(01).                                
000000     05  ‚e‚k‚f‚g‚b‚g‚s                PIC 9(01).                                
000000     05  ‚e‚k‚f‚s‚r‚f‚l                PIC 9(01).                                
000000     05  ‚e‚k‚f‚f‚g‚s‚Q                PIC 9(01).                                
000000     05  ‚e‚k‚f‚t‚q‚s‚r                PIC 9(01).                                
000000 01  ƒtƒ@ƒCƒ‹ƒXƒe[ƒ^ƒX.                                                           
000000   03  STS-FILE1                       PIC X(02).                         
000000   03  STS-FILE2                       PIC 9(05).                         
000000 01  ‚v‚j|¸¸.                                                               
000000   03  ‚v¸|–{“ú”­Œ”‘Šz              PIC 9(11) COMP-3.                           
000000   03  ‚v¸|–{“ú”­Œ”ŽæÁ‘Šz          PIC 9(11) COMP-3.                             
000000   03  ‚v¸|–{“ú”­Œ”ŽæÁ‰ðœ‘Šz      PIC 9(11) COMP-3.                               
000000   03  ‚v¸|‰ðœƒJƒEƒ“ƒ^ƒI[ƒo        PIC 9(01).                                     
000000 01  ‚v‚j|‰ñ†î•ñƒe[ƒuƒ‹.                                                         
000000   03  ‚v‰ñ|ƒQ[ƒ€ƒuƒƒbƒN            OCCURS 30.                                   
000000     05  ‚v‰ñ|ƒQ[ƒ€ƒ^ƒCƒv            PIC 9(02).                                  
000000     05  ‚v‰ñ|ƒuƒƒbƒNƒR[ƒh          COMP-1.                                      
000000     05  ‚v‰ñ|‰ñ†•Êî•ñ              OCCURS 21.                                 
000000       07  ‚v‰ñ|‰ñ†                  COMP-1.                                 
000000       07  ‚v‰ñ|”„ŽJŽè”—¿‚s‚a‚k”Ô†  PIC 9(02).                                      
000000       07  ‚v‰ñ|’P‰¿                  PIC 9(05) COMP-3.                       
000000 01  ‚v‚j|‚ŠzŽx•¥Šî€’l.                                                          
000000   03  ‚v”Ì‚b•Êî•ñ                    OCCURS 10.                               
000000     05  ‚v”Ì‚ŠzŽx•¥Šî€’l            PIC 9(13) COMP-3.                           
      *20141027C³ŠJŽn
000000*01  ‚váŠQŽæÁ•s‰Â“WŠJ‚`.                                                          
       01  ‚váŠQ|“`•·’Ê”ÔŽæÁ‚`.
000000   03  ‚váŠQ|“`•·’Ê”ÔŽæÁ          OCCURS 1000.                                  
000000     05  ‚váŠQ|”„êƒR[ƒh              PIC X(06).                                
000000     05  ‚váŠQ|“d•¶’Ê”Ô                COMP-2.                                  
       01  ‚váŠQ|Ž¯•ÊƒR[ƒhŽæÁ‚`.
000000   03  ‚váŠQ|Ž¯•ÊƒR[ƒhŽæÁ        OCCURS 1000.                                   
000000     05  ‚váŠQ|Ž¯•ÊƒR[ƒh              PIC X(24).                                
000000     05  ‚váŠQ|ŽæÁ‹æ•ª                PIC X(01).                               
000000 01  ‚váŠQ|“d•¶’Ê”ÔŽæÁŒ”          PIC 9(05).                                   
000000 01  ‚váŠQ|Ž¯•ÊƒR[ƒhŽæÁŒ”        PIC 9(05).                                    
000000*   03  ‚váŠQ|“d•¶’Ê”ÔŽæÁŒ”          PIC 9(05).                                   
000000*   03  ‚váŠQ|Ž¯•ÊƒR[ƒhŽæÁŒ”        PIC 9(05).                                    
      *20141027C³I—¹
000000 01  ‚v‚j|’c‘Ì•Ê¸ŽZ•\. 
      *20141028C³ŠJŽn                                                          
000000   03  ‚v’c¸ƒQ[ƒ€ƒuƒƒbƒN            OCCURS 3.                                   
000000     05  ‚v’c¸ƒQ[ƒ€ƒ^ƒCƒv            PIC 9(02).                                  
000000     05  ‚v’c¸ƒuƒƒbƒNƒR[ƒh          COMP-1.                                      
000000     05  ‚v’c¸‰ñ†•Êî•ñ              OCCURS 21.                                 
000000       07  ‚v’c¸‰ñ†                  COMP-1.                                 
000000       07  ‚v’c¸’c‘Ì•Êî•ñ            OCCURS 80.                                 
000000         09  ‚v’c¸’c‘Ì•Ê”„ã          PIC 9(11) COMP-3.                          
000000         09  ‚v’c¸‹ÆŽÒƒR[ƒh          PIC 9(06) COMP-3.                          
000000         09  ‚v’c¸”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh  PIC 9(02).                                     
      *20141028’Ç‰ÁŠJŽn
       01  ‚v‚j|’c‘Ì•Ê¸ŽZ•\‰ñ”            PIC 9(02).
      *20141028’Ç‰ÁI—¹
000000 01  ‚v‚j‚sƒŒƒR[ƒh.                                                             
000000   03  ‚v‚j‚sƒŒƒR[ƒhŠi”[Œ”     USAGE   COMP-1.                                    
000000   03  ‚v‚j‚s‚e‚d‚oŽ¯•ÊŽq         PIC     9(2).                                    
000000   03  ‚v‚j‚sƒpƒX”Ô†             PIC     9(2).                                  
000000   03  ‚v‚j‚sƒpƒX•Ê“d•¶“ú•t       USAGE   COMP-2.                                   
000000   03  ‚v‚j‚sƒpƒX•Ê“d•¶’Ê”Ô       USAGE   COMP-2.                                   
000000   03  ‚v‚j‚sŒÂ•Êî•ñ.                                                           
000000     COPY CFTRNS REPLACING                                                
000000                 //‚s‚q‚m‚r// BY //‚v‚j‚s// .                                    
000000 01  ‚v‚j‚fƒŒƒR[ƒh.                                                             
000000     COPY CFHTGM REPLACING                                                
000000                 //‚g‚s‚f‚l// BY //‚v‚j‚f// .                                    
000000 01  ‚v‚j|”„ê•Ê¸ŽZ•\‚v‚j‚q.                                                        
000000     COPY CFWUBS REPLACING                                                
000000                 //‚v‚t‚a‚r// BY //‚v‚j”„¸// .                                   
000000 01  ‚v‚j|ŠO”Ì—p”„ãî•ñ‚v‚j‚q.                                                       
000000     COPY CFWGUA REPLACING                                                
000000                 //‚v‚f‚t‚`// BY //‚v‚jŠO”Ì// .                                   
000000 01  ‚v‚j|”„ŽJŽè”—¿ƒe[ƒuƒ‹.                                                        
000000   03  ‚v”„ŽJƒe[ƒuƒ‹”Ô†î•ñ          OCCURS 30.                                    
000000     05  ‚v”„ŽJ”Ì”„‚bî•ñ              OCCURS 10.                                 
000000       07  ‚v”„ŽJ”„ŽJ‹àŠz‘Ñî•ñ        OCCURS 5.                                    
000000         09  ‚v”„ŽJ”„ŽJŽè”—¿          PIC 9(05)V9(02) COMP-3.                    
000000         09  ‚v”„ŽJ”„ŽJŽè”—¿—¦        PIC 9(02)V9(04) COMP-3.                     
000000 01  ‚v‚j|”„ŽJŽè”—¿‚v‚j‚s‚a‚k.  
      *20141028C³ŠJŽn                                                     
000000*   03  ‚v”„ƒƒQ[ƒ€ƒuƒƒbƒN            OCCURS 30.
         03  ‚v”„ƒƒQ[ƒ€ƒuƒƒbƒN            OCCURS 3.                                    
      *20141028C³I—¹
000000     05  ‚v”„ƒƒQ[ƒ€ƒ^ƒCƒv            PIC 9(02).                                  
000000     05  ‚v”„ƒƒuƒƒbƒNƒR[ƒh          COMP-1.                                      
000000     05  ‚v”„ƒ‰ñ†•Êî•ñ              OCCURS 21.                                 
000000       07  ‚v”„ƒ‰ñ†                  COMP-1.                                 
000000       07  ‚v”„ƒ”Ì”„‚bî•ñ            OCCURS 10.                                 
000000         09  ‚v”„ƒ”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh  PIC 9(02).                                     
000000         09  ‚v”„ƒ”„ã‹àŠz            PIC 9(13) COMP-3.                         
000000         09  ‚v”„ƒ—ÝŒvŽè”—¿          OCCURS  5                                  
000000                                       PIC 9(13)V9(02) COMP-3.            
000000         09  ‚v”„ƒŽè”—¿•â³Šz        PIC 9(13)V9(02) COMP-3.                     
      *20141028’Ç‰ÁŠJŽn
       01  ‚v‚j|”„ŽJŽè”—¿‚v‚j‚s‚a‚k‰ñ”    PIC 9(02).
      *20141028’Ç‰ÁI—¹
000000 01  ‚v‚j|”Ì‚b•ÊŽè”—¿ƒe[ƒuƒ‹.                                                       
000000   03  ‚v|”Ì‚b•Ê”Ì‚bî•ñ              OCCURS 10.                                  
000000     05  ‚v|”Ì‚b•ÊƒQ[ƒ€ƒuƒƒbƒN      OCCURS 30.                                     
000000       07  ‚v|”Ì‚b•ÊƒQ[ƒ€ƒ^ƒCƒv      PIC 9(02).                                    
000000       07  ‚v|”Ì‚b•ÊƒuƒƒbƒNƒR[ƒh    COMP-1.                                        
000000       07  ‚v|”Ì‚b•Ê‰ñ†î•ñ          OCCURS 21.                                  
000000         09  ‚v|”Ì‚b•Ê‰ñ†            COMP-1.                                   
000000         09  ‚v|”Ì‚b•Ê‹àŠz‘Ñ”Ô†      PIC 9(01).                                   
      *20141028C³ŠJŽn
000000*01  ‚v|‹@ŠÖ•ÊŽè”—¿‚s‚a‚k‚O‚P.                                                       
000000*  03  ‚v|‹@ŠÖ•Ê”Ì‚bî•ñ‚O‚P.                                                       
000000*    05  ‚v|‹@ŠÖ•Ê‘åŽè‹ÆŽÒî•ñ‚O‚P     OCCURS 999.                                    
000000*      07  ‚v|‹@ŠÖ•Ê‘åŽè‹ÆŽÒ‚b‚c‚O‚P   PIC 9(03) COMP-3.                              
000000*      07  ‚v|‹@ŠÖ•ÊƒQ[ƒ€‚a‚k‚j‚O‚P   OCCURS 30.                                     
000000*        09  ‚v|‹@ŠÖ•ÊƒQ[ƒ€ƒ^ƒCƒv‚O‚P PIC 9(02).                                     
000000*        09  ‚v|‹@ŠÖ•ÊƒuƒƒbƒN‚b‚c‚O‚P COMP-1.                                        
000000*        09  ‚v|‹@ŠÖ•Ê‰ñ†î•ñ‚O‚P     OCCURS 21.                                   
000000*          11  ‚v|‹@ŠÖ•Ê‰ñ†‚O‚P       USAGE COMP-1.                              
000000*          11  ‚v|‹@ŠÖ•Ê‹àŠz‘Ñ”Ô†‚O‚P PIC 9(01).                                    
      *20141028C³I—¹
000000 01  ‚v|‹@ŠÖ•ÊŽè”—¿‚s‚a‚k‚O‚Q.                                                       
000000   03  ‚v|‹@ŠÖ•Ê”Ì‚bî•ñ‚O‚Q.                                                       
      *20141028C³ŠJŽn
000000*     05  ‚v|‹@ŠÖ•Ê‘åŽè‹ÆŽÒî•ñ‚O‚Q     OCCURS 999.                                    
           05  ‚v|‹@ŠÖ•Ê‘åŽè‹ÆŽÒî•ñ‚O‚Q     OCCURS 9.
      *20141028C³I—¹
000000       07  ‚v|‹@ŠÖ•Ê‘åŽè‹ÆŽÒ‚b‚c‚O‚Q   PIC 9(03).                                     
000000       07  ‚v|‹@ŠÖ•ÊƒQ[ƒ€‚a‚k‚j‚O‚Q   OCCURS 30.                                     
000000         09  ‚v|‹@ŠÖ•ÊƒQ[ƒ€ƒ^ƒCƒv‚O‚Q PIC 9(02).                                     
000000         09  ‚v|‹@ŠÖ•ÊƒuƒƒbƒN‚b‚c‚O‚Q COMP-1.                                        
000000         09  ‚v|‹@ŠÖ•Ê‰ñ†î•ñ‚O‚Q     OCCURS 21.                                   
000000           11  ‚v|‹@ŠÖ•Ê‰ñ†‚O‚Q       USAGE COMP-1.                              
000000           11  ‚v|‹@ŠÖ•Ê‹àŠz‘Ñ”Ô†‚O‚Q PIC 9(01).                                    
000000 01  ‚k‚m‚j‚`“™‹‰.                                                              
000000     COPY CWLNKA .                                                        
000000 01  ƒtƒ‰ƒO’l.                                                                
000000   03  ‚n‚m                            PIC 9(01) VALUE 1.                   
000000   03  ‚n‚e‚e                          PIC 9(01) VALUE 0.                    
000000 01  áŠQŽæÁŽí•Ê.                                                              
000000   03  “d•¶’Ê”ÔŽæÁ                    PIC 9(01) VALUE 1.                       
000000   03  Ž¯•ÊƒR[ƒhŽæÁ                  PIC 9(01) VALUE 0.                        
000000 01  ƒŒƒR[ƒh‚h‚c.                                                              
000000   03  ”­Œ”                            PIC 9(01) VALUE 1.                   
000000   03  ”­Œ”ŽæÁ                        PIC 9(01) VALUE 2.                     
000000   03  Žx•¥                            PIC 9(01) VALUE 4.                   
000000   03  Žx•¥ŽæÁ                        PIC 9(01) VALUE 5.                     
000000   03  ŠúŒÀŒãŽx•¥                      PIC 9(01) VALUE 6.                      
000000   03  ‘ã‘ÖŒ”                          PIC 9(01) VALUE 7.                    
000000   03  áŠQŽæÁ                        PIC 9(01) VALUE 8.                     
000000   03  “ÁŽê‘ã‘ÖŒ”                      PIC 9(01) VALUE 9.                      
000000 01  ƒQ[ƒ€ƒ^ƒCƒv.                                                              
000000   03  ƒiƒ“ƒo[ƒY                      PIC 9(01) VALUE 1.                      
000000   03  ƒƒg                            PIC 9(01) VALUE 2.                   
000000 01  •ªŽq.                                                                  
000000   03  •ªŽqƒiƒ“ƒo[ƒY‚R                PIC 9(01) VALUE 3.                         
000000   03  •ªŽqƒiƒ“ƒo[ƒY‚S                PIC 9(01) VALUE 4.                         
000000 01  ƒ^ƒCƒv‹æ•ª.                                                               
000000   03  ƒXƒgƒŒ[ƒg                      PIC 9(01) VALUE 1.                      
000000   03  ƒ{ƒbƒNƒX                        PIC 9(01) VALUE 2.                     
000000   03  ƒXƒgƒŒ[ƒgƒ{ƒbƒNƒX              PIC 9(01) VALUE 3.                          
000000   03  ƒtƒƒ“ƒgƒyƒA                    PIC 9(01) VALUE 4.                       
000000   03  ƒoƒbƒNƒyƒA                      PIC 9(01) VALUE 5.                      
000000   03  ƒ`ƒƒƒ“ƒX                        PIC 9(01) VALUE 6.                     
000000   03  ’Êí                            PIC 9(01) VALUE 2.                   
000000   03  ƒRƒ“ƒr‚V                        PIC 9(01) VALUE 3.                     
000000   03  ƒRƒ“ƒr‚W                        PIC 9(01) VALUE 4.                     
000000   03  ƒRƒ“ƒr‚X                        PIC 9(01) VALUE 5.                     
000000   03  ƒRƒ“ƒr‚P‚O                      PIC 9(01) VALUE 6.                      
      *20141028’Ç‰ÁŠJŽn
       01  KUMN-PARAM.
           COPY CLKUMN.
       01  DTCP-PARAM.                                                         
           COPY CLDTCP.
       01  SRLC-PARAM.                                                         
           COPY CLSRLC.
       01  IDXC-PARAM.                                                         
           COPY CLIDXC.
      *20141028’Ç‰ÁI—¹
000000 PROCEDURE DIVISION .                                                     
000000 MAIN-RTN .                                                               
000000     PERFORM S000-RTN THRU CX00002                                        
000000     PERFORM P000-RTN THRU CX00003                                        
000000     PERFORM E000-RTN THRU CX00004 .                                      
000000 CX00001. STOP RUN.                                                       
           DISPLAY "CX00001" UPON CONSOLE
000000 S000-RTN .                                                               
000000       OPEN INPUT ‰^—pŠÇ—‚e .                                                 
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00027.                           
000000         DISPLAY "HBHUN370-01 VRUNYKAN OPEN ERROR ",                      
000000                   STS-FILE1 " " STS-FILE2                                
000000         STOP RUN .                                                     
000000 CX00027.                                                                 
           DISPLAY "CX00027" UPON CONSOLE
000000       OPEN INPUT ”„ê‚e .                                                   
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00028.                           
000000         DISPLAY "HBHUN370-02 VIURIBA  OPEN ERROR ",                      
000000                   STS-FILE1 " " STS-FILE2                                
000000         STOP RUN .                                                     
000000 CX00028.                                                                 
           DISPLAY "CX00028" UPON CONSOLE
000000       OPEN INPUT ƒQ[ƒ€‚e .                                                  
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00029.                           
000000         DISPLAY "HBHUN370-03 VIGAME   OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00029.                                                                 
           DISPLAY "CX00029" UPON CONSOLE
000000       OPEN INPUT ƒQ[ƒ€ƒ‹[ƒ‹‚e .                                               
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00030.                           
000000         DISPLAY "HBHUN370-04 VIGMRULE OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00030.                                                                 
           DISPLAY "CX00030" UPON CONSOLE
000000       OPEN INPUT ƒQ[ƒ€ó‹µ‚e .                                                
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00031.                           
000000         DISPLAY "HBHUN370-05 VIGAMJYO OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00031.                                                                 
           DISPLAY "CX00031" UPON CONSOLE
000000       OPEN INPUT ‹ÆŽÒ‚e .                                                   
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00032.                           
000000         DISPLAY "HBHUN370-06 VIGYOSYA OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00032.                                                                 
           DISPLAY "CX00032" UPON CONSOLE
000000       OPEN INPUT ‹à—Z‹@ŠÖŽè”—¿•ÏX‚fî•ñ‚e .                                         
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00033.                           
000000         DISPLAY "HBHUN370-07 VITSGMKY OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00033.                                                                 
           DISPLAY "CX00033" UPON CONSOLE
000000       OPEN INPUT ”Ì”„‚b•ÊŽè”—¿•ÏX‚fî•ñ‚e .                                         
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00034.                           
000000         DISPLAY "HBHUN370-08 VITSGMCH OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00034.                                                                 
           DISPLAY "CX00034" UPON CONSOLE
000000       OPEN INPUT ”Ì”„ƒ`ƒƒƒlƒ‹‚e .                                               
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00035.                           
000000         DISPLAY "HBHUN370-09 VICHNNEL OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00035.                                                                 
           DISPLAY "CX00035" UPON CONSOLE
000000       OPEN INPUT ”„ŽJŽè”—¿‚e .                                                
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00036.                           
000000         DISPLAY "HBHUN370-10 VIUTRESU OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00036.                                                                 
           DISPLAY "CX00036" UPON CONSOLE
000000       OPEN OUTPUT ‚ŠzŽx•¥î•ñ‚v‚j‚e .                                            
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00037.                           
000000         DISPLAY "HBHUN370-11 SQWKGKSH OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00037.                                                                 
           DISPLAY "CX00037" UPON CONSOLE
000000       OPEN OUTPUT ”„ã‹à¸¸‚v‚j‚e .                                             
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00038.                           
000000         DISPLAY "HBHUN370-12 SQWURISE OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00038.                                                                 
           DISPLAY "CX00038" UPON CONSOLE
000000       OPEN OUTPUT ”„ê•Ê”„ã‚v‚j‚e .                                             
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00039.                           
000000         DISPLAY "HBHUN370-13 SQWURIUR OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00039.                                                                 
           DISPLAY "CX00039" UPON CONSOLE
000000       OPEN OUTPUT ”„êŽžŠÔ‘Ñ•Ê”„ã‚v‚j‚e .                                          
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00040.                           
000000         DISPLAY "HBHUN370-14 SQWJIKAN OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00040.                                                                 
           DISPLAY "CX00040" UPON CONSOLE
000000       OPEN OUTPUT w“ü“ú•Ê\žó‹µ‚v‚j‚e .                                          
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00041.                           
000000         DISPLAY "HBHUN370-15 SQWKNYJY OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00041.                                                                 
           DISPLAY "CX00041" UPON CONSOLE
000000       OPEN OUTPUT ”„ê•Ê¸ŽZ•\‚v‚j‚e .                                            
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00042.                           
000000         DISPLAY "HBHUN370-16 SQWURISS OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00042.                                                                 
           DISPLAY "CX00042" UPON CONSOLE
000000       OPEN OUTPUT ‰ñ†•Ê¸ŽZ•\‚v‚j‚e .                                            
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00043.                           
000000         DISPLAY "HBHUN370-17 SQWKAISS OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00043.                                                                 
           DISPLAY "CX00043" UPON CONSOLE
000000       OPEN OUTPUT ’c‘Ì•Ê¸ŽZ•\‚v‚j‚e .                                            
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00044.                           
000000         DISPLAY "HBHUN370-18 SQWDNSSN OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00044.                                                                 
           DISPLAY "CX00044" UPON CONSOLE
000000       OPEN OUTPUT ƒGƒ‰[‚v‚j‚e .                                               
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00045.                           
000000         DISPLAY "HBHUN370-19 SQTRONRI OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00045.                                                                 
           DISPLAY "CX00045" UPON CONSOLE
000000       OPEN OUTPUT ”„ŽJŽè”—¿‚v‚j‚e .                                             
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00046.                           
000000         DISPLAY "HBHUN370-20 VIWURTES OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00046.                                                                 
           DISPLAY "CX00046" UPON CONSOLE
000000       OPEN OUTPUT ŠO•””Ì”„—p”„ãî•ñ‚v‚j‚e .                                         
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00047.                           
000000         DISPLAY "HBHUN370-21 SQWGURAG OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00047.                                                                 
           DISPLAY "CX00047" UPON CONSOLE
000000       OPEN OUTPUT ŠO”Ì—páŠQŽæÁ•s‰Â‚v‚j‚e .                                         
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00048.                           
000000         DISPLAY "HBHUN370-22 SQWGTOFK OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00048.                                                                 
           DISPLAY "CX00048" UPON CONSOLE
000000       OPEN INPUT ‚r‚fî•ñŠÇ—‚e .                                               
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00049.                           
000000         DISPLAY "HBHUN370-23 VRSGJYO  OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00049.                                                                 
           DISPLAY "CX00049" UPON CONSOLE
000000     MOVE 1 TO ‚q‚j|‰^—pŠÇ—‚e
             DISPLAY "‰^—pŠÇ—‚e"  UPON CONSOLE                                            
000000       READ ‰^—pŠÇ—‚e INVALID CONTINUE . 
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00050.                  
000000         DISPLAY "HBHUN370-24 VRUNYKAN READ ERROR ",                      
000000                   STS-FILE1 " " STS-FILE2                                
000000         STOP RUN .                                                     
000000 CX00050.                                                                 
           DISPLAY "CX00050" UPON CONSOLE
000000     IF NOT(‚t‚m‚j‚P‹Æ–±“ú•t = ‚t‚m‚j‚Pƒoƒbƒ`‹Æ–±“ú•t)GO TO CX00051.                         
000000     MOVE ‚t‚m‚j‚P¢‘ã‹æ•ª TO ‚v‚j|¢‘ã‹æ•ª .                                           
000000     GO TO CX00052.                                                       
000000 CX00051.                                                                 
           DISPLAY "CX00051" UPON CONSOLE
000000     IF NOT(‚t‚m‚j‚P¢‘ã‹æ•ª = "1")GO TO CX00053.                                 
000000     MOVE "2" TO ‚v‚j|¢‘ã‹æ•ª .                                                
000000     GO TO CX00054.                                                       
000000 CX00053.                                                                 
           DISPLAY "CX00053" UPON CONSOLE
000000     MOVE "1" TO ‚v‚j|¢‘ã‹æ•ª .                                                
000000 CX00054.                                                                 
           DISPLAY "CX00054" UPON CONSOLE
000000 CX00052.                                                                 
           DISPLAY "CX00052" UPON CONSOLE
000000     IF NOT(‚v‚j|¢‘ã‹æ•ª = "1")GO TO CX00055.                                  
000000         OPEN  INPUT  ƒgƒ‰ƒ“ƒUƒNƒVƒ‡ƒ“‚e|‚` .                                       
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00056.                           
000000           DISPLAY "HBHUN370-25 VRTRNSA  OPEN ERROR ",                    
000000                   STS-FILE1 " " STS-FILE2                                
000000           STOP RUN .                                                   
000000 CX00056.                                                                 
           DISPLAY "CX00056" UPON CONSOLE
000000         OPEN  INPUT  ŠO•””Ì”„—p“ÁŽêŽæˆø‚e|‚` .                                      
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00057.                           
000000           DISPLAY "HBHUN370-26 VRTKSYGA OPEN ERROR ",                    
000000                   STS-FILE1 " " STS-FILE2                                
000000           STOP RUN .                                                   
000000 CX00057.                                                                 
           DISPLAY "CX00057" UPON CONSOLE
000000         OPEN  INPUT  ”­”„ƒQ[ƒ€‚e|‚` .                                          
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00058.                           
000000           DISPLAY "HBHUN370-27 VIHATGMA OPEN ERROR ",                    
000000                   STS-FILE1 " " STS-FILE2                                
000000           STOP RUN .                                                   
000000 CX00058.                                                                 
           DISPLAY "CX00058" UPON CONSOLE
000000     GO TO CX00059.                                                       
000000 CX00055.                                                                 
           DISPLAY "CX00055" UPON CONSOLE
000000         OPEN  INPUT  ƒgƒ‰ƒ“ƒUƒNƒVƒ‡ƒ“‚e|‚a .                                       
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00060.                           
000000           DISPLAY "HBHUN370-28 VRTRNSB  OPEN ERROR ",                    
000000                   STS-FILE1 " " STS-FILE2                                
000000           STOP RUN .                                                   
000000 CX00060.                                                                 
           DISPLAY "CX00060" UPON CONSOLE
000000         OPEN  INPUT  ŠO•””Ì”„—p“ÁŽêŽæˆø‚e|‚a .                                      
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00061.                           
000000           DISPLAY "HBHUN370-29 VRTKSYGB OPEN ERROR ",                    
000000                   STS-FILE1 " " STS-FILE2                                
000000           STOP RUN .                                                   
000000 CX00061.                                                                 
           DISPLAY "CX00061" UPON CONSOLE
000000         OPEN  INPUT  ”­”„ƒQ[ƒ€‚e|‚a .                                          
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00062.                           
000000           DISPLAY "HBHUN370-30 VIHATGMB OPEN  ERROR ",                   
000000                   STS-FILE1 " " STS-FILE2                                
000000           STOP RUN .                                                   
000000 CX00062.                                                                 
           DISPLAY "CX00062" UPON CONSOLE
000000 CX00059.
           DISPLAY "CX00059" UPON CONSOLE
      *20141028C³ŠJŽn                                                                 
000000*       ACCEPT  •Ï””Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh  FROM  SPCHNL                                  
000000         OPEN  INPUT  •Ï””Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh‚e .                                          
000000     IF STS-FILE1 NOT = ZERO                           
000000           DISPLAY "HBHUN370-99 NEWFILE OPEN  ERROR ",                   
000000                   STS-FILE1 " " STS-FILE2                                
000000           STOP RUN .
           DISPLAY "•Ï””Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh‚e"  UPON CONSOLE 
           READ •Ï””Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh‚e AT END CONTINUE. 
           MOVE SPCHNL TO •Ï””Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh
000000         CLOSE •Ï””Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh‚e .                                                 
000000     IF STS-FILE1 NOT = ZERO                           
000000           DISPLAY "HBHUN370-99 NEWFILE CLOSE ERROR ",                   
000000           STOP RUN . 
      *20141028C³I—¹
000000     MOVE •Ï””Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh TO ‚v‚j|”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh                                     
000000     MOVE 1 TO SGF-KEY
           DISPLAY "‚r‚fî•ñŠÇ—‚e"  UPON CONSOLE                                                    
000000       READ ‚r‚fî•ñŠÇ—‚e INVALID CONTINUE .                                    
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00063.                  
000000         DISPLAY "HBHUN370-31 VRSGJYO  READ ERROR ",                      
000000                   STS-FILE1 " " STS-FILE2                                
000000         STOP RUN .                                                     
000000 CX00063.                                                                 
           DISPLAY "CX00063" UPON CONSOLE
000000       INITIALIZE ‚v‚j|ŠO”Ì—p”„ãî•ñ‚v‚j‚q                                           
000000       INITIALIZE ‚v‚j|”„ê•Ê¸ŽZ•\‚v‚j‚q                                            
000000       INITIALIZE ”„êŽžŠÔ‘Ñ•Ê”„ã‚v‚j‚q                                             
000000       INITIALIZE ‚v‚j|¸¸                                                   
000000       SET PTR_SBCDBEFORE TO ADDRESS OF ‚v‚j|‚P‚UŽ¯•ÊƒR[ƒh.                       
000000       SET PTR_SBCDAFTER  TO ADDRESS OF ‚v‚j|‚Q‚SŽ¯•ÊƒR[ƒh.                       
000000 CX00002. EXIT.                                                           
000000 P000-RTN .                                                               
000000     PERFORM P100-RTN THRU CX00005                                        
000000     PERFORM P200-RTN THRU CX00007 .                                      
000000     IF NOT(‚v‚j|”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh = 02)GO TO CX00064.                              
000000     PERFORM P300-RTN THRU CX00008 .                                      
000000 CX00064.
           DISPLAY "CX00064" UPON CONSOLE
           DISPLAY "CX00064"  UPON CONSOLE                                                                 
000000     MOVE ‚n‚e‚e TO ‚e‚k‚f‚s‚q‚m‚r                                                  
000000     MOVE 1 TO ‚h‚c‚wŠi”[ƒŒƒR[ƒh                                                  
000000     PERFORM P400-RTN THRU CX00009 .                                      
000000 CX00065. IF NOT(‚e‚k‚f‚s‚q‚m‚r = ‚n‚e‚e)GO TO CX00066.
           DISPLAY "CX00065" UPON CONSOLE
           DISPLAY "CX00065"  UPON CONSOLE                              
000000 CX00067. IF NOT(‚h‚c‚wŠi”[ƒŒƒR[ƒh <= ‚v‚j‚sƒŒƒR[ƒhŠi”[Œ”)GO TO CX00068.                  
000000     IF NOT(‚v‚j|¢‘ã‹æ•ª = "1")GO TO CX00069.                                  
000000     MOVE ‚s‚q‚m‚`ŒÂ•Êî•ñ (‚h‚c‚wŠi”[ƒŒƒR[ƒh) TO ‚v‚j‚sŒÂ•Êî•ñ .                               
000000     GO TO CX00070.
           DISPLAY "CX00067"  UPON CONSOLE                                                       
000000 CX00069.
           DISPLAY "CX00069"  UPON CONSOLE                                                                 
000000     MOVE ‚s‚q‚m‚aŒÂ•Êî•ñ (‚h‚c‚wŠi”[ƒŒƒR[ƒh) TO ‚v‚j‚sŒÂ•Êî•ñ .                               
000000 CX00070.
           DISPLAY "CX00070" UPON CONSOLE
           DISPLAY "CX00070"  UPON CONSOLE                                                                 
000000     IF NOT(‚v‚j‚sƒŒƒR[ƒhó‘Ô = ZERO)GO TO CX00071.                               
000000     PERFORM P500-RTN THRU CX00010 .                                      
000000     IF NOT(‚v‚j|”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh = 01)GO TO CX00072.                              
000000     IF NOT(‚v‚j‚sƒŒƒR[ƒh‚h‚c = ”­Œ” OR ‘ã‘ÖŒ”)GO TO CX00073.                          
000000     PERFORM P600-RTN THRU CX00011 .                                      
000000     GO TO CX00074.                                                       
000000 CX00073. IF NOT(‚v‚j‚sƒŒƒR[ƒh‚h‚c = Žx•¥ OR ŠúŒÀŒãŽx•¥)GO TO CX00075.
           DISPLAY "CX00073" UPON CONSOLE
           DISPLAY "CX00073"  UPON CONSOLE                   
000000     PERFORM P800-RTN THRU CX00013 .                                      
000000     GO TO CX00074.                                                       
000000 CX00075. IF NOT(‚v‚j‚sƒŒƒR[ƒh‚h‚c = “ÁŽê‘ã‘ÖŒ”)GO TO CX00076.
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
000000     IF NOT(‚v‚j‚sƒŒƒR[ƒh‚h‚c = ”­Œ”)GO TO CX00078.                                 
000000     PERFORM P700-RTN THRU CX00012 .                                      
000000     GO TO CX00079.                                                       
000000 CX00078. IF NOT(‚v‚j‚sƒŒƒR[ƒh‚h‚c = áŠQŽæÁ)GO TO CX00080.                          
           DISPLAY "CX00078" UPON CONSOLE
000000                 CONTINUE .                                               
000000     GO TO CX00079.                                                       
000000 CX00080.
           DISPLAY "CX00080" UPON CONSOLE
           DISPLAY "CX00080"  UPON CONSOLE                                                                  
000000     MOVE ‚n‚m TO ‚e‚k‚fƒGƒ‰[                                                    
000000     MOVE "1" TO ‚v‚j‚s“–ƒ`ƒFƒbƒNƒtƒ‰ƒO                                              
000000     PERFORM ERWK-RTN THRU CX00024 .                                      
000000 CX00079.                                                                 
           DISPLAY "CX00079" UPON CONSOLE
000000 CX00077.                                                                 
           DISPLAY "CX00077" UPON CONSOLE
000000 CX00071.
           DISPLAY "CX00071" UPON CONSOLE
           DISPLAY "CX00071"  UPON CONSOLE                                                                  
000000     COMPUTE ‚h‚c‚wŠi”[ƒŒƒR[ƒh = ‚h‚c‚wŠi”[ƒŒƒR[ƒh + 1 .                                  
000000     GO TO CX00067.                                                       
000000 CX00068.
           DISPLAY "CX00068" UPON CONSOLE
           DISPLAY "CX00068"  UPON CONSOLE                                                                 
000000     PERFORM P400-RTN THRU CX00009                                        
000000     MOVE 1 TO ‚h‚c‚wŠi”[ƒŒƒR[ƒh .                                                
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
000000       CLOSE ‰^—pŠÇ—‚e .                                                      
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00081.                           
000000         DISPLAY "HBHUN370-32 VRUNYKAN CLOSE ERROR ",                     
000000                   STS-FILE1 " " STS-FILE2                                
000000         STOP RUN .                                                     
000000 CX00081.                                                                 
           DISPLAY "CX00081" UPON CONSOLE
000000       CLOSE ”„ê‚e .                                                        
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00082.                           
000000         DISPLAY "HBHUN370-33 VIURIBA  CLOSE ERROR ",                     
000000                   STS-FILE1 " " STS-FILE2                                
000000         STOP RUN .                                                     
000000 CX00082.                                                                 
           DISPLAY "CX00082" UPON CONSOLE
000000       CLOSE ƒQ[ƒ€‚e .                                                       
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00083.                           
000000         DISPLAY "HBHUN370-34 VIGAME   CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00083.                                                                 
           DISPLAY "CX00083" UPON CONSOLE
000000       CLOSE ƒQ[ƒ€ƒ‹[ƒ‹‚e .                                                    
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00084.                           
000000         DISPLAY "HBHUN370-35 VIGMRULE CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00084.                                                                 
           DISPLAY "CX00084" UPON CONSOLE
000000       CLOSE ƒQ[ƒ€ó‹µ‚e .                                                     
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00085.                           
000000         DISPLAY "HBHUN370-36 VIGAMJYO CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00085.                                                                 
           DISPLAY "CX00085" UPON CONSOLE
000000       CLOSE ‹ÆŽÒ‚e .                                                        
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00086.                           
000000         DISPLAY "HBHUN370-37 VIGYOSYA CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00086.                                                                 
           DISPLAY "CX00086" UPON CONSOLE
000000       CLOSE ‹à—Z‹@ŠÖŽè”—¿•ÏX‚fî•ñ‚e .                                              
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00087.                           
000000         DISPLAY "HBHUN370-38 VITSGMKY CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00087.                                                                 
           DISPLAY "CX00087" UPON CONSOLE
000000       CLOSE ”Ì”„‚b•ÊŽè”—¿•ÏX‚fî•ñ‚e .                                              
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00088.                           
000000         DISPLAY "HBHUN370-39 VITSGMCH CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00088.                                                                 
           DISPLAY "CX00088" UPON CONSOLE
000000       CLOSE ”Ì”„ƒ`ƒƒƒlƒ‹‚e .                                                    
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00089.                           
000000         DISPLAY "HBHUN370-40 VICHNNEL CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00089.                                                                 
           DISPLAY "CX00089" UPON CONSOLE
000000       CLOSE ”„ŽJŽè”—¿‚e .                                                     
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00090.                           
000000         DISPLAY "HBHUN370-41 VIUTRESU CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00090.                                                                 
           DISPLAY "CX00090" UPON CONSOLE
000000       CLOSE ‚ŠzŽx•¥î•ñ‚v‚j‚e .                                                  
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00091.                           
000000         DISPLAY "HBHUN370-42 SQWKGKSH CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00091.                                                                 
           DISPLAY "CX00091" UPON CONSOLE
000000       CLOSE ”„ã‹à¸¸‚v‚j‚e .                                                   
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00092.                           
000000         DISPLAY "HBHUN370-43 SQWURISE CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00092.                                                                 
           DISPLAY "CX00092" UPON CONSOLE
000000       CLOSE ”„ê•Ê”„ã‚v‚j‚e .                                                   
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00093.                           
000000         DISPLAY "HBHUN370-44 SQWURIUR CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00093.                                                                 
           DISPLAY "CX00093" UPON CONSOLE
000000       CLOSE ”„êŽžŠÔ‘Ñ•Ê”„ã‚v‚j‚e .                                                
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00094.                           
000000         DISPLAY "HBHUN370-45 SQWJIKAN CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00094.                                                                 
           DISPLAY "CX00094" UPON CONSOLE
000000       CLOSE w“ü“ú•Ê\žó‹µ‚v‚j‚e .                                                
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00095.                           
000000         DISPLAY "HBHUN370-46 SQWKNYJY CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00095.                                                                 
           DISPLAY "CX00095" UPON CONSOLE
000000       CLOSE ”„ê•Ê¸ŽZ•\‚v‚j‚e .                                                  
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00096.                           
000000         DISPLAY "HBHUN370-47 SQWURISS CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00096.                                                                 
           DISPLAY "CX00096" UPON CONSOLE
000000       CLOSE ‰ñ†•Ê¸ŽZ•\‚v‚j‚e .                                                  
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00097.                           
000000         DISPLAY "HBHUN370-48 SQWKAISS CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00097.                                                                 
           DISPLAY "CX00097" UPON CONSOLE
000000       CLOSE ’c‘Ì•Ê¸ŽZ•\‚v‚j‚e .                                                  
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00098.                           
000000         DISPLAY "HBHUN370-49 SQWDNSSN CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00098.                                                                 
           DISPLAY "CX00098" UPON CONSOLE
000000       CLOSE ƒGƒ‰[‚v‚j‚e .                                                     
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00099.                           
000000         DISPLAY "HBHUN370-50 SQTRONRI CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00099.                                                                 
           DISPLAY "CX00099" UPON CONSOLE
000000       CLOSE ”„ŽJŽè”—¿‚v‚j‚e .                                                   
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00100.                           
000000         DISPLAY "HBHUN370-51 VIWURTES CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00100.                                                                 
           DISPLAY "CX00100" UPON CONSOLE
000000       CLOSE ŠO•””Ì”„—p”„ãî•ñ‚v‚j‚e .                                               
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00101.                           
000000         DISPLAY "HBHUN370-52 SQWGURAG CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00101.                                                                 
           DISPLAY "CX00101" UPON CONSOLE
000000       CLOSE ŠO”Ì—páŠQŽæÁ•s‰Â‚v‚j‚e .                                               
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00102.                           
000000         DISPLAY "HBHUN370-53 SQWGTOFK CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00102.                                                                 
           DISPLAY "CX00102" UPON CONSOLE
000000       CLOSE ‚r‚fî•ñŠÇ—‚e .                                                    
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00103.                           
000000         DISPLAY "HBHUN370-54 VRSGJYO  CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00103.                                                                 
           DISPLAY "CX00103" UPON CONSOLE
000000     IF NOT(‚v‚j|¢‘ã‹æ•ª = "1")GO TO CX00104.                                  
000000         CLOSE ƒgƒ‰ƒ“ƒUƒNƒVƒ‡ƒ“‚e|‚` .                                              
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00105.                           
000000           DISPLAY "HBHUN370-55 VRTRNSA  CLOSE ERROR ",                   
000000           STOP RUN .                                                   
000000 CX00105.                                                                 
           DISPLAY "CX00105" UPON CONSOLE
000000         CLOSE ŠO•””Ì”„—p“ÁŽêŽæˆø‚e|‚` .                                             
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00106.                           
000000           DISPLAY "HBHUN370-56 VRTKSYGA CLOSE ERROR ",                   
000000           STOP RUN .                                                   
000000 CX00106.                                                                 
           DISPLAY "CX00106" UPON CONSOLE
000000         CLOSE ”­”„ƒQ[ƒ€‚e|‚` .                                                 
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00107.                           
000000           DISPLAY "HBHUN370-57 VIHATGMA CLOSE ERROR ",                   
000000           STOP RUN .                                                   
000000 CX00107.                                                                 
           DISPLAY "CX00107" UPON CONSOLE
000000     GO TO CX00108.                                                       
000000 CX00104.                                                                 
           DISPLAY "CX00104" UPON CONSOLE
000000         CLOSE ƒgƒ‰ƒ“ƒUƒNƒVƒ‡ƒ“‚e|‚a .                                              
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00109.                           
000000           DISPLAY "HBHUN370-58 VRTRNSB  CLOSE ERROR ",                   
000000           STOP RUN .                                                   
000000 CX00109.                                                                 
           DISPLAY "CX00109" UPON CONSOLE
000000         CLOSE ŠO•””Ì”„—p“ÁŽêŽæˆø‚e|‚a .                                             
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00110.                           
000000           DISPLAY "HBHUN370-59 VRTKSYGB CLOSE ERROR ",                   
000000           STOP RUN .                                                   
000000 CX00110.                                                                 
           DISPLAY "CX00110" UPON CONSOLE
000000         CLOSE ”­”„ƒQ[ƒ€‚e|‚a .                                                 
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00111.                           
000000           DISPLAY "HBHUN370-60 VIHATGMB CLOSE ERROR ",                   
000000           STOP RUN .                                                   
000000 CX00111.                                                                 
           DISPLAY "CX00111" UPON CONSOLE
000000 CX00108.                                                                 
           DISPLAY "CX00108" UPON CONSOLE
      *20141027C³ŠJŽn
000000*       @ZCTMSGOT(MSGID = #BH001                                           
000000*                 PROGID = HBHUN370); .                                    
      *20141027C³I—¹
000000 CX00004. EXIT.                                                           
000000 P100-RTN .
             DISPLAY "P100-RTN"  UPON CONSOLE                                                               
000000       INITIALIZE ‚v‚j|‰ñ†î•ñƒe[ƒuƒ‹                                             
000000       INITIALIZE ‚v‚j|’c‘Ì•Ê¸ŽZ•\                                               
000000       INITIALIZE ‚v‚j|”„ŽJŽè”—¿‚v‚j‚s‚a‚k                                           
      *20141102’Ç‰ÁŠJŽn
      *       INITIALIZE ƒtƒ‰ƒO
      *20141102’Ç‰ÁI—¹
      *20141028’Ç‰ÁŠJŽn
           MOVE ZERO TO ‚v‚j|’c‘Ì•Ê¸ŽZ•\‰ñ”
      *20141028’Ç‰ÁI—¹
000000     MOVE 1 TO ‚h‚c‚wƒQ[ƒ€                                                     
000000     MOVE 1 TO ‚b‚m‚sƒQ[ƒ€                                                     
000000     MOVE ‚n‚e‚e TO ‚e‚k‚f‚g‚s‚f‚l                                                  
000000     PERFORM P110-RTN THRU CX00006 .                                      
      *20141028C³ŠJŽn 
000000* CX00112. IF NOT( (‚b‚m‚sƒQ[ƒ€ < 31) AND (‚e‚k‚f‚g‚s‚f‚l = ‚n‚e‚e)                       
       CX00112. IF NOT( (‚v‚j|’c‘Ì•Ê¸ŽZ•\‰ñ” < 11) AND (‚e‚k‚f‚g‚s‚f‚l = ‚n‚e‚e)
      *20141028C³I—¹
000000     )GO TO CX00113.
                  DISPLAY "CX00112"  UPON CONSOLE                                                      
000000     IF NOT( (‚v‚j‚f–¢’Š‚¹‚ñƒtƒ‰ƒO = ‚n‚e‚e) AND (‚v‚j‚f–¢”­”„ƒtƒ‰ƒO = ‚n‚m)                      
000000     )GO TO CX00114.                                                      
000000     COMPUTE ‚v‚j‚f‰ñ† = ‚v‚j‚f‰ñ† + 1 .                                          
000000 CX00114.
           DISPLAY "CX00114" UPON CONSOLE
           DISPLAY "CX00114"  UPON CONSOLE                                                                 
000000     MOVE ‚v‚j‚fƒQ[ƒ€ƒ^ƒCƒv TO ‚f‚l‚i‚xƒQ[ƒ€ƒ^ƒCƒv                                         
000000     MOVE ‚v‚j‚fƒuƒƒbƒNƒR[ƒh TO ‚f‚l‚i‚xƒuƒƒbƒNƒR[ƒh 
           DISPLAY "ƒQ[ƒ€ó‹µ‚e"  UPON CONSOLE                                      
000000         READ ƒQ[ƒ€ó‹µ‚e  INVALID  CONTINUE .                                 
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00115.                  
000000           DISPLAY "HBHUN370-61 VIGAMJYO READ ERROR ",                    
000000                     STS-FILE1 " " STS-FILE2                              
000000           STOP RUN .                                                   
000000 CX00115.
           DISPLAY "CX00115" UPON CONSOLE
           DISPLAY "CX00115"  UPON CONSOLE                                                                 
000000     MOVE ‚v‚j‚fƒQ[ƒ€ƒ^ƒCƒv TO ‚v‰ñ|ƒQ[ƒ€ƒ^ƒCƒv (‚b‚m‚sƒQ[ƒ€)                                 
000000     MOVE ‚v‚j‚fƒuƒƒbƒNƒR[ƒh TO ‚v‰ñ|ƒuƒƒbƒNƒR[ƒh (‚b‚m‚sƒQ[ƒ€)                               
000000     MOVE ‚v‚j‚fƒQ[ƒ€ƒ^ƒCƒv TO ‚v’c¸ƒQ[ƒ€ƒ^ƒCƒv (‚b‚m‚sƒQ[ƒ€)                                 
000000     MOVE ‚v‚j‚fƒuƒƒbƒNƒR[ƒh TO ‚v’c¸ƒuƒƒbƒNƒR[ƒh (‚b‚m‚sƒQ[ƒ€)                               
000000     MOVE ‚v‚j‚fƒQ[ƒ€ƒ^ƒCƒv TO ‚v”„ƒƒQ[ƒ€ƒ^ƒCƒv (‚b‚m‚sƒQ[ƒ€)                                 
000000     MOVE ‚v‚j‚fƒuƒƒbƒNƒR[ƒh TO ‚v”„ƒƒuƒƒbƒNƒR[ƒh (‚b‚m‚sƒQ[ƒ€)                               
000000     MOVE 1 TO ‚b‚m‚s‰ñ† .                                                    
000000 CX00116. IF NOT( (‚b‚m‚s‰ñ† - 1 <= ‚r‚f‚i‚PŒp‘±‰ñ†””Œ³’l) AND ( (‚v‚j‚f‰ñ† +              
000000     ‚b‚m‚s‰ñ† - 1) <= ‚f‚l‚i‚x“o˜^Ï‚ÝÅ‘å‰ñ†))GO TO CX00117.
           DISPLAY "CX00116" UPON CONSOLE
           DISPLAY "CX00116"  UPON CONSOLE                            
000000     COMPUTE ‚v‰ñ|‰ñ† (‚b‚m‚sƒQ[ƒ€ ‚b‚m‚s‰ñ†) = ‚v‚j‚f‰ñ† + ‚b‚m‚s‰ñ† - 1                     
000000     COMPUTE ‚v”„ƒ‰ñ† (‚b‚m‚sƒQ[ƒ€ ‚b‚m‚s‰ñ†) = ‚v‚j‚f‰ñ† + ‚b‚m‚s‰ñ† - 1                     
000000     COMPUTE ‚v’c¸‰ñ† (‚b‚m‚sƒQ[ƒ€ ‚b‚m‚s‰ñ†) = ‚v‚j‚f‰ñ† + ‚b‚m‚s‰ñ† - 1                     
000000     MOVE ‚v‚j‚fƒQ[ƒ€ƒ^ƒCƒv TO ‚f‚`‚l‚dƒQ[ƒ€ƒ^ƒCƒv                                         
000000     MOVE ‚v‚j‚fƒuƒƒbƒNƒR[ƒh TO ‚f‚`‚l‚dƒuƒƒbƒNƒR[ƒh                                       
000000     COMPUTE ‚f‚`‚l‚d‰ñ† = ‚v‚j‚f‰ñ† + ‚b‚m‚s‰ñ† - 1 
           DISPLAY "ƒQ[ƒ€‚e"  UPON CONSOLE                                  
000000           READ ƒQ[ƒ€‚e  INVALID  CONTINUE .                                 
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00118.                  
000000             DISPLAY "HBHUN370-62 VIGAME READ ERROR ",                    
000000                       STS-FILE1 " " STS-FILE2                            
000000             STOP RUN .                                                 
000000 CX00118.
           DISPLAY "CX00118" UPON CONSOLE
           DISPLAY "CX00118"  UPON CONSOLE                                                                 
000000     MOVE ‚v‚j‚fƒQ[ƒ€ƒ^ƒCƒv TO ‚f‚l‚q‚QƒQ[ƒ€ƒ^ƒCƒv                                         
000000     MOVE ‚f‚`‚l‚dƒQ[ƒ€ƒ‹[ƒ‹”Ô† TO ‚f‚l‚q‚QƒQ[ƒ€ƒ‹[ƒ‹”Ô† 
           DISPLAY "ƒQ[ƒ€ƒ‹[ƒ‹‚e"  UPON CONSOLE                                   
000000           READ ƒQ[ƒ€ƒ‹[ƒ‹‚e  INVALID  CONTINUE .                              
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00119.                  
000000             DISPLAY "HBHUN370-63 VIGMRULE READ ERROR ",                  
000000                       STS-FILE1 " " STS-FILE2                            
000000             STOP RUN .                                                 
000000 CX00119.
           DISPLAY "CX00119" UPON CONSOLE
           DISPLAY "CX00119"  UPON CONSOLE                                                                 
000000     MOVE ‚f‚l‚q‚Q”„Žèƒe[ƒuƒ‹”Ô† TO ‚v‰ñ|”„ŽJŽè”—¿‚s‚a‚k”Ô† (‚b‚m‚sƒQ[ƒ€ ‚b‚m‚s‰ñ†)                    
000000     MOVE ‚f‚l‚q‚Q’P‰¿ TO ‚v‰ñ|’P‰¿ (‚b‚m‚sƒQ[ƒ€ ‚b‚m‚s‰ñ†)                                  
000000     COMPUTE ‚b‚m‚s‰ñ† = ‚b‚m‚s‰ñ† + 1 .                                          
000000     GO TO CX00116.                                                       
000000 CX00117.
           DISPLAY "CX00117" UPON CONSOLE
           DISPLAY "CX00117"  UPON CONSOLE                                                                 
000000     COMPUTE ‚b‚m‚sƒQ[ƒ€ = ‚b‚m‚sƒQ[ƒ€ + 1                                          
      *20141028’Ç‰ÁŠJŽn
           IF ‚b‚m‚sƒQ[ƒ€ > 4 
               MOVE 1 TO ‚b‚m‚sƒQ[ƒ€
               INITIALIZE ‚v‚j|’c‘Ì•Ê¸ŽZ•\
               COMPUTE ‚v‚j|’c‘Ì•Ê¸ŽZ•\‰ñ” = ‚v‚j|’c‘Ì•Ê¸ŽZ•\‰ñ” + 1.
      *20141028’Ç‰ÁI—¹
000000     PERFORM P110-RTN THRU CX00006 .                                      
000000     GO TO CX00112.                                                       
000000 CX00113.                                                                 
           DISPLAY "CX00113" UPON CONSOLE
000000 CX00005. EXIT.                                                           
000000 P110-RTN .
           DISPLAY "P110-RTN"  UPON CONSOLE                                                               
000000     IF NOT(‚v‚j|¢‘ã‹æ•ª = "1")GO TO CX00120.
               DISPLAY "”­”„ƒQ[ƒ€‚e|‚`"   UPON CONSOLE                                
000000         READ ”­”„ƒQ[ƒ€‚e|‚`   NEXT  ,                                          
000000           AT END MOVE ‚n‚m TO ‚e‚k‚f‚g‚s‚f‚l.                                     
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02" AND "10"                        
000000     )GO TO CX00121.                                                      
000000           DISPLAY "HBHUN370-64 VIHATGMA READ ERROR ",                    
000000                     STS-FILE1 " " STS-FILE2                              
000000           STOP RUN .                                                   
000000 CX00121.
           DISPLAY "CX00121" UPON CONSOLE
           DISPLAY "CX00121"  UPON CONSOLE                                                      
000000     IF NOT(STS-FILE1 = "10")GO TO CX00122.                               
000000     MOVE ‚n‚m TO ‚e‚k‚f‚s‚q‚m‚r .                                                 
000000 CX00122.  
           DISPLAY "CX00122" UPON CONSOLE
           DISPLAY "CX00122"  UPON CONSOLE                                                               
000000     IF NOT(‚e‚k‚f‚s‚q‚m‚r = ‚n‚e‚e)GO TO CX00123.                                  
000000     MOVE ”­”„ƒQ[ƒ€‚q|‚` TO ‚v‚j‚fƒŒƒR[ƒh .                                           
000000 CX00123.  
           DISPLAY "CX00123" UPON CONSOLE
           DISPLAY "CX00123"  UPON CONSOLE                                                    
000000     GO TO CX00124.                                                       
000000 CX00120.
           DISPLAY "CX00120" UPON CONSOLE
               DISPLAY "”­”„ƒQ[ƒ€‚e|‚a"   UPON CONSOLE                                                                 
000000         READ ”­”„ƒQ[ƒ€‚e|‚a   NEXT  ,                                          
000000           AT END MOVE ‚n‚m TO ‚e‚k‚f‚g‚s‚f‚l.                                     
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02" AND "10"                        
000000     )GO TO CX00125.                                                      
000000           DISPLAY "HBHUN370-65 VIHATGMB READ ERROR ",                    
000000                     STS-FILE1 " " STS-FILE2                              
000000           STOP RUN .                                                   
000000 CX00125.                                                                 
           DISPLAY "CX00125" UPON CONSOLE
000000     IF NOT(STS-FILE1 = "10")GO TO CX00126.                               
000000     MOVE ‚n‚m TO ‚e‚k‚f‚s‚q‚m‚r .                                                 
000000 CX00126.                                                                 
           DISPLAY "CX00126" UPON CONSOLE
000000     IF NOT(‚e‚k‚f‚g‚s‚f‚l = ‚n‚e‚e)GO TO CX00127.                                  
000000     MOVE ”­”„ƒQ[ƒ€‚q|‚a TO ‚v‚j‚fƒŒƒR[ƒh .                                           
000000 CX00127.                                                                 
           DISPLAY "CX00127" UPON CONSOLE
000000 CX00124.                                                                 
           DISPLAY "CX00124" UPON CONSOLE
000000 CX00006. EXIT.                                                           
000000 P200-RTN .
           DISPLAY "P200-RTN"  UPON CONSOLE                                                                
000000     MOVE ‚n‚e‚e TO ‚e‚k‚f‚b‚g‚m‚k                                                  
000000     MOVE ZERO TO ‚h‚c‚w”Ì”„‚b .                                                
000000 CX00128. IF NOT( (‚e‚k‚f‚b‚g‚m‚k = ‚n‚e‚e) AND (‚h‚c‚w”Ì”„‚b <= ‚r‚f‚i‚P”Ì”„‚b””Œ³’l)             
000000     )GO TO CX00129.
           DISPLAY "CX00128" UPON CONSOLE
               DISPLAY "”Ì”„ƒ`ƒƒƒlƒ‹‚e"   UPON CONSOLE                                                      
000000         READ ”Ì”„ƒ`ƒƒƒlƒ‹‚e NEXT AT END CONTINUE .                              
000000     IF NOT(STS-FILE1 = ZERO OR "02")GO TO CX00130.                       
000000     GO TO CX00131.                                                       
000000 CX00130. IF NOT(STS-FILE1 = "10")GO TO CX00132.                          
           DISPLAY "CX00130" UPON CONSOLE
000000     MOVE ‚n‚m TO ‚e‚k‚f‚b‚g‚m‚k .                                                 
000000     GO TO CX00131.                                                       
000000 CX00132.                                                                 
           DISPLAY "CX00132" UPON CONSOLE
000000           DISPLAY "HBHUN370-66 VICHNNEL READ ERROR ",                    
000000                     STS-FILE1 " " STS-FILE2                              
000000           STOP RUN .                                                   
000000 CX00131.
           DISPLAY "CX00131" UPON CONSOLE
           DISPLAY "CX00131"  UPON CONSOLE                                                                 
000000     IF NOT(‚e‚k‚f‚b‚g‚m‚k = ‚n‚e‚e)GO TO CX00133.                                  
000000     MOVE ‚b‚g‚m‚k”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh TO ‚h‚c‚w”Ì”„‚b                                         
000000     MOVE ‚b‚g‚m‚k‚ŠzŒ”Šî€’l TO ‚v”Ì‚ŠzŽx•¥Šî€’l (‚h‚c‚w”Ì”„‚b)                                
000000     MOVE ZERO TO ‚h‚c‚w‘åŽè‹ÆŽÒ                                                 
000000     MOVE ZERO TO ‚h‚c‚wƒQ[ƒ€                                                  
000000     MOVE ZERO TO ‚h‚c‚w‰ñ†                                                   
000000     MOVE ‚n‚e‚e TO ‚e‚k‚f‚g‚b‚g‚s                                                  
000000     MOVE ‚n‚e‚e TO ‚e‚k‚f‚s‚r‚f‚l                                                  
000000     MOVE ZERO TO ‚v‚j|ƒQ[ƒ€ƒ^ƒCƒv                                               
000000     MOVE ZERO TO ‚v‚j|ƒuƒƒbƒNƒR[ƒh                                              
000000     MOVE SPACE TO ‚v‚j|‘åŽè‹ÆŽÒ .                                              
000000     IF NOT(‚v‚j|”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh = 01)GO TO CX00134.                              
000000     MOVE ‚b‚g‚m‚k”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh TO ‚g‚b‚g‚s”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh                                  
000000     MOVE LOW-VALUE TO ‚g‚b‚g‚sƒQ[ƒ€‚h‚c                                          
000000             START ”Ì”„‚b•ÊŽè”—¿•ÏX‚fî•ñ‚e KEY NOT < ,                              
000000               ‚g‚b‚g‚sƒŒƒR[ƒhƒL[ INVALID ,                                       
000000                 MOVE ‚n‚m TO ‚e‚k‚f‚g‚b‚g‚s .                                     
000000     IF NOT( (STS-FILE1 NOT = ZERO) AND (‚e‚k‚f‚g‚b‚g‚s = ‚n‚m AND                 
000000     STS-FILE1 NOT = "23"))GO TO CX00135.                                 
000000               DISPLAY "HBHUN370-67 VITSGMCH START ERROR ",               
000000                        STS-FILE1 " " STS-FILE2                           
000000              STOP RUN .                                                
000000 CX00135.                                                                 
           DISPLAY "CX00135" UPON CONSOLE
000000 CX00136. IF NOT( (‚e‚k‚f‚g‚b‚g‚s = ‚n‚e‚e))GO TO CX00137.                          
           DISPLAY "CX00136" UPON CONSOLE
           DISPLAY "”Ì”„‚b•ÊŽè”—¿•ÏX‚fî•ñ‚e"  UPON CONSOLE 
000000               READ  ”Ì”„‚b•ÊŽè”—¿•ÏX‚fî•ñ‚e ,                                      
000000                 NEXT AT END CONTINUE .                                   
000000     IF NOT(STS-FILE1 = ZERO OR "02")GO TO CX00138.                       
000000     GO TO CX00139.                                                       
000000 CX00138. IF NOT(STS-FILE1 = "10")GO TO CX00140.                          
           DISPLAY "CX00138" UPON CONSOLE
000000     MOVE ‚n‚m TO ‚e‚k‚f‚g‚b‚g‚s .                                                 
000000     GO TO CX00139.                                                       
000000 CX00140.                                                                 
           DISPLAY "CX00140" UPON CONSOLE
000000                 DISPLAY "HBHUN370-68 VITSGMCH READ ERROR ",              
000000                           STS-FILE1 " " STS-FILE2                        
000000                 STOP RUN .                                             
000000 CX00139.
           DISPLAY "CX00139" UPON CONSOLE
           DISPLAY "CX00139"  UPON CONSOLE                                                                 
000000     IF NOT(‚e‚k‚f‚g‚b‚g‚s = ‚n‚e‚e AND ‚g‚b‚g‚s”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh NOT = ZERO AND                
000000     ‚g‚b‚g‚sƒQ[ƒ€‚h‚c NOT = ZERO AND ‚g‚b‚g‚s”„Žè‹àŠz‘Ñ”Ô† NOT = ZERO AND                  
000000     ‚g‚b‚g‚s”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh = ‚b‚g‚m‚k”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh)GO TO CX00141.                         
000000     IF NOT(‚v‚j|ƒQ[ƒ€ƒ^ƒCƒv = ‚g‚b‚g‚sƒQ[ƒ€ƒ^ƒCƒv AND ‚v‚j|ƒuƒƒbƒNƒR[ƒh = ‚g‚b‚g‚sƒuƒƒbƒNƒR[ƒh           
000000     )GO TO CX00142.                                                      
000000     COMPUTE ‚h‚c‚w‰ñ† = ‚h‚c‚w‰ñ† + 1 .                                          
000000     GO TO CX00143.                                                       
000000 CX00142.
           DISPLAY "CX00142" UPON CONSOLE
           DISPLAY "CX00142"  UPON CONSOLE                                                                 
000000     COMPUTE ‚h‚c‚wƒQ[ƒ€ = ‚h‚c‚wƒQ[ƒ€ + 1                                          
000000     MOVE 1 TO ‚h‚c‚w‰ñ† .                                                    
000000 CX00143.
           DISPLAY "CX00143" UPON CONSOLE
           DISPLAY "CX00143"  UPON CONSOLE                                                                 
000000     MOVE ‚g‚b‚g‚sƒQ[ƒ€ƒ^ƒCƒv TO ‚v|”Ì‚b•ÊƒQ[ƒ€ƒ^ƒCƒv (‚h‚c‚w”Ì”„‚b ‚h‚c‚wƒQ[ƒ€)                       
000000     MOVE ‚g‚b‚g‚sƒuƒƒbƒNƒR[ƒh TO ‚v|”Ì‚b•ÊƒuƒƒbƒNƒR[ƒh (‚h‚c‚w”Ì”„‚b ‚h‚c‚wƒQ[ƒ€)                     
000000     MOVE ‚g‚b‚g‚s‰ñ† TO ‚v|”Ì‚b•Ê‰ñ† (‚h‚c‚w”Ì”„‚b ‚h‚c‚wƒQ[ƒ€ ‚h‚c‚w‰ñ†)                         
000000     MOVE ‚g‚b‚g‚s”„Žè‹àŠz‘Ñ”Ô† TO ‚v|”Ì‚b•Ê‹àŠz‘Ñ”Ô† (‚h‚c‚w”Ì”„‚b ‚h‚c‚wƒQ[ƒ€ ‚h‚c‚w‰ñ†)                 
000000     MOVE ‚g‚b‚g‚sƒQ[ƒ€ƒ^ƒCƒv TO ‚v‚j|ƒQ[ƒ€ƒ^ƒCƒv                                         
000000     MOVE ‚g‚b‚g‚sƒuƒƒbƒNƒR[ƒh TO ‚v‚j|ƒuƒƒbƒNƒR[ƒh .                                     
000000     GO TO CX00144.                                                       
000000 CX00141.
           DISPLAY "CX00141" UPON CONSOLE
           DISPLAY "CX00141"  UPON CONSOLE                                                                  
000000     MOVE ‚n‚m TO ‚e‚k‚f‚g‚b‚g‚s .                                                 
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
000000     MOVE ‚b‚g‚m‚k”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh TO ‚s‚r‚f‚l”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh                                  
000000     MOVE ZERO TO ‚s‚r‚f‚l‘åŽè‹ÆŽÒƒR[ƒh                                             
000000     MOVE LOW-VALUE TO ‚s‚r‚f‚lƒQ[ƒ€‚h‚c                                          
000000             START ‹à—Z‹@ŠÖŽè”—¿•ÏX‚fî•ñ‚e KEY NOT < ,                              
000000               ‚s‚r‚f‚lƒŒƒR[ƒhƒL[ INVALID  ,                                      
000000                 MOVE ‚n‚m TO ‚e‚k‚f‚s‚r‚f‚l .                                     
000000     IF NOT( (STS-FILE1 NOT = ZERO) AND (‚e‚k‚f‚s‚r‚f‚l = ‚n‚m AND                 
000000     STS-FILE1 NOT = "23"))GO TO CX00146.                                 
000000               DISPLAY "HBHUN370-69 VITSGMKY START ERROR ",               
000000                        STS-FILE1 " " STS-FILE2                           
000000              STOP RUN .                                                
000000 CX00146.                                                                 
           DISPLAY "CX00146" UPON CONSOLE
000000 CX00147. IF NOT(‚e‚k‚f‚s‚r‚f‚l = ‚n‚e‚e)GO TO CX00148. 
           DISPLAY "CX00147" UPON CONSOLE
           DISPLAY "‹à—Z‹@ŠÖŽè”—¿•ÏX‚fî•ñ‚e"  UPON CONSOLE                             
000000               READ  ‹à—Z‹@ŠÖŽè”—¿•ÏX‚fî•ñ‚e ,                                      
000000                 NEXT AT END CONTINUE .                                   
000000     IF NOT(STS-FILE1 = ZERO OR "02")GO TO CX00149.                       
000000     GO TO CX00150.                                                       
000000 CX00149. IF NOT(STS-FILE1 = "10")GO TO CX00151.                          
           DISPLAY "CX00149" UPON CONSOLE
000000     MOVE ‚n‚m TO ‚e‚k‚f‚s‚r‚f‚l .                                                 
000000     GO TO CX00150.                                                       
000000 CX00151.                                                                 
           DISPLAY "CX00151" UPON CONSOLE
000000                 DISPLAY "HBHUN370-70 VITSGMKY READ ERROR ",              
000000                           STS-FILE1 " " STS-FILE2                        
000000                 STOP RUN .                                             
000000 CX00150.
           DISPLAY "CX00150" UPON CONSOLE
           DISPLAY "CX00150"  UPON CONSOLE                                                                 
000000     IF NOT(‚e‚k‚f‚s‚r‚f‚l = ‚n‚e‚e AND ‚s‚r‚f‚l”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh NOT = ZERO AND                
000000     ‚s‚r‚f‚l‘åŽè‹ÆŽÒƒR[ƒh NOT = SPACE AND ‚s‚r‚f‚lƒQ[ƒ€‚h‚c NOT = ZERO AND                 
000000     ‚s‚r‚f‚l”„Žè‹àŠz‘Ñ”Ô† NOT = ZERO AND ‚s‚r‚f‚l”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh = ‚b‚g‚m‚k”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh             
000000     )GO TO CX00152.                                                      
000000     IF NOT(‚v‚j|‘åŽè‹ÆŽÒ = ‚s‚r‚f‚l‘åŽè‹ÆŽÒƒR[ƒh)GO TO CX00153.                          
000000     IF NOT(‚v‚j|ƒQ[ƒ€ƒ^ƒCƒv = ‚s‚r‚f‚lƒQ[ƒ€ƒ^ƒCƒv AND ‚v‚j|ƒuƒƒbƒNƒR[ƒh = ‚s‚r‚f‚lƒuƒƒbƒNƒR[ƒh           
000000     )GO TO CX00154.                                                      
000000     COMPUTE ‚h‚c‚w‰ñ† = ‚h‚c‚w‰ñ† + 1 .                                          
000000     GO TO CX00155.                                                       
000000 CX00154.
           DISPLAY "CX00154" UPON CONSOLE
           DISPLAY "CX00154"  UPON CONSOLE                                                                 
000000     COMPUTE ‚h‚c‚wƒQ[ƒ€ = ‚h‚c‚wƒQ[ƒ€ + 1                                          
000000     MOVE 1 TO ‚h‚c‚w‰ñ† .                                                    
000000 CX00155.                                                                 
           DISPLAY "CX00155" UPON CONSOLE
000000     GO TO CX00156.                                                       
000000 CX00153.
           DISPLAY "CX00153" UPON CONSOLE
           DISPLAY "CX00153"  UPON CONSOLE                                                                 
000000     COMPUTE ‚h‚c‚w‘åŽè‹ÆŽÒ = ‚h‚c‚w‘åŽè‹ÆŽÒ + 1                                        
      *20141028’Ç‰ÁŠJŽn
           IF ‚h‚c‚w‘åŽè‹ÆŽÒ > 9
               MOVE 1 TO ‚h‚c‚w‘åŽè‹ÆŽÒ
               INITIALIZE ‚v|‹@ŠÖ•ÊŽè”—¿‚s‚a‚k‚O‚Q.
      *20141028’Ç‰ÁI—¹
000000     COMPUTE ‚h‚c‚wƒQ[ƒ€ = ‚h‚c‚wƒQ[ƒ€ + 1                                          
000000     MOVE 1 TO ‚h‚c‚w‰ñ† .                                                    
000000 CX00156.
           DISPLAY "CX00156" UPON CONSOLE
           DISPLAY "CX00156"  UPON CONSOLE                                                                 
000000     MOVE ‚s‚r‚f‚l‘åŽè‹ÆŽÒƒR[ƒh TO ‚v|‹@ŠÖ•Ê‘åŽè‹ÆŽÒ‚b‚c‚O‚Q (‚h‚c‚w‘åŽè‹ÆŽÒ)                          
000000     MOVE ‚s‚r‚f‚lƒQ[ƒ€ƒ^ƒCƒv TO ‚v|‹@ŠÖ•ÊƒQ[ƒ€ƒ^ƒCƒv‚O‚Q (‚h‚c‚w‘åŽè‹ÆŽÒ ‚h‚c‚wƒQ[ƒ€)                    
000000     MOVE ‚s‚r‚f‚lƒuƒƒbƒNƒR[ƒh TO ‚v|‹@ŠÖ•ÊƒuƒƒbƒN‚b‚c‚O‚Q (‚h‚c‚w‘åŽè‹ÆŽÒ ‚h‚c‚wƒQ[ƒ€)                   
000000     MOVE ‚s‚r‚f‚l‰ñ† TO ‚v|‹@ŠÖ•Ê‰ñ†‚O‚Q (‚h‚c‚w‘åŽè‹ÆŽÒ ‚h‚c‚wƒQ[ƒ€ ‚h‚c‚w‰ñ†)                      
000000     MOVE ‚s‚r‚f‚l”„Žè‹àŠz‘Ñ”Ô† TO ‚v|‹@ŠÖ•Ê‹àŠz‘Ñ”Ô†‚O‚Q (‚h‚c‚w‘åŽè‹ÆŽÒ ‚h‚c‚wƒQ[ƒ€ ‚h‚c‚w‰ñ†)              
000000     MOVE ‚s‚r‚f‚l‘åŽè‹ÆŽÒƒR[ƒh TO ‚v‚j|‘åŽè‹ÆŽÒ                                          
000000     MOVE ‚s‚r‚f‚lƒQ[ƒ€ƒ^ƒCƒv TO ‚v‚j|ƒQ[ƒ€ƒ^ƒCƒv                                         
000000     MOVE ‚s‚r‚f‚lƒuƒƒbƒNƒR[ƒh TO ‚v‚j|ƒuƒƒbƒNƒR[ƒh .                                     
000000     GO TO CX00157.                                                       
000000 CX00152.
           DISPLAY "CX00152" UPON CONSOLE
           DISPLAY "CX00152"  UPON CONSOLE                                                                 
000000     MOVE ‚n‚m TO ‚e‚k‚f‚s‚r‚f‚l .                                                 
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
000000     MOVE ‚n‚e‚e TO ‚e‚k‚f‚t‚q‚s‚r                                                  
000000     MOVE ZERO TO ‚h‚c‚wƒe[ƒuƒ‹”Ô†                                               
000000     MOVE ZERO TO ‚h‚c‚w”Ì”„‚b                                                  
000000     MOVE 1 TO ‚h‚c‚w‹àŠz‘Ñ
           DISPLAY "”„ŽJŽè”—¿‚e"  UPON CONSOLE                                                     
000000       READ ”„ŽJŽè”—¿‚e  NEXT  AT  END  CONTINUE .                             
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00158.                  
000000         DISPLAY "HBHUN370-71 VIURTESU READ ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00158.                                                                 
           DISPLAY "CX00158" UPON CONSOLE
000000 CX00159. IF NOT( (‚e‚k‚f‚t‚q‚s‚r = ‚n‚e‚e))GO TO CX00160.
           DISPLAY "CX00159" UPON CONSOLE
           DISPLAY "CX00159"  UPON CONSOLE                           
000000     MOVE ‚t‚q‚s‚rƒe[ƒuƒ‹”Ô† TO ‚h‚c‚wƒe[ƒuƒ‹”Ô†                                         
000000     MOVE ‚t‚q‚s‚r”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh TO ‚h‚c‚w”Ì”„‚b                                         
000000     MOVE 1 TO ‚h‚c‚w‹àŠz‘Ñ .                                                   
000000 CX00161. IF NOT(‚h‚c‚w‹àŠz‘Ñ < 6)GO TO CX00162.
           DISPLAY "CX00161" UPON CONSOLE
           DISPLAY "CX00161"  UPON CONSOLE                                 
000000     MOVE ‚t‚q‚s‚r”„ŽJŽè”—¿ (‚h‚c‚w‹àŠz‘Ñ) TO ‚v”„ŽJ”„ŽJŽè”—¿ (‚h‚c‚wƒe[ƒuƒ‹”Ô† ‚h‚c‚w”Ì”„‚b                
000000     ‚h‚c‚w‹àŠz‘Ñ)                                                              
000000     MOVE ‚t‚q‚s‚r”„ŽJŽè”—¿—¦ (‚h‚c‚w‹àŠz‘Ñ) TO ‚v”„ŽJ”„ŽJŽè”—¿—¦ (‚h‚c‚wƒe[ƒuƒ‹”Ô† ‚h‚c‚w”Ì”„‚b              
000000     ‚h‚c‚w‹àŠz‘Ñ)                                                              
000000     COMPUTE ‚h‚c‚w‹àŠz‘Ñ = ‚h‚c‚w‹àŠz‘Ñ + 1 .                                        
000000     GO TO CX00161.                                                       
000000 CX00162. 
           DISPLAY "CX00162" UPON CONSOLE
               DISPLAY "”„ŽJŽè”—¿‚e"  UPON CONSOLE                                                       
000000         READ ”„ŽJŽè”—¿‚e  NEXT  AT  END  CONTINUE .                           
000000     IF NOT(STS-FILE1 = ZERO OR "02")GO TO CX00163.                       
000000     GO TO CX00164.                                                       
000000 CX00163. IF NOT(STS-FILE1 = "10")GO TO CX00165.                          
           DISPLAY "CX00163" UPON CONSOLE
000000     MOVE ‚n‚m TO ‚e‚k‚f‚t‚q‚s‚r .                                                 
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
      *20141028C³ŠJŽn
000000*       INITIALIZE ‚váŠQŽæÁ•s‰Â“WŠJ‚`                                              
             INITIALIZE ‚váŠQ|“`•·’Ê”ÔŽæÁ‚`
             INITIALIZE ‚váŠQ|Ž¯•ÊƒR[ƒhŽæÁ‚`
      *20141028C³I—¹
000000     MOVE ZERO TO ‚b‚m‚s“d•¶’Ê”ÔŽæÁ                                               
000000     MOVE ZERO TO ‚b‚m‚sŽ¯•ÊƒR[ƒhŽæÁ                                              
000000     MOVE ‚n‚e‚e TO ‚e‚k‚f‚f‚g‚s‚Q .                                                
000000     IF NOT(‚v‚j|¢‘ã‹æ•ª = "1")GO TO CX00166.                                  
000000     MOVE 2 TO ‚q‚j|“ÁŽêŽæˆø‚` 
               DISPLAY "ŠO•””Ì”„—p“ÁŽêŽæˆø‚e|‚`"  UPON CONSOLE                                                  
000000         READ  ŠO•””Ì”„—p“ÁŽêŽæˆø‚e|‚` INVALID CONTINUE .                            
000000     IF NOT(STS-FILE1 = ZERO OR "02")GO TO CX00167.                       
000000     GO TO CX00168.                                                       
000000 CX00167. IF NOT(STS-FILE1 = "23")GO TO CX00169.                          
           DISPLAY "CX00167" UPON CONSOLE
000000     MOVE ‚n‚m TO ‚e‚k‚f‚f‚g‚s‚Q .                                                 
000000     GO TO CX00168.                                                       
000000 CX00169.                                                                 
           DISPLAY "CX00169" UPON CONSOLE
000000           DISPLAY "HBHUN370-73 VRTKSYGA READ ERROR ",                    
000000                     STS-FILE1 " " STS-FILE2                              
000000           STOP RUN .                                                   
000000 CX00168.                                                                 
           DISPLAY "CX00168" UPON CONSOLE
000000 CX00170. IF NOT(‚e‚k‚f‚f‚g‚s‚Q = ‚n‚e‚e)GO TO CX00171.                             
           DISPLAY "CX00170" UPON CONSOLE
000000     IF NOT(‚f‚g‚s‚Q“ÁŽêŽæˆøŽí—Þ = 7)GO TO CX00172.                                 
000000     IF NOT(‚f‚g‚s‚QŽ¯•ÊƒR[ƒh (1:8) = ZERO)GO TO CX00173.
           DISPLAY "CX00170"  UPON CONSOLE                         
000000     COMPUTE ‚b‚m‚s“d•¶’Ê”ÔŽæÁ = ‚b‚m‚s“d•¶’Ê”ÔŽæÁ + 1                                    
      *20141028
           IF ‚b‚m‚s“d•¶’Ê”ÔŽæÁ > 1000
               MOVE 1 TO ‚b‚m‚s“d•¶’Ê”ÔŽæÁ
               INITIALIZE ‚váŠQ|“`•·’Ê”ÔŽæÁ‚`.
      *20141028
000000     MOVE ‚f‚g‚s‚Q”„êƒR[ƒh TO ‚váŠQ|”„êƒR[ƒh (‚b‚m‚s“d•¶’Ê”ÔŽæÁ)                              
000000     MOVE ‚f‚g‚s‚Q“d•¶’Ê”Ô TO ‚váŠQ|“d•¶’Ê”Ô (‚b‚m‚s“d•¶’Ê”ÔŽæÁ) .                              
000000     GO TO CX00174.                                                       
000000 CX00173.                                                                 
           DISPLAY "CX00173" UPON CONSOLE
000000     COMPUTE ‚b‚m‚sŽ¯•ÊƒR[ƒhŽæÁ = ‚b‚m‚sŽ¯•ÊƒR[ƒhŽæÁ + 1                                  
      *20141028
           IF ‚b‚m‚sŽ¯•ÊƒR[ƒhŽæÁ > 1000
               MOVE 1 TO ‚b‚m‚sŽ¯•ÊƒR[ƒhŽæÁ
               INITIALIZE ‚váŠQ|Ž¯•ÊƒR[ƒhŽæÁ‚`.
      *20141028
000000     MOVE ‚f‚g‚s‚QŽ¯•ÊƒR[ƒh TO ‚váŠQ|Ž¯•ÊƒR[ƒh (‚b‚m‚sŽ¯•ÊƒR[ƒhŽæÁ)                             
000000     MOVE ‚f‚g‚s‚QŽæÁ‹æ•ª TO ‚váŠQ|ŽæÁ‹æ•ª (‚b‚m‚sŽ¯•ÊƒR[ƒhŽæÁ) .                             
000000 CX00174.                                                                 
           DISPLAY "CX00174" UPON CONSOLE
000000 CX00172.  
           DISPLAY "CX00172" UPON CONSOLE
               DISPLAY "CX00172ŠO•””Ì”„—p“ÁŽêŽæˆø‚e|‚`"  UPON CONSOLE                                                                 
000000           READ  ŠO•””Ì”„—p“ÁŽêŽæˆø‚e|‚` NEXT AT END CONTINUE .                      
000000     IF NOT(STS-FILE1 = ZERO OR "02")GO TO CX00175.                       
000000     GO TO CX00176.                                                       
000000 CX00175. IF NOT(STS-FILE1 = "10")GO TO CX00177.                          
           DISPLAY "CX00175" UPON CONSOLE
000000     MOVE ‚n‚m TO ‚e‚k‚f‚f‚g‚s‚Q .                                                 
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
000000     MOVE 2 TO ‚q‚j|“ÁŽêŽæˆø‚a
               DISPLAY "ŠO•””Ì”„—p“ÁŽêŽæˆø‚e|‚a"  UPON CONSOLE                                                   
000000         READ  ŠO•””Ì”„—p“ÁŽêŽæˆø‚e|‚a INVALID CONTINUE .                            
000000     IF NOT(STS-FILE1 = ZERO OR "02")GO TO CX00179.                       
000000     GO TO CX00180.                                                       
000000 CX00179. IF NOT(STS-FILE1 = "23")GO TO CX00181.                          
           DISPLAY "CX00179" UPON CONSOLE
000000     MOVE ‚n‚m TO ‚e‚k‚f‚f‚g‚s‚Q .                                                 
000000     GO TO CX00180.                                                       
000000 CX00181.                                                                 
           DISPLAY "CX00181" UPON CONSOLE
000000           DISPLAY "HBHUN370-75 VRTKSYGB READ ERROR ",                    
000000                     STS-FILE1 " " STS-FILE2                              
000000           STOP RUN .                                                   
000000 CX00180.                                                                 
           DISPLAY "CX00180" UPON CONSOLE
000000 CX00182. IF NOT(‚e‚k‚f‚f‚g‚s‚Q = ‚n‚e‚e)GO TO CX00183.                             
           DISPLAY "CX00182" UPON CONSOLE
000000     IF NOT(‚f‚g‚s‚Q‚a“ÁŽêŽæˆøŽí—Þ = 7)GO TO CX00184.                                
000000     IF NOT(‚f‚g‚s‚Q‚aŽ¯•ÊƒR[ƒh (1:8) = ZERO)GO TO CX00185.
           DISPLAY "CX00182"  UPON CONSOLE                        
000000     COMPUTE ‚b‚m‚s“d•¶’Ê”ÔŽæÁ = ‚b‚m‚s“d•¶’Ê”ÔŽæÁ + 1                                    
000000     MOVE ‚f‚g‚s‚Q‚a”„êƒR[ƒh TO ‚váŠQ|”„êƒR[ƒh (‚b‚m‚s“d•¶’Ê”ÔŽæÁ)                             
000000     MOVE ‚f‚g‚s‚Q‚a“d•¶’Ê”Ô TO ‚váŠQ|“d•¶’Ê”Ô (‚b‚m‚s“d•¶’Ê”ÔŽæÁ) .                             
000000     GO TO CX00186.                                                       
000000 CX00185.
           DISPLAY "CX00185" UPON CONSOLE
           DISPLAY "CX00185"  UPON CONSOLE                                                                 
000000     COMPUTE ‚b‚m‚sŽ¯•ÊƒR[ƒhŽæÁ = ‚b‚m‚sŽ¯•ÊƒR[ƒhŽæÁ + 1                                  
000000     MOVE ‚f‚g‚s‚Q‚aŽ¯•ÊƒR[ƒh TO ‚váŠQ|Ž¯•ÊƒR[ƒh (‚b‚m‚sŽ¯•ÊƒR[ƒhŽæÁ)                            
000000     MOVE ‚f‚g‚s‚Q‚aŽæÁ‹æ•ª TO ‚váŠQ|ŽæÁ‹æ•ª (‚b‚m‚sŽ¯•ÊƒR[ƒhŽæÁ) .                            
000000 CX00186.                                                                 
           DISPLAY "CX00186" UPON CONSOLE
000000 CX00184.  
           DISPLAY "CX00184" UPON CONSOLE
               DISPLAY "CX00184ŠO•””Ì”„—p“ÁŽêŽæˆø‚e|‚a"  UPON CONSOLE                                                               
000000           READ  ŠO•””Ì”„—p“ÁŽêŽæˆø‚e|‚a NEXT AT END CONTINUE .                      
000000     IF NOT(STS-FILE1 = ZERO OR "02")GO TO CX00187.                       
000000     GO TO CX00188.                                                       
000000 CX00187. IF NOT(STS-FILE1 = "10")GO TO CX00189.                          
           DISPLAY "CX00187" UPON CONSOLE
000000     MOVE ‚n‚m TO ‚e‚k‚f‚f‚g‚s‚Q .                                                 
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
000000     MOVE ‚b‚m‚s“d•¶’Ê”ÔŽæÁ TO ‚váŠQ|“d•¶’Ê”ÔŽæÁŒ”                                       
000000     MOVE ‚b‚m‚sŽ¯•ÊƒR[ƒhŽæÁ TO ‚váŠQ|Ž¯•ÊƒR[ƒhŽæÁŒ” .                                   
000000 CX00008. EXIT.                                                           
000000 P400-RTN .                                                               
000000     IF NOT(‚v‚j|¢‘ã‹æ•ª = "1")GO TO CX00190. 
               DISPLAY "ƒgƒ‰ƒ“ƒUƒNƒVƒ‡ƒ“‚e|‚`"  UPON CONSOLE                                 
000000         READ ƒgƒ‰ƒ“ƒUƒNƒVƒ‡ƒ“‚e|‚`   NEXT  ,                                       
000000           AT END MOVE ‚n‚m TO ‚e‚k‚f‚s‚q‚m‚r.                                     
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02" AND "10"                        
000000     )GO TO CX00191.                                                      
000000           DISPLAY "HBHUN370-77 VITRANSA READ ERROR ",                    
000000                     STS-FILE1 " " STS-FILE2                              
000000           STOP RUN .                                                   
000000 CX00191.                                                                 
           DISPLAY "CX00191" UPON CONSOLE
000000     IF NOT(STS-FILE1 = "10")GO TO CX00192.                               
000000     MOVE ‚n‚m TO ‚e‚k‚f‚s‚q‚m‚r .                                                 
000000 CX00192.                                                                 
           DISPLAY "CX00192" UPON CONSOLE
000000     IF NOT(‚s‚q‚m‚`ƒŒƒR[ƒhŠi”[Œ” = 0)GO TO CX00193.                               
000000     MOVE ‚n‚m TO ‚e‚k‚f‚s‚q‚m‚r .                                                 
000000     GO TO CX00194.                                                       
000000 CX00193.
           DISPLAY "CX00193" UPON CONSOLE
           DISPLAY "CX00193"  UPON CONSOLE                                                                 
000000     MOVE ‚s‚q‚m‚`ƒŒƒR[ƒhŠi”[Œ” TO ‚v‚j‚sƒŒƒR[ƒhŠi”[Œ” .                                   
000000 CX00194.                                                                 
           DISPLAY "CX00194" UPON CONSOLE
000000     GO TO CX00195.                                                       
000000 CX00190. 
           DISPLAY "CX00190" UPON CONSOLE
               DISPLAY "ƒgƒ‰ƒ“ƒUƒNƒVƒ‡ƒ“‚e|‚a"  UPON CONSOLE                                                                 
000000         READ ƒgƒ‰ƒ“ƒUƒNƒVƒ‡ƒ“‚e|‚a   NEXT  ,                                       
000000           AT END MOVE ‚n‚m TO ‚e‚k‚f‚s‚q‚m‚r.  
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02" AND "10"                        
000000     )GO TO CX00196.                                                      
000000           DISPLAY "HBHUN370-78 VITRANSB READ ERROR ",                    
000000                     STS-FILE1 " " STS-FILE2                              
000000           STOP RUN .                                                   
000000 CX00196. 
           DISPLAY "CX00196" UPON CONSOLE
               DISPLAY "CX00196"  UPON CONSOLE                                                                
000000     IF NOT(STS-FILE1 = "10")GO TO CX00197.                               
000000     MOVE ‚n‚m TO ‚e‚k‚f‚s‚q‚m‚r .                                                 
               DISPLAY "‚e‚k‚f‚s‚q‚m‚r=" ‚e‚k‚f‚s‚q‚m‚r  UPON CONSOLE
000000 CX00197.
               DISPLAY "CX00197"  UPON CONSOLE                                                                  
000000     IF NOT(‚s‚q‚m‚aƒŒƒR[ƒhŠi”[Œ” = 0)GO TO CX00198.                               
000000     MOVE ‚n‚m TO ‚e‚k‚f‚s‚q‚m‚r .                                                 
000000     GO TO CX00199.                                                       
000000 CX00198.
           DISPLAY "CX00198" UPON CONSOLE
           DISPLAY "CX00198"  UPON CONSOLE                                                                 
000000     MOVE ‚s‚q‚m‚aƒŒƒR[ƒhŠi”[Œ” TO ‚v‚j‚sƒŒƒR[ƒhŠi”[Œ” .                                   
000000 CX00199.                                                                 
           DISPLAY "CX00199" UPON CONSOLE
000000 CX00195.                                                                 
           DISPLAY "CX00195" UPON CONSOLE
000000 CX00009. EXIT.                                                           
000000 P500-RTN .
           DISPLAY "P500-RTN"  UPON CONSOLE                                                               
000000     MOVE ‚v‚j‚s”„êƒR[ƒh TO ‚t‚q‚a‚`”„êƒR[ƒh 
               DISPLAY "‚t‚q‚a‚`”„êƒR[ƒh=" ‚t‚q‚a‚`”„êƒR[ƒh UPON CONSOLE
               DISPLAY "”„ê‚e"  UPON CONSOLE                                          
000000       READ  ”„ê‚e INVALID CONTINUE .                                       
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00200.                  
000000         DISPLAY "HBHUN370-79 VIURIBA READ ERROR ",                       
000000                   STS-FILE1 " " STS-FILE2                                
000000         STOP RUN .                                                     
000000 CX00200.
           DISPLAY "CX00200" UPON CONSOLE
           DISPLAY "CX00200"  UPON CONSOLE                                                                 
000000     MOVE ‚t‚q‚a‚`‹ÆŽÒƒR[ƒh TO ‚f‚x‚r‚`‹ÆŽÒƒR[ƒh  
               DISPLAY "‹ÆŽÒ‚e"  UPON CONSOLE                                        
000000       READ ‹ÆŽÒ‚e INVALID CONTINUE .                                        
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00201.                  
000000         DISPLAY "HBHUN370-80 VIGYOSYA READ ERROR" ,                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00201.                                                                 
           DISPLAY "CX00201" UPON CONSOLE
000000 CX00010. EXIT.                                                           
000000 P600-RTN .
           DISPLAY "P600-RTN"  UPON CONSOLE                                                               
000000     IF NOT(‚v‚j‚sŽæÁŽ¯•ÊƒR[ƒh‰º NOT = ZERO)GO TO CX00202.                         
000000     IF NOT(‚v‚j‚sŽx•¥Ž¯•ÊƒR[ƒh‰º NOT = ZERO)GO TO CX00203.                         
000000     MOVE ‚n‚m TO ‚e‚k‚fƒGƒ‰[                                                    
000000     MOVE '1' TO ‚v‚j‚s“–ƒ`ƒFƒbƒNƒtƒ‰ƒO                                              
000000     PERFORM ERWK-RTN THRU CX00024 .                                      
000000     GO TO CX00204.                                                       
000000 CX00203.
           DISPLAY "CX00203" UPON CONSOLE
           DISPLAY "CX00203"  UPON CONSOLE                                                                  
000000     IF NOT(‚v‚j‚s‘ã‘ÖŽ¯•ÊƒR[ƒh‰º NOT = ZERO)GO TO CX00205.                         
000000     MOVE ‚n‚m TO ‚e‚k‚fƒGƒ‰[                                                    
000000     MOVE '2' TO ‚v‚j‚s“–ƒ`ƒFƒbƒNƒtƒ‰ƒO                                              
000000     PERFORM ERWK-RTN THRU CX00024 .                                      
000000     GO TO CX00206.                                                       
000000 CX00205.
           DISPLAY "CX00205" UPON CONSOLE
           DISPLAY "CX00205"  UPON CONSOLE                                                                 
000000     IF NOT(‚v‚j‚s”­Œ”Ž¯•ÊƒR[ƒh‰º = ZERO)GO TO CX00207.                             
000000     IF NOT(‚v‚j‚sŽæÁ‹æ•ª = ZERO)GO TO CX00208.                                 
000000     MOVE ”­Œ” TO ‚v‚i‚h‚jƒŒƒR[ƒh‚h‚c                                                
000000     PERFORM URJKWK-RTN THRU CX00014                                      
000000     COMPUTE ‚v¸|–{“ú”­Œ”‘Šz = ‚v¸|–{“ú”­Œ”‘Šz + ‚v‚j‚s‹àŠz                                
000000     MOVE ‚v‚j‚s”„êƒR[ƒh TO ‚h‚c‚w”„êƒR[ƒh                                            
000000     MOVE ‚v‚j|”„ê•Ê¸ŽZ•\‚v‚j‚q TO ”„ê•Ê¸ŽZ•\‚v‚j‚q                                       
000000     MOVE 1 TO ‚v‚t‚a‚r”­Œ”–‡”                                                   
000000     MOVE ‚v‚j‚s‹àŠz TO ‚v‚t‚a‚r”­Œ”‹àŠz                                               
000000     PERFORM IDX-GET-RTN THRU CX00021                                     
000000     MOVE ‚v‚j‚s”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh TO ‚h‚c‚w”Ì”„‚b                                          
000000     PERFORM URISABAKI-GET-RTN THRU CX00022                               
000000     MOVE ”­Œ”ŽæÁ TO ‚v‚i‚h‚jƒŒƒR[ƒh‚h‚c                                              
000000     PERFORM URJKWK-RTN THRU CX00014                                      
000000     COMPUTE ‚v¸|–{“ú”­Œ”ŽæÁ‘Šz = ‚v¸|–{“ú”­Œ”ŽæÁ‘Šz + ‚v‚j‚s‹àŠz                            
000000     MOVE 1 TO ‚v‚t‚a‚rŽæÁ–‡”                                                   
000000     MOVE ‚v‚j‚s‹àŠz TO ‚v‚t‚a‚rŽæÁ‹àŠz .                                             
000000     IF NOT(‚v‚j‚sŽæÁ‰ðœƒJƒEƒ“ƒ^ > ZERO)GO TO CX00209.                             
000000     COMPUTE ‚v¸|–{“ú”­Œ”ŽæÁ‘Šz = ‚v¸|–{“ú”­Œ”ŽæÁ‘Šz + (‚v‚j‚s‹àŠz * ‚v‚j‚sŽæÁ‰ðœƒJƒEƒ“ƒ^)            
000000     COMPUTE ‚v¸|–{“ú”­Œ”ŽæÁ‰ðœ‘Šz = ‚v¸|–{“ú”­Œ”ŽæÁ‰ðœ‘Šz + (‚v‚j‚s‹àŠz *                     
000000     ‚v‚j‚sŽæÁ‰ðœƒJƒEƒ“ƒ^) .                                                       
000000     IF NOT(‚v‚j‚sŽæÁ‰ðœƒJƒEƒ“ƒ^ = 9)GO TO CX00210.                                
000000     MOVE ‚n‚m TO ‚v¸|‰ðœƒJƒEƒ“ƒ^ƒI[ƒo .                                            
000000 CX00210.
           DISPLAY "CX00210" UPON CONSOLE
           DISPLAY "CX00210"  UPON CONSOLE                                                                 
000000     COMPUTE ‚v‚t‚a‚rŽæÁ–‡” = ‚v‚t‚a‚rŽæÁ–‡” + ‚v‚j‚sŽæÁ‰ðœƒJƒEƒ“ƒ^                            
000000     COMPUTE ‚v‚t‚a‚rŽæÁ‹àŠz = ‚v‚t‚a‚rŽæÁ‹àŠz + (‚v‚j‚s‹àŠz * ‚v‚j‚sŽæÁ‰ðœƒJƒEƒ“ƒ^)                  
000000     MOVE ‚v‚j‚sŽæÁ‰ðœƒJƒEƒ“ƒ^ TO ‚v‚t‚a‚rŽæÁ‰ðœ–‡”                                       
000000     COMPUTE ‚v‚t‚a‚rŽæÁ‰ðœ‹àŠz = ‚v‚j‚s‹àŠz * ‚v‚j‚sŽæÁ‰ðœƒJƒEƒ“ƒ^ .                           
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
000000     IF NOT(‚v‚j‚sŽx•¥Ž¯•ÊƒR[ƒh‰º = ZERO)GO TO CX00212.                             
000000     IF NOT(‚v‚j‚sŽæÁŽx•¥”„êƒR[ƒh NOT = SPACE)GO TO CX00213.                       
000000     MOVE SPACE TO ‚v‚j‚sŽæÁŽx•¥”„êƒR[ƒh                                           
000000     MOVE ZERO TO ‚v‚j‚sŽæÁŽx•¥ŽæˆøŽž                                             
000000     MOVE ZERO TO ‚v‚j‚sŽæÁŽx•¥‚e‚d‚o”Ô†                                            
000000     MOVE ZERO TO ‚v‚j‚sŽæÁŽx•¥ƒpƒX’Ê”Ô .                                           
000000 CX00213.
           DISPLAY "CX00213" UPON CONSOLE
           DISPLAY "CX00213"  UPON CONSOLE                                                                 
000000     IF NOT(‚v‚j‚s‘ã‘ÖŽ¯•ÊƒR[ƒh‰º NOT = ZERO)GO TO CX00214.                         
000000     MOVE ‚n‚m TO ‚e‚k‚fƒGƒ‰[                                                    
000000     MOVE '3' TO ‚v‚j‚s“–ƒ`ƒFƒbƒNƒtƒ‰ƒO                                              
000000     PERFORM ERWK-RTN THRU CX00024 .                                      
000000     GO TO CX00215.                                                       
000000 CX00214.
           DISPLAY "CX00214" UPON CONSOLE
           DISPLAY "CX00214"  UPON CONSOLE                                                                  
000000     IF NOT(‚v‚j‚s”­Œ”Ž¯•ÊƒR[ƒh‰º = ZERO)GO TO CX00216.                             
000000     MOVE ”­Œ” TO ‚v‚i‚h‚jƒŒƒR[ƒh‚h‚c                                                
000000     PERFORM URJKWK-RTN THRU CX00014                                      
000000     PERFORM IDX-GET-RTN THRU CX00021                                     
000000     MOVE ‚v‚j‚s”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh TO ‚h‚c‚w”Ì”„‚b                                          
000000     PERFORM URISABAKI-GET-RTN THRU CX00022                               
000000     PERFORM HAKKEN-RTN THRU CX00015                                      
000000     COMPUTE ‚v¸|–{“ú”­Œ”‘Šz = ‚v¸|–{“ú”­Œ”‘Šz + ‚v‚j‚s‹àŠz                                
000000     MOVE ‚v‚j|”„ê•Ê¸ŽZ•\‚v‚j‚q TO ”„ê•Ê¸ŽZ•\‚v‚j‚q                                       
000000     MOVE 1 TO ‚v‚t‚a‚r”­Œ”–‡”                                                   
000000     MOVE ‚v‚j‚s‹àŠz TO ‚v‚t‚a‚r”­Œ”‹àŠz .                                             
000000     IF NOT(‚v‚j‚sŽæÁ‰ðœƒJƒEƒ“ƒ^ > ZERO)GO TO CX00217.                             
000000     COMPUTE ‚v¸|–{“ú”­Œ”ŽæÁ‘Šz = ‚v¸|–{“ú”­Œ”ŽæÁ‘Šz + (‚v‚j‚s‹àŠz * ‚v‚j‚sŽæÁ‰ðœƒJƒEƒ“ƒ^)            
000000     COMPUTE ‚v¸|–{“ú”­Œ”ŽæÁ‰ðœ‘Šz = ‚v¸|–{“ú”­Œ”ŽæÁ‰ðœ‘Šz + (‚v‚j‚s‹àŠz *                     
000000     ‚v‚j‚sŽæÁ‰ðœƒJƒEƒ“ƒ^) .                                                       
000000     IF NOT(‚v‚j‚sŽæÁ‰ðœƒJƒEƒ“ƒ^ = 9)GO TO CX00218.                                
000000     MOVE ‚n‚m TO ‚v¸|‰ðœƒJƒEƒ“ƒ^ƒI[ƒo .                                            
000000 CX00218.
           DISPLAY "CX00218" UPON CONSOLE
           DISPLAY "CX00218"  UPON CONSOLE                                                                 
000000     MOVE ‚v‚j‚sŽæÁ‰ðœƒJƒEƒ“ƒ^ TO ‚v‚t‚a‚rŽæÁ–‡”                                         
000000     COMPUTE ‚v‚t‚a‚rŽæÁ‹àŠz = ‚v‚j‚s‹àŠz * ‚v‚j‚sŽæÁ‰ðœƒJƒEƒ“ƒ^                               
000000     MOVE ‚v‚j‚sŽæÁ‰ðœƒJƒEƒ“ƒ^ TO ‚v‚t‚a‚rŽæÁ‰ðœ–‡”                                       
000000     COMPUTE ‚v‚t‚a‚rŽæÁ‰ðœ‹àŠz = ‚v‚j‚s‹àŠz * ‚v‚j‚sŽæÁ‰ðœƒJƒEƒ“ƒ^ .                           
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
000000     IF NOT(‚v‚j‚s”­Œ”Ž¯•ÊƒR[ƒh‰º = ZERO)GO TO CX00220.                             
000000     MOVE ”­Œ” TO ‚v‚i‚h‚jƒŒƒR[ƒh‚h‚c                                                
000000     PERFORM URJKWK-RTN THRU CX00014                                      
000000     PERFORM IDX-GET-RTN THRU CX00021                                     
000000     MOVE ‚v‚j‚s”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh TO ‚h‚c‚w”Ì”„‚b                                          
000000     PERFORM URISABAKI-GET-RTN THRU CX00022                               
000000     PERFORM HAKKEN-RTN THRU CX00015                                      
000000     COMPUTE ‚v¸|–{“ú”­Œ”‘Šz = ‚v¸|–{“ú”­Œ”‘Šz + ‚v‚j‚s‹àŠz                                
000000     MOVE ‚v‚j|”„ê•Ê¸ŽZ•\‚v‚j‚q TO ”„ê•Ê¸ŽZ•\‚v‚j‚q                                       
000000     MOVE 1 TO ‚v‚t‚a‚r”­Œ”–‡”                                                   
000000     MOVE ‚v‚j‚s‹àŠz TO ‚v‚t‚a‚r”­Œ”‹àŠz .                                             
000000     IF NOT(‚v‚j‚sŽæÁ‰ðœƒJƒEƒ“ƒ^ > ZERO)GO TO CX00221.                             
000000     COMPUTE ‚v¸|–{“ú”­Œ”ŽæÁ‘Šz = ‚v¸|–{“ú”­Œ”ŽæÁ‘Šz + (‚v‚j‚s‹àŠz * ‚v‚j‚sŽæÁ‰ðœƒJƒEƒ“ƒ^)            
000000     COMPUTE ‚v¸|–{“ú”­Œ”ŽæÁ‰ðœ‘Šz = ‚v¸|–{“ú”­Œ”ŽæÁ‰ðœ‘Šz + (‚v‚j‚s‹àŠz *                     
000000     ‚v‚j‚sŽæÁ‰ðœƒJƒEƒ“ƒ^) .                                                       
000000     IF NOT(‚v‚j‚sŽæÁ‰ðœƒJƒEƒ“ƒ^ = 9)GO TO CX00222.                                
000000     MOVE ‚n‚m TO ‚v¸|‰ðœƒJƒEƒ“ƒ^ƒI[ƒo .                                            
000000 CX00222.
           DISPLAY "CX00222" UPON CONSOLE
           DISPLAY "CX00222"  UPON CONSOLE                                                                 
000000     MOVE ‚v‚j‚sŽæÁ‰ðœƒJƒEƒ“ƒ^ TO ‚v‚t‚a‚rŽæÁ–‡”                                         
000000     COMPUTE ‚v‚t‚a‚rŽæÁ‹àŠz = ‚v‚j‚s‹àŠz * ‚v‚j‚sŽæÁ‰ðœƒJƒEƒ“ƒ^                               
000000     MOVE ‚v‚j‚sŽæÁ‰ðœƒJƒEƒ“ƒ^ TO ‚v‚t‚a‚rŽæÁ‰ðœ–‡”                                       
000000     COMPUTE ‚v‚t‚a‚rŽæÁ‰ðœ‹àŠz = ‚v‚j‚s‹àŠz * ‚v‚j‚sŽæÁ‰ðœƒJƒEƒ“ƒ^                             
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
000000     IF NOT(‚v‚j‚sŽx•¥Ž¯•ÊƒR[ƒh‰º NOT = ZERO)GO TO CX00223.                         
000000     MOVE ‚n‚m TO ‚e‚k‚fƒGƒ‰[                                                    
000000     MOVE '2' TO ‚v‚j‚s“–ƒ`ƒFƒbƒNƒtƒ‰ƒO                                              
000000     PERFORM ERWK-RTN THRU CX00024 .                                      
000000     GO TO CX00224.                                                       
000000 CX00223.
           DISPLAY "CX00223" UPON CONSOLE
           DISPLAY "CX00223"  UPON CONSOLE                                                                 
000000     IF NOT(‚v‚j‚s‘ã‘ÖŽ¯•ÊƒR[ƒh‰º NOT = ZERO)GO TO CX00225.                         
000000     MOVE ‚n‚m TO ‚e‚k‚fƒGƒ‰[                                                    
000000     MOVE '3' TO ‚v‚j‚s“–ƒ`ƒFƒbƒNƒtƒ‰ƒO                                              
000000     PERFORM ERWK-RTN THRU CX00024 .                                      
000000     GO TO CX00226.                                                       
000000 CX00225.
           DISPLAY "CX00225" UPON CONSOLE
           DISPLAY "CX00225"  UPON CONSOLE                                                                 
000000     IF NOT(‚v‚j‚s”­Œ”Ž¯•ÊƒR[ƒh‰º NOT = ZERO)GO TO CX00227.                         
000000     MOVE ‚n‚m TO ‚e‚k‚fƒGƒ‰[                                                    
000000     MOVE '4' TO ‚v‚j‚s“–ƒ`ƒFƒbƒNƒtƒ‰ƒO                                              
000000     PERFORM ERWK-RTN THRU CX00024 .                                      
000000     GO TO CX00228.                                                       
000000 CX00227.
           DISPLAY "CX00227" UPON CONSOLE
           DISPLAY "CX00227"  UPON CONSOLE                                                                  
000000     IF NOT(‚v‚j‚sŽæÁŽ¯•ÊƒR[ƒh‰º NOT = ZERO)GO TO CX00229.                         
000000     IF NOT(‚v‚j‚sŽæÁ‹æ•ª = 0)GO TO CX00230.                                    
000000     MOVE ‚n‚m TO ‚e‚k‚fƒGƒ‰[                                                    
000000     MOVE '5' TO ‚v‚j‚s“–ƒ`ƒFƒbƒNƒtƒ‰ƒO                                              
000000     PERFORM ERWK-RTN THRU CX00024 .                                      
000000     GO TO CX00231.                                                       
000000 CX00230.
           DISPLAY "CX00230" UPON CONSOLE
           DISPLAY "CX00230"  UPON CONSOLE                                                                  
000000     MOVE ‚v‚j|ŠO”Ì—p”„ãî•ñ‚v‚j‚q TO ŠO•””Ì”„—p”„ãî•ñ‚v‚j‚q                                   
000000     MOVE ‚f‚x‚r‚`‹ÆŽÒƒR[ƒh TO ‚v‚f‚t‚`‹ÆŽÒƒR[ƒh                                          
000000     MOVE ‚v‚j‚s”„êƒR[ƒh TO ‚v‚f‚t‚`”„êƒR[ƒh                                           
000000     MOVE 1 TO ‚v‚f‚t‚`áŠQŽæÁ–‡”                                                 
000000     MOVE ‚v‚j‚s‹àŠz TO ‚v‚f‚t‚`áŠQŽæÁ‹àŠz                                             
000000     MOVE 0 TO ‚v‚f‚t‚`”­Œ”–‡”                                                   
000000     MOVE 0 TO ‚v‚f‚t‚`”­Œ”‹àŠz                                                   
000000                 WRITE ŠO•””Ì”„—p”„ãî•ñ‚v‚j‚q .                                     
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
000000     MOVE ”­Œ” TO ‚v‚i‚h‚jƒŒƒR[ƒh‚h‚c                                                
000000     PERFORM URJKWK-RTN THRU CX00014                                      
000000     PERFORM IDX-GET-RTN THRU CX00021                                     
000000     MOVE ‚v‚j‚s”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh TO ‚h‚c‚w”Ì”„‚b                                          
000000     PERFORM URISABAKI-GET-RTN THRU CX00022                               
000000     PERFORM HAKKEN-RTN THRU CX00015                                      
000000     COMPUTE ‚v¸|–{“ú”­Œ”‘Šz = ‚v¸|–{“ú”­Œ”‘Šz + ‚v‚j‚s‹àŠz                                
000000     MOVE ‚v‚j|”„ê•Ê¸ŽZ•\‚v‚j‚q TO ”„ê•Ê¸ŽZ•\‚v‚j‚q                                       
000000     MOVE 1 TO ‚v‚t‚a‚r”­Œ”–‡”                                                   
000000     MOVE ‚v‚j‚s‹àŠz TO ‚v‚t‚a‚r”­Œ”‹àŠz                                               
000000     PERFORM WUBSWK-RTN THRU CX00017                                      
000000     MOVE ‚v‚j|ŠO”Ì—p”„ãî•ñ‚v‚j‚q TO ŠO•””Ì”„—p”„ãî•ñ‚v‚j‚q                                   
000000     MOVE ‚f‚x‚r‚`‹ÆŽÒƒR[ƒh TO ‚v‚f‚t‚`‹ÆŽÒƒR[ƒh                                          
000000     MOVE ‚v‚j‚s”„êƒR[ƒh TO ‚v‚f‚t‚`”„êƒR[ƒh                                           
000000     MOVE 0 TO ‚v‚f‚t‚`áŠQŽæÁ–‡”                                                 
000000     MOVE 0 TO ‚v‚f‚t‚`áŠQŽæÁ‹àŠz                                                 
000000     MOVE 1 TO ‚v‚f‚t‚`”­Œ”–‡”                                                   
000000     MOVE ‚v‚j‚s‹àŠz TO ‚v‚f‚t‚`”­Œ”‹àŠz                                               
000000               WRITE ŠO•””Ì”„—p”„ãî•ñ‚v‚j‚q .                                       
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
000000     IF NOT(‚v‚j‚s”­Œ”Ž¯•ÊƒR[ƒh‰º = ZERO)GO TO CX00235.                             
000000     MOVE ‚n‚m TO ‚e‚k‚fƒGƒ‰[                                                    
000000     MOVE "4" TO ‚v‚j‚s“–ƒ`ƒFƒbƒNƒtƒ‰ƒO                                              
000000     PERFORM ERWK-RTN THRU CX00024 .                                      
000000     GO TO CX00236.                                                       
000000 CX00235.
           DISPLAY "CX00235" UPON CONSOLE
           DISPLAY "CX00235"  UPON CONSOLE                                                                 
000000     IF NOT(‚v‚j‚sŽx•¥Ž¯•ÊƒR[ƒh‰º NOT = ZERO)GO TO CX00237.                         
000000     MOVE ‚n‚m TO ‚e‚k‚fƒGƒ‰[                                                    
000000     MOVE "5" TO ‚v‚j‚s“–ƒ`ƒFƒbƒNƒtƒ‰ƒO                                              
000000     PERFORM ERWK-RTN THRU CX00024 .                                      
000000     GO TO CX00238.                                                       
000000 CX00237.
           DISPLAY "CX00237" UPON CONSOLE
           DISPLAY "CX00237"  UPON CONSOLE                                                                  
000000     MOVE Žx•¥ TO ‚v‚j‚`‚hƒŒƒR[ƒh‚h‚c                                                
000000     PERFORM KSWK-RTN THRU CX00016 .                                      
000000     IF NOT(‚v‚j‚sŽæÁŽ¯•ÊƒR[ƒh‰º NOT = ZERO)GO TO CX00239.                         
000000     MOVE Žx•¥ŽæÁ TO ‚v‚j‚`‚hƒŒƒR[ƒh‚h‚c                                              
000000     PERFORM KSWK-RTN THRU CX00016                                        
000000     MOVE ‚v‚j|”„ê•Ê¸ŽZ•\‚v‚j‚q TO ”„ê•Ê¸ŽZ•\‚v‚j‚q                                       
000000     MOVE 1 TO ‚v‚t‚a‚rŽx•¥–‡”                                                   
000000     MOVE ‚v‚j‚s‹àŠz TO ‚v‚t‚a‚rŽx•¥‹àŠz                                               
000000     MOVE 1 TO ‚v‚t‚a‚rŽx•¥ŽæÁ–‡”                                                 
000000     MOVE ‚v‚j‚s‹àŠz TO ‚v‚t‚a‚rŽx•¥ŽæÁ‹àŠz                                             
000000     PERFORM WUBSWK-RTN THRU CX00017 .                                    
000000     GO TO CX00240.                                                       
000000 CX00239.
           DISPLAY "CX00239" UPON CONSOLE
           DISPLAY "CX00239"  UPON CONSOLE                                                                 
000000     MOVE Žx•¥ TO ‚v‚i‚h‚jƒŒƒR[ƒh‚h‚c                                                
000000     PERFORM URJKWK-RTN THRU CX00014                                      
000000     MOVE ‚v‚j|”„ê•Ê¸ŽZ•\‚v‚j‚q TO ”„ê•Ê¸ŽZ•\‚v‚j‚q                                       
000000     MOVE 1 TO ‚v‚t‚a‚rŽx•¥–‡”                                                   
000000     MOVE ‚v‚j‚s‹àŠz TO ‚v‚t‚a‚rŽx•¥‹àŠz                                               
000000     PERFORM WUBSWK-RTN THRU CX00017                                      
000000     MOVE ‚v‚j‚s”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh TO ‚h‚c‚w”Ì”„‚b .                                        
000000     IF NOT(‚v‚j‚s‹àŠz >= ‚v”Ì‚ŠzŽx•¥Šî€’l (‚h‚c‚w”Ì”„‚b))GO TO CX00241.                    
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
000000     MOVE ‚v‚j‚s”„êƒR[ƒh TO ‚v‚i‚h‚j”„êƒR[ƒh                                           
000000     MOVE ‚v‚j‚sŽó•tŽž TO ‚v‚i‚h‚jŽæˆøŽž                                             
000000     MOVE ‚v‚j‚sƒQ[ƒ€ƒ^ƒCƒv TO ‚v‚i‚h‚jƒQ[ƒ€ƒ^ƒCƒv                                         
000000     MOVE ‚v‚j‚sƒuƒƒbƒNƒR[ƒh TO ‚v‚i‚h‚jƒuƒƒbƒNƒR[ƒh                                       
000000     MOVE ‚v‚j‚s‹àŠz TO ‚v‚i‚h‚j‹àŠz                                                 
000000     MOVE ‚v‚j‚so—Í”Ô† TO ‚v‚i‚h‚jo—Í”Ô†                                             
000000       WRITE ”„êŽžŠÔ‘Ñ•Ê”„ã‚v‚j‚q .                                                
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00242.                  
000000         DISPLAY "HBHUN370-83 SQWJIKAN WRITE ERROR ",                     
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00242.                                                                 
           DISPLAY "CX00242" UPON CONSOLE
000000 CX00014. EXIT.                                                           
000000 HAKKEN-RTN .
           DISPLAY "HAKKEN-RTN"  UPON CONSOLE                                                             
000000       INITIALIZE ”„ê•Ê”„ã‚v‚j‚q                                                
000000     MOVE ‚v‚j‚s”„êƒR[ƒh TO ‚v‚t‚a‚t”„êƒR[ƒh                                           
000000     MOVE ‚v‚j‚sƒQ[ƒ€ƒ^ƒCƒv TO ‚v‚t‚a‚tƒQ[ƒ€ƒ^ƒCƒv                                         
000000     MOVE ‚v‚j‚sƒuƒƒbƒNƒR[ƒh TO ‚v‚t‚a‚tƒuƒƒbƒNƒR[ƒh                                       
000000     COMPUTE ‚v‚t‚a‚t”„ã‹àŠz = ‚v‚j‚s‹àŠz / ‚v‚j‚s“–‰Œp‘±‰ñ†”                                
000000     MOVE ‚v‚j‚s“–‰Œp‘±‰ñ†” TO ‚v‚j|Œp‘±‰ñ†”                                          
000000     MOVE ZERO TO ‚v‚j|‰ñ† .                                                 
000000 CX00243. IF NOT(‚v‚j|Œp‘±‰ñ†” > ZERO)GO TO CX00244.
           DISPLAY "CX00243" UPON CONSOLE
           DISPLAY "CX00243"  UPON CONSOLE                           
000000     COMPUTE ‚v‚t‚a‚t‰ñ† = ‚v‚j‚sŠJŽn‰ñ† + ‚v‚j|‰ñ†                                     
000000         WRITE ”„ê•Ê”„ã‚v‚j‚q .                                                 
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00245.                  
000000           DISPLAY "HBHUN370-84 SQWURIUR WRITE ERROR ",                   
000000                    STS-FILE1 " " STS-FILE2                               
000000           STOP RUN .                                                   
000000 CX00245.
           DISPLAY "CX00245" UPON CONSOLE
           DISPLAY "CX00245"  UPON CONSOLE                                                                 
000000     COMPUTE ‚v‚j|Œp‘±‰ñ†” = ‚v‚j|Œp‘±‰ñ†” - 1                                      
000000     COMPUTE ‚v‚j|‰ñ† = ‚v‚j|‰ñ† + 1 .                                          
000000     GO TO CX00243.                                                       
000000 CX00244.
           DISPLAY "CX00244" UPON CONSOLE
           DISPLAY "CX00244"  UPON CONSOLE                                                                 
000000     IF NOT(‚v‚j‚sƒQ[ƒ€Ží•Ê = ƒiƒ“ƒo[ƒY)GO TO CX00246.                               
000000         INITIALIZE  w“ü“ú•Ê\žó‹µ‚v‚j‚q                                          
000000     MOVE ‚v‚j‚sƒQ[ƒ€ƒ^ƒCƒv TO ‚v‚j‚m‚xƒQ[ƒ€ƒ^ƒCƒv                                         
000000     MOVE ‚v‚j‚sƒuƒƒbƒNƒR[ƒh TO ‚v‚j‚m‚xƒuƒƒbƒNƒR[ƒh .                                     
000000     IF NOT(‚v‚j|”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh = 01)GO TO CX00247.                              
000000     COMPUTE ‚v‚j‚m‚xŒû” = ‚v‚j‚sŒû” * ‚v‚j‚s“–‰Œp‘±‰ñ†” .                                
000000     GO TO CX00248.                                                       
000000 CX00247.
           DISPLAY "CX00247" UPON CONSOLE
           DISPLAY "CX00247"  UPON CONSOLE                                                                  
000000     MOVE ‚v‚j‚sŒû” TO ‚v‚j‚m‚xŒû” .                                               
000000 CX00248.
           DISPLAY "CX00248" UPON CONSOLE
           DISPLAY "CX00248"  UPON CONSOLE                                                                  
000000     MOVE ‚v‚j‚sƒpƒlƒ‹” TO ‚h‚c‚wƒpƒlƒ‹ .                                             
000000 CX00249. IF NOT(‚h‚c‚wƒpƒlƒ‹ > ZERO)GO TO CX00250.
           DISPLAY "CX00249" UPON CONSOLE
           DISPLAY "CX00249"  UPON CONSOLE                             
000000     MOVE ‚v‚j‚s\ž”Žš (‚h‚c‚wƒpƒlƒ‹) TO ‚v‚j‚m‚x\ž”Žš                                    
000000     MOVE ‚v‚j‚s\žƒ^ƒCƒv (‚h‚c‚wƒpƒlƒ‹) TO ‚v‚j‚m‚xƒ^ƒCƒv‹æ•ª                                  
000000     MOVE ‚v‚j‚sƒNƒCƒbƒNƒsƒbƒN‹æ•ª (‚h‚c‚wƒpƒlƒ‹) TO ‚v‚j‚m‚xƒNƒCƒbƒNƒsƒbƒN                            
000000           WRITE w“ü“ú•Ê\žó‹µ‚v‚j‚q .                                            
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00251.                  
000000             DISPLAY "HBHUN370-85 SQWKNYJY WRITE ERROR ",                 
000000                      STS-FILE1 " " STS-FILE2                             
000000             STOP RUN .                                                 
000000 CX00251.
           DISPLAY "CX00251" UPON CONSOLE
           DISPLAY "CX00251"  UPON CONSOLE                                                                 
000000     COMPUTE ‚h‚c‚wƒpƒlƒ‹ = ‚h‚c‚wƒpƒlƒ‹ - 1 .                                        
000000     GO TO CX00249.                                                       
000000 CX00250.
           DISPLAY "CX00250" UPON CONSOLE
           DISPLAY "CX00250"  UPON CONSOLE                                                      
000000 CX00246.
           DISPLAY "CX00246"  UPON CONSOLE                                                                 
000000     IF NOT(‚v‚j‚sƒQ[ƒ€Ží•Ê = ƒƒg AND ‚v‚j‚s\žƒ^ƒCƒv (1) NOT = ’Êí                       
000000     )GO TO CX00252.                                                      
      *20141028C³ŠJŽn
000000*         @ZSNCNBMP( BUNSI = ‚v‚j‚s•ªŽq ,                                       
000000*                    BUNBO = ‚v‚j‚s•ª•ê ,                                       
000000*                    RTYPE = ‚v‚j‚s\žƒ^ƒCƒv(1) ,                                 
000000*                    RNUMS = ‚v‚j|\ž’Ê‚è” );                                   
       ZSNCNBMP.
      *** ‰Šú‰» ***                                                  
           INITIALIZE     KUMN-PARAM.                                                                       
      *** ƒpƒ‰ƒ[ƒ^ƒ`ƒFƒbƒN ***                                   
           IF  ‚v‚j‚s•ªŽq  =  LOW-VALUE    THEN                                              
                   DISPLAY  "•ªŽq‚ðŽw’è‚µ‚Ä‰º‚³‚¢"                               
                   STOP RUN.                                                                                               
           IF  ‚v‚j‚s•ª•ê  =  LOW-VALUE    THEN                                              
                   DISPLAY  "•ª•ê‚ðŽw’è‚µ‚Ä‰º‚³‚¢"                               
                   STOP RUN.
           IF  ‚v‚j‚s\žƒ^ƒCƒv(1)  =  LOW-VALUE    THEN                                              
                   DISPLAY  "\žƒ^ƒCƒv‚ðŽw’è‚µ‚Ä‰º‚³‚¢"                         
                   STOP RUN.
           IF  ‚v‚j|\ž’Ê‚è”  =  LOW-VALUE    THEN                                              
                   DISPLAY  "\ž’Ê‚è”‚ðŽw’è‚µ‚Ä‰º‚³‚¢"                         
                   STOP RUN.
      *** ƒjƒ…[ƒƒŠƒbƒNƒ`ƒFƒbƒN ***                                    
           IF ‚v‚j‚s•ªŽq  NOT  NUMERIC  OR                                
              ‚v‚j‚s•ª•ê  NOT  NUMERIC  OR                                   
              ‚v‚j‚s\žƒ^ƒCƒv(1)  NOT  NUMERIC                                        
              STOP RUN.                                                                
      *** \ž’Ê‚è”‚ÌŽZo ***                                          
           IF   ‚v‚j‚s\žƒ^ƒCƒv(1)  =  "1"                                            
                COMPUTE ‚j‚t‚l‚m‘g‚Ý‡‚í‚¹” = ‚v‚j‚s•ª•ê - ‚v‚j‚s•ªŽq + 1
           ELSE                                                               
      *** ƒpƒ‰ƒ[ƒ^Ý’è ***                                    
                COMPUTE ‚j‚t‚l‚m”’l‚m = ‚v‚j‚s•ªŽq + ‚v‚j‚s\žƒ^ƒCƒv(1) - 2
                MOVE ‚v‚j‚s•ªŽq TO ‚j‚t‚l‚m”’l‚q                                                                  
      *** ‘g‚Ý‡‚í‚¹”ŽZoƒ‚ƒWƒ…[ƒ‹ŒÄ‚Ño‚µ ***
                CALL "HSAAL250" USING KUMN-PARAM.                                                                
      *** o—Íƒpƒ‰ƒ[ƒ^ˆÚ‘— ***                                
           MOVE ‚j‚t‚l‚m‘g‚Ý‡‚í‚¹” TO ‚v‚j|\ž’Ê‚è”.
           DISPLAY  "AAAAAAAAAAAAAAAAAAAAAAAAAAAAA"  UPON CONSOLE
      *20141028C³I—¹
000000     COMPUTE ‚v”„ƒ”„ã‹àŠz (‚h‚c‚wƒQ[ƒ€ ‚h‚c‚w‰ñ† ‚h‚c‚w”Ì”„‚b) = ‚v”„ƒ”„ã‹àŠz (‚h‚c‚wƒQ[ƒ€              
000000     ‚h‚c‚w‰ñ† ‚h‚c‚w”Ì”„‚b) + ‚v‚j‚s‹àŠz .                                              
000000     IF NOT(‚v”„ŽJ”„ŽJŽè”—¿ (‚h‚c‚wƒe[ƒuƒ‹”Ô† ‚b‚m‚s”Ì”„‚b ‚b‚m‚s‹àŠz‘Ñ) NOT = 0                    
000000     )GO TO CX00253.                                                      
000000     MOVE ‚v”„ŽJ”„ŽJŽè”—¿ (‚h‚c‚wƒe[ƒuƒ‹”Ô† ‚b‚m‚s”Ì”„‚b ‚b‚m‚s‹àŠz‘Ñ) TO ‚v‚j|”„ŽJŽè”—¿ .                
000000     GO TO CX00254.                                                       
000000 CX00253.
           DISPLAY "CX00253" UPON CONSOLE
           DISPLAY "CX00253"  UPON CONSOLE                                                                 
000000     COMPUTE ‚v‚j|”„ŽJŽè”—¿ = ‚v”„ŽJ”„ŽJŽè”—¿—¦ (‚h‚c‚wƒe[ƒuƒ‹”Ô† ‚b‚m‚s”Ì”„‚b ‚b‚m‚s‹àŠz‘Ñ) /             
000000     100 * ‚v‰ñ|’P‰¿ (‚h‚c‚wƒQ[ƒ€ ‚h‚c‚w‰ñ†) .                                         
000000 CX00254.
           DISPLAY "CX00254" UPON CONSOLE
           DISPLAY "CX00254"  UPON CONSOLE                                                                 
000000     COMPUTE ‚v”„ƒ—ÝŒvŽè”—¿ (‚h‚c‚wƒQ[ƒ€ ‚h‚c‚w‰ñ† ‚h‚c‚w”Ì”„‚b ‚b‚m‚s‹àŠz‘Ñ) = ‚v”„ƒ—ÝŒvŽè”—¿ (           
000000     ‚h‚c‚wƒQ[ƒ€ ‚h‚c‚w‰ñ† ‚h‚c‚w”Ì”„‚b ‚b‚m‚s‹àŠz‘Ñ) + ‚v‚j|”„ŽJŽè”—¿ * ‚v‚j‚sŒû” * ‚v‚j|\ž’Ê‚è” .          
000000     IF NOT(‚b‚m‚s‹àŠz‘Ñ > 1)GO TO CX00255.                                     
000000     IF NOT(‚v”„ŽJ”„ŽJŽè”—¿ (‚h‚c‚wƒe[ƒuƒ‹”Ô† ‚b‚m‚s”Ì”„‚b 1) NOT = 0                         
000000     )GO TO CX00256.                                                      
000000     COMPUTE ‚v”„ƒŽè”—¿•â³Šz (‚h‚c‚wƒQ[ƒ€ ‚h‚c‚w‰ñ† ‚h‚c‚w”Ì”„‚b) = ‚v”„ƒŽè”—¿•â³Šz (‚h‚c‚wƒQ[ƒ€          
000000     ‚h‚c‚w‰ñ† ‚h‚c‚w”Ì”„‚b) + ‚v”„ŽJ”„ŽJŽè”—¿ (‚h‚c‚wƒe[ƒuƒ‹”Ô† ‚b‚m‚s”Ì”„‚b 1) * ‚v‚j‚sŒû” *              
000000     ‚v‚j|\ž’Ê‚è” - ‚v‚j|”„ŽJŽè”—¿ * ‚v‚j‚sŒû” * ‚v‚j|\ž’Ê‚è” .                             
000000     GO TO CX00257.                                                       
000000 CX00256. 
           DISPLAY "CX00256" UPON CONSOLE
           DISPLAY "CX00256"  UPON CONSOLE                                                                 
000000     COMPUTE ‚v”„ƒŽè”—¿•â³Šz (‚h‚c‚wƒQ[ƒ€ ‚h‚c‚w‰ñ† ‚h‚c‚w”Ì”„‚b) = ‚v”„ƒŽè”—¿•â³Šz (‚h‚c‚wƒQ[ƒ€          
000000     ‚h‚c‚w‰ñ† ‚h‚c‚w”Ì”„‚b) + ‚v”„ŽJ”„ŽJŽè”—¿—¦ (‚h‚c‚wƒe[ƒuƒ‹”Ô† ‚b‚m‚s”Ì”„‚b 1) / 100 *               
000000     ‚v‰ñ|’P‰¿ (‚h‚c‚wƒQ[ƒ€ ‚h‚c‚w‰ñ†) * ‚v‚j‚sŒû” * ‚v‚j|\ž’Ê‚è” - ‚v‚j|”„ŽJŽè”—¿ * ‚v‚j‚sŒû”           
000000     * ‚v‚j|\ž’Ê‚è” .                                                         
000000 CX00257.                                                                 
           DISPLAY "CX00257" UPON CONSOLE
000000 CX00255.
           DISPLAY "CX00255" UPON CONSOLE
           DISPLAY "CX00255"  UPON CONSOLE                                                                 
000000     MOVE ‚v‚j‚s”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh TO ‚v”„ƒ”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh (‚h‚c‚wƒQ[ƒ€ ‚h‚c‚w‰ñ† ‚h‚c‚w”Ì”„‚b) .            
000000     GO TO CX00258.                                                       
000000 CX00252.
           DISPLAY "CX00252" UPON CONSOLE
           DISPLAY "CX00252"  UPON CONSOLE                                                                 
000000     MOVE 1 TO ‚v‚j|\ž’Ê‚è”                                                   
000000     MOVE ‚v‚j‚s“–‰Œp‘±‰ñ†” TO ‚v‚j|Œp‘±‰ñ†” .                                        
000000 CX00259. IF NOT(‚v‚j|Œp‘±‰ñ†” > ZERO)GO TO CX00260.
           DISPLAY "CX00259" UPON CONSOLE
           DISPLAY "CX00259"  UPON CONSOLE                           
000000     COMPUTE ‚v”„ƒ”„ã‹àŠz (‚h‚c‚wƒQ[ƒ€ ‚h‚c‚w‰ñ† ‚h‚c‚w”Ì”„‚b) = ‚v”„ƒ”„ã‹àŠz (‚h‚c‚wƒQ[ƒ€              
000000     ‚h‚c‚w‰ñ† ‚h‚c‚w”Ì”„‚b) + (‚v‚j‚s‹àŠz / ‚v‚j‚s“–‰Œp‘±‰ñ†”) .                               
000000     IF NOT(‚v”„ŽJ”„ŽJŽè”—¿ (‚h‚c‚wƒe[ƒuƒ‹”Ô† ‚b‚m‚s”Ì”„‚b ‚b‚m‚s‹àŠz‘Ñ) NOT = 0                    
000000     )GO TO CX00261.                                                      
000000     MOVE ‚v”„ŽJ”„ŽJŽè”—¿ (‚h‚c‚wƒe[ƒuƒ‹”Ô† ‚b‚m‚s”Ì”„‚b ‚b‚m‚s‹àŠz‘Ñ) TO ‚v‚j|”„ŽJŽè”—¿ .                
000000     GO TO CX00262.                                                       
000000 CX00261.
           DISPLAY "CX00261" UPON CONSOLE
           DISPLAY "CX00261"  UPON CONSOLE                                                                  
000000     COMPUTE ‚v‚j|”„ŽJŽè”—¿ = ‚v”„ŽJ”„ŽJŽè”—¿—¦ (‚h‚c‚wƒe[ƒuƒ‹”Ô† ‚b‚m‚s”Ì”„‚b ‚b‚m‚s‹àŠz‘Ñ) /             
000000     100 * ‚v‰ñ|’P‰¿ (‚h‚c‚wƒQ[ƒ€ ‚h‚c‚w‰ñ†) .                                         
000000 CX00262.
           DISPLAY "CX00262" UPON CONSOLE
           DISPLAY "CX00262"  UPON CONSOLE                                                                  
000000     COMPUTE ‚v”„ƒ—ÝŒvŽè”—¿ (‚h‚c‚wƒQ[ƒ€ ‚h‚c‚w‰ñ† ‚h‚c‚w”Ì”„‚b ‚b‚m‚s‹àŠz‘Ñ) = ‚v”„ƒ—ÝŒvŽè”—¿ (           
000000     ‚h‚c‚wƒQ[ƒ€ ‚h‚c‚w‰ñ† ‚h‚c‚w”Ì”„‚b ‚b‚m‚s‹àŠz‘Ñ) +                                        
000000           ‚v‚j|”„ŽJŽè”—¿ *  ,                                                  
000000                            ‚v‚j‚sŒû”    *  ‚v‚j‚sƒpƒlƒ‹” .                         
000000     IF NOT(‚b‚m‚s‹àŠz‘Ñ > 1)GO TO CX00263.                                     
000000     IF NOT(‚v”„ŽJ”„ŽJŽè”—¿ (‚h‚c‚wƒe[ƒuƒ‹”Ô† ‚b‚m‚s”Ì”„‚b 1) NOT = 0                         
000000     )GO TO CX00264.                                                      
000000     COMPUTE ‚v”„ƒŽè”—¿•â³Šz (‚h‚c‚wƒQ[ƒ€ ‚h‚c‚w‰ñ† ‚h‚c‚w”Ì”„‚b) = ‚v”„ƒŽè”—¿•â³Šz (‚h‚c‚wƒQ[ƒ€          
000000     ‚h‚c‚w‰ñ† ‚h‚c‚w”Ì”„‚b) + ‚v”„ŽJ”„ŽJŽè”—¿ (‚h‚c‚wƒe[ƒuƒ‹”Ô† ‚b‚m‚s”Ì”„‚b 1) * ‚v‚j‚sŒû” *              
000000     ‚v‚j‚sƒpƒlƒ‹” - ‚v‚j|”„ŽJŽè”—¿ * ‚v‚j‚sŒû” * ‚v‚j‚sƒpƒlƒ‹” .                               
000000     GO TO CX00265.                                                       
000000 CX00264.
           DISPLAY "CX00264" UPON CONSOLE
           DISPLAY "CX00264"  UPON CONSOLE                                                                 
000000     COMPUTE ‚v”„ƒŽè”—¿•â³Šz (‚h‚c‚wƒQ[ƒ€ ‚h‚c‚w‰ñ† ‚h‚c‚w”Ì”„‚b) = ‚v”„ƒŽè”—¿•â³Šz (‚h‚c‚wƒQ[ƒ€          
000000     ‚h‚c‚w‰ñ† ‚h‚c‚w”Ì”„‚b) + ‚v”„ŽJ”„ŽJŽè”—¿—¦ (‚h‚c‚wƒe[ƒuƒ‹”Ô† ‚b‚m‚s”Ì”„‚b 1) / 100 *               
000000     ‚v‰ñ|’P‰¿ (‚h‚c‚wƒQ[ƒ€ ‚h‚c‚w‰ñ†) * ‚v‚j‚sŒû” * ‚v‚j‚sƒpƒlƒ‹” - ‚v‚j|”„ŽJŽè”—¿ * ‚v‚j‚sŒû” *          
000000     ‚v‚j‚sƒpƒlƒ‹” .                                                            
000000 CX00265.                                                                 
           DISPLAY "CX00265" UPON CONSOLE
000000 CX00263.
           DISPLAY "CX00263" UPON CONSOLE
           DISPLAY "CX00263"  UPON CONSOLE                                                                 
000000     MOVE ‚v‚j‚s”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh TO ‚v”„ƒ”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh (‚h‚c‚wƒQ[ƒ€ ‚h‚c‚w‰ñ† ‚h‚c‚w”Ì”„‚b)              
000000     COMPUTE ‚h‚c‚w‰ñ† = ‚h‚c‚w‰ñ† + 1                                            
000000     COMPUTE ‚v‚j|Œp‘±‰ñ†” = ‚v‚j|Œp‘±‰ñ†” - 1 .                                    
000000     GO TO CX00259.                                                       
000000 CX00260.                                                                 
           DISPLAY "CX00260" UPON CONSOLE
000000 CX00258. 
           DISPLAY "CX00258" UPON CONSOLE
           DISPLAY "CX00258"  UPON CONSOLE                                                                 
000000     MOVE ‚t‚q‚a‚`”„ãŒvã’c‘ÌƒR[ƒh TO ‚h‚c‚w’c‘Ì                                          
000000     MOVE ‚h‚c‚w‰ñ†‚Q TO ‚h‚c‚w‰ñ†                                                 
000000     MOVE ‚v‚j‚s“–‰Œp‘±‰ñ†” TO ‚v‚j|Œp‘±‰ñ†” .                                        
000000 CX00266. IF NOT(‚v‚j|Œp‘±‰ñ†” > ZERO)GO TO CX00267.
           DISPLAY "CX00266" UPON CONSOLE
           DISPLAY "CX00266"  UPON CONSOLE                           
000000     COMPUTE ‚v’c¸’c‘Ì•Ê”„ã (‚h‚c‚wƒQ[ƒ€ ‚h‚c‚w‰ñ† ‚h‚c‚w’c‘Ì) = ‚v’c¸’c‘Ì•Ê”„ã (‚h‚c‚wƒQ[ƒ€             
000000     ‚h‚c‚w‰ñ† ‚h‚c‚w’c‘Ì) + ‚v‚j‚s‹àŠz / ‚v‚j‚s“–‰Œp‘±‰ñ†”                                    
000000     MOVE ‚f‚x‚r‚`‹ÆŽÒƒR[ƒh TO ‚v’c¸‹ÆŽÒƒR[ƒh (‚h‚c‚wƒQ[ƒ€ ‚h‚c‚w‰ñ† ‚h‚c‚w’c‘Ì)                      
000000     MOVE ‚v‚j‚s”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh TO ‚v’c¸”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh (‚h‚c‚wƒQ[ƒ€ ‚h‚c‚w‰ñ† ‚h‚c‚w’c‘Ì)               
000000     COMPUTE ‚v‚j|Œp‘±‰ñ†” = ‚v‚j|Œp‘±‰ñ†” - 1                                      
000000     COMPUTE ‚h‚c‚w‰ñ† = ‚h‚c‚w‰ñ† + 1 .                                          
000000     GO TO CX00266.                                                       
000000 CX00267.
           DISPLAY "CX00267" UPON CONSOLE
           DISPLAY "CX00267"  UPON CONSOLE                                                                 
000000     MOVE ‚h‚c‚w‰ñ†‚Q TO ‚h‚c‚w‰ñ† .                                               
000000 CX00015. EXIT.                                                           
000000 KSWK-RTN . 
           DISPLAY "KSWK-RTN"  UPON CONSOLE                                                              
000000       INITIALIZE  ‚v‚j‚`‚hŽx•¥î•ñ                                               
000000       INITIALIZE  ‚v‚j‚`‚hƒRƒ“ƒrŽx•¥î•ñ                                            
000000     MOVE ‚v‚j‚sƒQ[ƒ€ƒ^ƒCƒv TO ‚v‚j‚`‚hƒQ[ƒ€ƒ^ƒCƒv                                         
000000     MOVE ‚v‚j‚sƒuƒƒbƒNƒR[ƒh TO ‚v‚j‚`‚hƒuƒƒbƒNƒR[ƒh .                                     
000000     IF NOT( (‚v‚j‚sƒRƒ“ƒr“–‚¹‚ñŒû” (1) = ZERO) AND (‚v‚j‚sƒRƒ“ƒr“–‚¹‚ñŒû” (2) =              
000000     ZERO) AND (‚v‚j‚sƒRƒ“ƒr“–‚¹‚ñŒû” (3) = ZERO) AND (‚v‚j‚sƒRƒ“ƒr“–‚¹‚ñŒû” (4) =            
000000     ZERO) AND (‚v‚j‚sƒRƒ“ƒr“–‚¹‚ñŒû” (5) = ZERO) AND (‚v‚j‚sƒRƒ“ƒr“–‚¹‚ñŒû” (6) =            
000000     ZERO) AND (‚v‚j‚sƒRƒ“ƒr“–‚¹‚ñŒû” (7) = ZERO) AND (‚v‚j‚sƒRƒ“ƒr“–‚¹‚ñŒû” (8) =            
000000     ZERO) AND (‚v‚j‚sƒRƒ“ƒr“–‚¹‚ñŒû” (9) = ZERO) AND (‚v‚j‚sƒRƒ“ƒr“–‚¹‚ñŒû” (10) =           
000000     ZERO) AND (‚v‚j‚sƒRƒ“ƒr“–‚¹‚ñŒû” (11) = ZERO))GO TO CX00268.                   
000000     MOVE ‚v‚j‚sŒû” TO ‚v‚j‚`‚hŒû”                                                 
000000     MOVE 1 TO ‚h‚c‚w‰ñ†                                                      
000000     MOVE 1 TO ‚b‚m‚s‰ñ†                                                      
000000     MOVE 1 TO ‚h‚c‚wƒpƒlƒ‹                                                     
000000     MOVE 1 TO ‚b‚m‚sƒpƒlƒ‹ .                                                   
000000     IF NOT(‚v‚j‚sƒpƒlƒ‹” > 1)GO TO CX00269.                                    
000000 CX00270. IF NOT(‚b‚m‚sƒpƒlƒ‹ < 6 AND ‚b‚m‚sƒpƒlƒ‹ <= ‚v‚j‚sƒpƒlƒ‹”                         
000000     )GO TO CX00271.
           DISPLAY "CX00270" UPON CONSOLE
           DISPLAY "CX00270"  UPON CONSOLE                                                      
000000     IF NOT(‚v‚j‚s“–‚¹‚ñ“™‹‰ (‚b‚m‚sƒpƒlƒ‹) > ZERO)GO TO CX00272.                       
000000     MOVE ‚v‚j‚sŠJŽn‰ñ† TO ‚v‚j‚`‚hŽx•¥‰ñ† (‚h‚c‚wƒpƒlƒ‹)                                    
000000     MOVE ‚v‚j‚s“–‚¹‚ñ“™‹‰ (‚b‚m‚sƒpƒlƒ‹) TO ‚v‚j‚`‚hŽx•¥“™‹‰ (‚h‚c‚wƒpƒlƒ‹)                          
000000     COMPUTE ‚h‚c‚wƒpƒlƒ‹ = ‚h‚c‚wƒpƒlƒ‹ + 1 .                                        
000000 CX00272. 
           DISPLAY "CX00272" UPON CONSOLE
           DISPLAY "CX00272"  UPON CONSOLE                                                                 
000000     COMPUTE ‚b‚m‚sƒpƒlƒ‹ = ‚b‚m‚sƒpƒlƒ‹ + 1 .                                        
000000     GO TO CX00270.                                                       
000000 CX00271.                                                                 
           DISPLAY "CX00271" UPON CONSOLE
000000     GO TO CX00273.                                                       
000000 CX00269.                                                                 
           DISPLAY "CX00269" UPON CONSOLE
000000 CX00274. IF NOT(‚b‚m‚s‰ñ† < 6 AND ‚b‚m‚s‰ñ† <= ‚v‚j‚s“–‰Œp‘±‰ñ†”                        
000000     )GO TO CX00275.
           DISPLAY "CX00274" UPON CONSOLE
           DISPLAY "CX00274"  UPON CONSOLE                                                      
000000     IF NOT(‚v‚j‚s“–‚¹‚ñ“™‹‰ (‚b‚m‚s‰ñ†) > ZERO)GO TO CX00276.                        
000000     COMPUTE ‚v‚j‚`‚hŽx•¥‰ñ† (‚h‚c‚w‰ñ†) = ‚v‚j‚sŠJŽn‰ñ† + ‚b‚m‚s‰ñ† - 1                       
000000     MOVE ‚v‚j‚s“–‚¹‚ñ“™‹‰ (‚b‚m‚s‰ñ†) TO ‚v‚j‚`‚hŽx•¥“™‹‰ (‚h‚c‚w‰ñ†)                            
000000     COMPUTE ‚h‚c‚w‰ñ† = ‚h‚c‚w‰ñ† + 1 .                                          
000000 CX00276. 
           DISPLAY "CX00276" UPON CONSOLE
           DISPLAY "CX00276"  UPON CONSOLE                                                                
000000     COMPUTE ‚b‚m‚s‰ñ† = ‚b‚m‚s‰ñ† + 1 .                                          
000000     GO TO CX00274.                                                       
000000 CX00275.                                                                 
           DISPLAY "CX00275" UPON CONSOLE
000000 CX00273.                                                                 
           DISPLAY "CX00273" UPON CONSOLE
000000     GO TO CX00277.                                                       
000000 CX00268.
           DISPLAY "CX00268" UPON CONSOLE
           DISPLAY "CX00268"  UPON CONSOLE                                                                  
000000     MOVE 0 TO ‚v‚j‚`‚hŒû”                                                     
000000     MOVE ‚v‚j‚sŠJŽn‰ñ† TO ‚v‚j‚`‚hƒRƒ“ƒrŽx•¥‰ñ†                                          
000000     MOVE ‚v‚j‚sŠJŽn‰ñ† TO ‚v‚j‚`‚hŽx•¥‰ñ† (1)                                         
000000     MOVE ‚v‚j‚sƒRƒ“ƒr“–‚¹‚ñŒû” (1) TO ‚v‚j‚`‚hŒû”‚P                                      
000000     MOVE ‚v‚j‚sƒRƒ“ƒr“–‚¹‚ñŒû” (2) TO ‚v‚j‚`‚hŒû”‚Q                                      
000000     MOVE ‚v‚j‚sƒRƒ“ƒr“–‚¹‚ñŒû” (3) TO ‚v‚j|Œû”                                        
000000     MOVE ‚v‚j|Œû” TO ‚v‚j‚`‚hŒû”‚R                                                
000000     MOVE ‚v‚j‚sƒRƒ“ƒr“–‚¹‚ñŒû” (4) TO ‚v‚j|Œû”                                        
000000     MOVE ‚v‚j|Œû” TO ‚v‚j‚`‚hŒû”‚S                                                
000000     MOVE ‚v‚j‚sƒRƒ“ƒr“–‚¹‚ñŒû” (5) TO ‚v‚j|Œû”                                        
000000     MOVE ‚v‚j|Œû” TO ‚v‚j‚`‚hŒû”‚T                                                
000000     MOVE ‚v‚j‚sƒRƒ“ƒr“–‚¹‚ñŒû” (6) TO ‚v‚j|Œû”                                        
000000     MOVE ‚v‚j|Œû” TO ‚v‚j‚`‚hŒû”‚U                                                
000000     MOVE ‚v‚j‚sƒRƒ“ƒr“–‚¹‚ñŒû” (7) TO ‚v‚j|Œû”                                        
000000     MOVE ‚v‚j|Œû” TO ‚v‚j‚`‚hŒû”‚V                                                
000000     MOVE ‚v‚j‚sƒRƒ“ƒr“–‚¹‚ñŒû” (8) TO ‚v‚j|Œû”                                        
000000     MOVE ‚v‚j|Œû” TO ‚v‚j‚`‚hŒû”‚W                                                
000000     MOVE ‚v‚j‚sƒRƒ“ƒr“–‚¹‚ñŒû” (9) TO ‚v‚j|Œû”                                        
000000     MOVE ‚v‚j|Œû” TO ‚v‚j‚`‚hŒû”‚X                                                
000000     MOVE ‚v‚j‚sƒRƒ“ƒr“–‚¹‚ñŒû” (10) TO ‚v‚j|Œû”                                       
000000     MOVE ‚v‚j|Œû” TO ‚v‚j‚`‚hŒû”‚P‚O                                               
000000     MOVE ‚v‚j‚sƒRƒ“ƒr“–‚¹‚ñŒû” (11) TO ‚v‚j|Œû”                                       
000000     MOVE ‚v‚j|Œû” TO ‚v‚j‚`‚hŒû”‚P‚P .                                             
000000 CX00277.
           DISPLAY "CX00277" UPON CONSOLE
           DISPLAY "CX00277"  UPON CONSOLE                                                                  
000000       WRITE ‰ñ†•Ê¸ŽZ•\‚v‚j‚q .                                                  
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00278.                  
000000         DISPLAY "HBHUN370-86 SQWKAISS WRITE ERROR ",                     
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00278.                                                                 
           DISPLAY "CX00278" UPON CONSOLE
000000 CX00016. EXIT.                                                           
000000 WUBSWK-RTN .
           DISPLAY "WUBSWK-RTN"  UPON CONSOLE                                                             
000000     MOVE ‚v‚j‚s”„êƒR[ƒh TO ‚v‚t‚a‚r”„êƒR[ƒh                                           
000000     MOVE ‚v‚j‚sƒQ[ƒ€ƒ^ƒCƒv TO ‚v‚t‚a‚rƒQ[ƒ€ƒ^ƒCƒv                                         
000000     MOVE ‚v‚j‚sƒuƒƒbƒNƒR[ƒh TO ‚v‚t‚a‚rƒuƒƒbƒNƒR[ƒh                                       
000000       INITIALIZE ‚v‚t‚a‚r‹àŠz‘Ñ•Ê”„Žèî•ñ                                            
000000     MOVE 0 TO ‚v‚t‚a‚r”„ŽJŽè”—¿‹àŠz                                                
000000     MOVE 0 TO ‚v‚t‚a‚rŽè”—¿•â³Šz .                                               
000000     IF NOT(‚v‚j‚sƒŒƒR[ƒh‚h‚c = ”­Œ” AND ‚v‚j‚sŽæÁŽ¯•ÊƒR[ƒhã = 0)GO TO CX00279.             
000000     IF NOT(‚v”„ŽJ”„ŽJŽè”—¿ (‚h‚c‚wƒe[ƒuƒ‹”Ô† ‚b‚m‚s”Ì”„‚b ‚b‚m‚s‹àŠz‘Ñ) NOT = 0                    
000000     )GO TO CX00280.                                                      
000000     MOVE ‚v”„ŽJ”„ŽJŽè”—¿ (‚h‚c‚wƒe[ƒuƒ‹”Ô† ‚b‚m‚s”Ì”„‚b ‚b‚m‚s‹àŠz‘Ñ) TO ‚v‚j|”„ŽJŽè”—¿ .                
000000     GO TO CX00281.                                                       
000000 CX00280.
           DISPLAY "CX00280" UPON CONSOLE
           DISPLAY "CX00280"  UPON CONSOLE                                                                  
000000     COMPUTE ‚v‚j|”„ŽJŽè”—¿ = ‚v”„ŽJ”„ŽJŽè”—¿—¦ (‚h‚c‚wƒe[ƒuƒ‹”Ô† ‚b‚m‚s”Ì”„‚b ‚b‚m‚s‹àŠz‘Ñ) /             
000000     100 * ‚v‰ñ|’P‰¿ (‚h‚c‚wƒQ[ƒ€ ‚h‚c‚w‰ñ†) .                                         
000000 CX00281.
           DISPLAY "CX00281" UPON CONSOLE
           DISPLAY "CX00281"  UPON CONSOLE                                                                 
000000     COMPUTE ‚v‚t‚a‚r‹àŠz‘Ñ•Ê”„ŽJŽè”—¿ (‚b‚m‚s‹àŠz‘Ñ) = ‚v‚j|”„ŽJŽè”—¿ * ‚v‚j‚sƒpƒlƒ‹” *                
000000     ‚v‚j‚s“–‰Œp‘±‰ñ†” * ‚v‚j‚sŒû” * ‚v‚j|\ž’Ê‚è”                                        
000000     COMPUTE ‚v‚t‚a‚r”„ŽJŽè”—¿‹àŠz = ‚v‚j|”„ŽJŽè”—¿ * ‚v‚j‚sƒpƒlƒ‹” * ‚v‚j‚s“–‰Œp‘±‰ñ†” *              
000000     ‚v‚j‚sŒû” * ‚v‚j|\ž’Ê‚è” .                                                   
000000     IF NOT(‚b‚m‚s‹àŠz‘Ñ > 1)GO TO CX00282.                                     
000000     IF NOT(‚v”„ŽJ”„ŽJŽè”—¿ (‚h‚c‚wƒe[ƒuƒ‹”Ô† ‚b‚m‚s”Ì”„‚b 1) NOT = 0                         
000000     )GO TO CX00283.                                                      
000000     COMPUTE ‚v‚t‚a‚rŽè”—¿•â³Šz = (‚v”„ŽJ”„ŽJŽè”—¿ (‚h‚c‚wƒe[ƒuƒ‹”Ô† ‚b‚m‚s”Ì”„‚b 1) * ‚v‚j‚sŒû”          
000000     * ‚v‚j‚sƒpƒlƒ‹” * ‚v‚j‚s“–‰Œp‘±‰ñ†” * ‚v‚j|\ž’Ê‚è”) - (‚v‚j|”„ŽJŽè”—¿ * ‚v‚j‚sŒû” *             
000000     ‚v‚j‚sƒpƒlƒ‹” * ‚v‚j‚s“–‰Œp‘±‰ñ†” * ‚v‚j|\ž’Ê‚è”) .                                   
000000     GO TO CX00284.                                                       
000000 CX00283. 
           DISPLAY "CX00283" UPON CONSOLE
           DISPLAY "CX00283"  UPON CONSOLE                                                                
000000     COMPUTE ‚v‚t‚a‚rŽè”—¿•â³Šz = (‚v”„ŽJ”„ŽJŽè”—¿—¦ (‚h‚c‚wƒe[ƒuƒ‹”Ô† ‚b‚m‚s”Ì”„‚b 1) / 100           
000000     * ‚v‰ñ|’P‰¿ (‚h‚c‚wƒQ[ƒ€ ‚h‚c‚w‰ñ†) * ‚v‚j‚sŒû” * ‚v‚j‚sƒpƒlƒ‹” * ‚v‚j‚s“–‰Œp‘±‰ñ†” *              
000000     ‚v‚j|\ž’Ê‚è”) - (‚v‚j|”„ŽJŽè”—¿ * ‚v‚j‚sŒû” * ‚v‚j‚sƒpƒlƒ‹” * ‚v‚j‚s“–‰Œp‘±‰ñ†” *               
000000     ‚v‚j|\ž’Ê‚è”) .                                                          
000000 CX00284.                                                                 
           DISPLAY "CX00284" UPON CONSOLE
000000 CX00282.                                                                 
           DISPLAY "CX00282" UPON CONSOLE
000000 CX00279.                                                                 
           DISPLAY "CX00279" UPON CONSOLE
000000       WRITE ”„ê•Ê¸ŽZ•\‚v‚j‚q .                                                  
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00285.                  
000000         DISPLAY "HBHUN370-87 SQWURISS WRITE ERROR ",                     
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00285.                                                                 
           DISPLAY "CX00285" UPON CONSOLE
000000 CX00017. EXIT.                                                           
000000 KOSH-RTN .
           DISPLAY "KOSH-RTN"  UPON CONSOLE                                                                
000000       INITIALIZE  ‚ŠzŽx•¥î•ñ‚v‚j‚q                                              
000000     MOVE ‚v‚j‚sƒQ[ƒ€ƒ^ƒCƒv TO ‚j‚r‚l‚sƒQ[ƒ€ƒ^ƒCƒv                                         
000000     MOVE ‚v‚j‚sƒuƒƒbƒNƒR[ƒh TO ‚j‚r‚l‚sƒuƒƒbƒNƒR[ƒh .                                     
000000     IF NOT(‚v‚j‚s‹ŒŽ¯•ÊƒR[ƒh = LOW-VALUE)GO TO CX00286.                          
000000     MOVE ‚v‚j‚s”­Œ”Ž¯•ÊƒR[ƒhã TO ‚j‚r‚l‚s”­Œ”Ž¯•ÊƒR[ƒhã                                     
000000     MOVE ‚v‚j‚s”­Œ”Ž¯•ÊƒR[ƒh’† TO ‚j‚r‚l‚s”­Œ”Ž¯•ÊƒR[ƒh’†                                     
000000     MOVE ‚v‚j‚s”­Œ”Ž¯•ÊƒR[ƒh‰º TO ‚j‚r‚l‚s”­Œ”Ž¯•ÊƒR[ƒh‰º .                                   
000000     GO TO CX00287.                                                       
000000 CX00286.
           DISPLAY "CX00286" UPON CONSOLE
           DISPLAY "CX00286"  UPON CONSOLE                                                                  
000000     MOVE ‚v‚j‚s‹ŒŽ¯•ÊƒR[ƒhã TO ‚j‚r‚l‚s”­Œ”Ž¯•ÊƒR[ƒhã                                      
000000     MOVE ‚v‚j‚s‹ŒŽ¯•ÊƒR[ƒh‰º TO ‚j‚r‚l‚s”­Œ”Ž¯•ÊƒR[ƒh’†                                      
000000     MOVE SPACE TO ‚j‚r‚l‚s”­Œ”Ž¯•ÊƒR[ƒh (17:8) .                                   
000000 CX00287.
           DISPLAY "CX00287" UPON CONSOLE
           DISPLAY "CX00287"  UPON CONSOLE
      *20141028C³ŠJŽn                                                                 
000000*       @ZDTDTCMP( TICKETNO = ‚v‚j‚s”­Œ”Ž¯•ÊƒR[ƒh’†  ,                               
000000*                  BASEDATE = ‚t‚m‚j‚Pƒoƒbƒ`‹Æ–±“ú•t  ,                               
000000*                  YYYYMMDD = ‚v‚j|”­Œ”“ú );                                    
      *** ‰Šú‰» ***                                                  
           INITIALIZE     DTCP-PARAM.                                           
      *** ƒpƒ‰ƒ[ƒ^@ƒ`ƒFƒbƒN ***                                    
           IF  ‚v‚j‚s”­Œ”Ž¯•ÊƒR[ƒh’†  =  ZERO    THEN
                   DISPLAY "Ž¯•ÊƒR[ƒh‚ðŽw’è‚µ‚Ä‰º‚³‚¢"                           
                   STOP RUN.                                                         
           IF  ‚t‚m‚j‚Pƒoƒbƒ`‹Æ–±“ú•t  =  LOW-VALUE    THEN                                           
                   DISPLAY "Šî€“ú‚ðŽw’è‚µ‚Ä‰º‚³‚¢"                             
                   STOP RUN.                                                         
           IF  ‚v‚j|”­Œ”“ú  =  LOW-VALUE    THEN                                           
                   DISPLAY "¼—ï”NŒŽ“ú‚ÌŽó“ü€–Ú‚ðŽw’è‚µ‚Ä‰º‚³‚¢"               
                   STOP RUN.                                                         
      *** “ü—Íƒpƒ‰ƒ[ƒ^ˆÚ‘— ***
            MOVE ‚v‚j‚s”­Œ”Ž¯•ÊƒR[ƒh’† TO  DTCP-TICKETNO
            MOVE ‚t‚m‚j‚Pƒoƒbƒ`‹Æ–±“ú•t TO  DTCP-BASEDATE
      *** “ú•tŽZoƒAƒNƒZƒXƒ‚ƒWƒ…[ƒ‹ŒÄ‚Ño‚µ ***                        
            CALL "HSAAL040" USING DTCP-PARAM
      *** o—Íƒpƒ‰ƒ[ƒ^ˆÚ‘— ***
            MOVE DTCP-YYYYMMDD TO ‚v‚j|”­Œ”“ú
      *20141028C³I—¹
000000     MOVE ‚v‚j|”­Œ”“ú TO ‚j‚r‚l‚s”­Œ”“ú                                               
000000     MOVE ‚v‚j‚sŽæÁŽx•¥”„êƒR[ƒh TO ‚j‚r‚l‚sŽx•¥”„êƒR[ƒh                                     
      *20141028C³ŠJŽn
000000*       @ZDTDTCMP( TICKETNO = ‚v‚j‚sŽ¯•ÊƒR[ƒh’†      ,                             
000000*                  BASEDATE = ‚t‚m‚j‚Pƒoƒbƒ`‹Æ–±“ú•t  ,                               
000000*                  YYYYMMDD = ‚v‚j|Žx•¥“ú );                                    
      *** ‰Šú‰» ***                                                  
           INITIALIZE     DTCP-PARAM.                                           
      *** ƒpƒ‰ƒ[ƒ^@ƒ`ƒFƒbƒN ***                                    
           IF  ‚v‚j‚sŽ¯•ÊƒR[ƒh’†  =  ZERO    THEN
                   DISPLAY "Ž¯•ÊƒR[ƒh‚ðŽw’è‚µ‚Ä‰º‚³‚¢"                           
                   STOP RUN.                                                         
           IF  ‚t‚m‚j‚Pƒoƒbƒ`‹Æ–±“ú•t  =  LOW-VALUE    THEN                                           
                   DISPLAY "Šî€“ú‚ðŽw’è‚µ‚Ä‰º‚³‚¢"                             
                   STOP RUN.                                                         
           IF  ‚v‚j|Žx•¥“ú  =  LOW-VALUE    THEN                                           
                   DISPLAY "¼—ï”NŒŽ“ú‚ÌŽó“ü€–Ú‚ðŽw’è‚µ‚Ä‰º‚³‚¢"               
                   STOP RUN.                                                         
      *** “ü—Íƒpƒ‰ƒ[ƒ^ˆÚ‘— ***
            MOVE ‚v‚j‚sŽ¯•ÊƒR[ƒh’† TO  DTCP-TICKETNO
            MOVE ‚t‚m‚j‚Pƒoƒbƒ`‹Æ–±“ú•t TO  DTCP-BASEDATE
      *** “ú•tŽZoƒAƒNƒZƒXƒ‚ƒWƒ…[ƒ‹ŒÄ‚Ño‚µ ***                        
            CALL "HSAAL040" USING DTCP-PARAM
      *** o—Íƒpƒ‰ƒ[ƒ^ˆÚ‘— ***
            MOVE DTCP-YYYYMMDD TO ‚v‚j|Žx•¥“ú
      *20141028C³I—¹
000000     MOVE ‚v‚j|Žx•¥“ú TO ‚j‚r‚l‚sŽx•¥“ú                                               
000000     MOVE ‚v‚j‚s‹àŠz TO ‚j‚r‚l‚sŽx•¥‹àŠz .                                             
000000     IF NOT( (‚v‚j‚sƒRƒ“ƒr“–‚¹‚ñŒû” (1) = ZERO) AND (‚v‚j‚sƒRƒ“ƒr“–‚¹‚ñŒû” (2) =              
000000     ZERO) AND (‚v‚j‚sƒRƒ“ƒr“–‚¹‚ñŒû” (3) = ZERO) AND (‚v‚j‚sƒRƒ“ƒr“–‚¹‚ñŒû” (4) =            
000000     ZERO) AND (‚v‚j‚sƒRƒ“ƒr“–‚¹‚ñŒû” (5) = ZERO) AND (‚v‚j‚sƒRƒ“ƒr“–‚¹‚ñŒû” (6) =            
000000     ZERO) AND (‚v‚j‚sƒRƒ“ƒr“–‚¹‚ñŒû” (7) = ZERO) AND (‚v‚j‚sƒRƒ“ƒr“–‚¹‚ñŒû” (8) =            
000000     ZERO) AND (‚v‚j‚sƒRƒ“ƒr“–‚¹‚ñŒû” (9) = ZERO) AND (‚v‚j‚sƒRƒ“ƒr“–‚¹‚ñŒû” (10) =           
000000     ZERO) AND (‚v‚j‚sƒRƒ“ƒr“–‚¹‚ñŒû” (11) = ZERO))GO TO CX00288.                   
000000     MOVE ‚v‚j‚sŒû” TO ‚j‚r‚l‚sŒû”                                                 
000000     MOVE 1 TO ‚b‚m‚s“–‚¹‚ñ                                                     
000000     MOVE 1 TO ‚h‚c‚w“–‚¹‚ñ .                                                   
000000 CX00289. IF NOT(‚b‚m‚s“–‚¹‚ñ <= 5)GO TO CX00290.
           DISPLAY "CX00289" UPON CONSOLE
           DISPLAY "CX00289"  UPON CONSOLE                               
000000     IF NOT(‚v‚j‚s“–‰Œp‘±‰ñ†” > 1)GO TO CX00291.                                 
000000     IF NOT(‚v‚j‚s“–‚¹‚ñ“™‹‰ (‚b‚m‚s“–‚¹‚ñ) NOT = ZERO)GO TO CX00292.                   
000000     COMPUTE ‚j‚r‚l‚s‰ñ† (‚h‚c‚w“–‚¹‚ñ) = ‚v‚j‚sŠJŽn‰ñ† + ‚b‚m‚s“–‚¹‚ñ - 1 .                     
000000 CX00292.                                                                 
           DISPLAY "CX00292" UPON CONSOLE
000000     GO TO CX00293.                                                       
000000 CX00291. 
           DISPLAY "CX00291" UPON CONSOLE
           DISPLAY "CX00291"  UPON CONSOLE                                                                 
000000     IF NOT(‚v‚j‚s“–‚¹‚ñ“™‹‰ (‚b‚m‚s“–‚¹‚ñ) NOT = ZERO)GO TO CX00294.                   
000000     MOVE ‚v‚j‚sŠJŽn‰ñ† TO ‚j‚r‚l‚s‰ñ† (‚h‚c‚w“–‚¹‚ñ) .                                    
000000 CX00294.                                                                 
           DISPLAY "CX00294" UPON CONSOLE
000000 CX00293. 
           DISPLAY "CX00293" UPON CONSOLE
           DISPLAY "CX00293"  UPON CONSOLE                                                                
000000     IF NOT(‚v‚j‚s“–‚¹‚ñ“™‹‰ (‚b‚m‚s“–‚¹‚ñ) NOT = ZERO)GO TO CX00295.                   
000000     IF NOT(‚v‚j‚sƒQ[ƒ€Ží•Ê = ƒiƒ“ƒo[ƒY)GO TO CX00296.                               
000000     MOVE ‚v‚j‚s“–‚¹‚ñ“™‹‰ (‚b‚m‚s“–‚¹‚ñ) TO ‚v‚j|“™‹‰                                      
000000     MOVE ‚k‚m‚j‚`Žx•¥“™‹‰–¼Ì (‚v‚j|“™‹‰) TO ‚j‚r‚l‚s“™‹‰ (‚h‚c‚w“–‚¹‚ñ) .                         
000000     GO TO CX00297.                                                       
000000 CX00296.
           DISPLAY "CX00296" UPON CONSOLE
           DISPLAY "CX00296"  UPON CONSOLE                                                                  
000000     MOVE ‚v‚j‚s“–‚¹‚ñ“™‹‰ (‚b‚m‚s“–‚¹‚ñ) TO ‚j‚r‚l‚s“™‹‰ (‚h‚c‚w“–‚¹‚ñ) .                          
000000 CX00297. 
           DISPLAY "CX00297" UPON CONSOLE
           DISPLAY "CX00297"  UPON CONSOLE                                                                 
000000     COMPUTE ‚h‚c‚w“–‚¹‚ñ = ‚h‚c‚w“–‚¹‚ñ + 1 .                                        
000000 CX00295.
           DISPLAY "CX00295" UPON CONSOLE
           DISPLAY "CX00295"  UPON CONSOLE                                                                   
000000     COMPUTE ‚b‚m‚s“–‚¹‚ñ = ‚b‚m‚s“–‚¹‚ñ + 1 .                                        
000000     GO TO CX00289.                                                       
000000 CX00290.                                                                 
           DISPLAY "CX00290" UPON CONSOLE
000000     GO TO CX00298.                                                       
000000 CX00288.  
           DISPLAY "CX00288" UPON CONSOLE
           DISPLAY "CX00288"  UPON CONSOLE                                                                
000000     MOVE 0 TO ‚j‚r‚l‚sŒû”                                                     
000000     MOVE ‚v‚j‚sŠJŽn‰ñ† TO ‚j‚r‚l‚sƒRƒ“ƒr‰ñ†                                            
000000     MOVE ‚v‚j‚sƒRƒ“ƒr“–‚¹‚ñŒû” (1) TO ‚j‚r‚l‚s“™‹‰•ÊŒû”‚P                                   
000000     MOVE ‚v‚j‚sƒRƒ“ƒr“–‚¹‚ñŒû” (2) TO ‚j‚r‚l‚s“™‹‰•ÊŒû”‚Q                                   
000000     MOVE ‚v‚j‚sƒRƒ“ƒr“–‚¹‚ñŒû” (3) TO ‚j‚r‚l‚s“™‹‰•ÊŒû”‚R                                   
000000     MOVE ‚v‚j‚sƒRƒ“ƒr“–‚¹‚ñŒû” (4) TO ‚j‚r‚l‚s“™‹‰•ÊŒû”‚S                                   
000000     MOVE ‚v‚j‚sƒRƒ“ƒr“–‚¹‚ñŒû” (5) TO ‚j‚r‚l‚s“™‹‰•ÊŒû”‚T                                   
000000     MOVE ‚v‚j‚sƒRƒ“ƒr“–‚¹‚ñŒû” (6) TO ‚j‚r‚l‚s“™‹‰•ÊŒû”‚U                                   
000000     MOVE ‚v‚j‚sƒRƒ“ƒr“–‚¹‚ñŒû” (7) TO ‚j‚r‚l‚s“™‹‰•ÊŒû”‚V                                   
000000     MOVE ‚v‚j‚sƒRƒ“ƒr“–‚¹‚ñŒû” (8) TO ‚j‚r‚l‚s“™‹‰•ÊŒû”‚W                                   
000000     MOVE ‚v‚j‚sƒRƒ“ƒr“–‚¹‚ñŒû” (9) TO ‚j‚r‚l‚s“™‹‰•ÊŒû”‚X .                                 
000000 CX00298.
           DISPLAY "CX00298" UPON CONSOLE
           DISPLAY "CX00298"  UPON CONSOLE                                                                 
000000       WRITE ‚ŠzŽx•¥î•ñ‚v‚j‚q .                                                  
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00299.                  
000000         DISPLAY "HBHUN370-88 SQWKGKSH WRITE ERROR ",                     
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00299.                                                                 
           DISPLAY "CX00299" UPON CONSOLE
000000 CX00018. EXIT.                                                           
000000 SFKEN-RTN . 
           DISPLAY "SFKEN-RTN"  UPON CONSOLE                                                               
000000     MOVE ‚v‚j‚sŽ¯•ÊƒR[ƒhã TO ‚v‚j|‚s‚qŽ¯•ÊƒR[ƒhã‚WŒ…                                      
000000     MOVE ‚v‚j‚sŽ¯•ÊƒR[ƒh’† TO ‚v‚j|‚s‚qŽ¯•ÊƒR[ƒh’†‚WŒ…                                      
000000     MOVE ‚v‚j‚sŽ¯•ÊƒR[ƒh‰º TO ‚v‚j|‚s‚qŽ¯•ÊƒR[ƒh‰º‚WŒ…                                      
000000     MOVE 1 TO ‚b‚m‚s“d•¶’Ê”ÔŽæÁ .                                                
000000 CX00300. IF NOT(‚b‚m‚s“d•¶’Ê”ÔŽæÁ <= ‚váŠQ|“d•¶’Ê”ÔŽæÁŒ”)GO TO CX00301. 
           DISPLAY "CX00300" UPON CONSOLE
           DISPLAY "CX00300"  UPON CONSOLE                 
000000     IF NOT( (‚váŠQ|”„êƒR[ƒh (‚b‚m‚s“d•¶’Ê”ÔŽæÁ) = ‚v‚j‚s”„êƒR[ƒh) AND (‚váŠQ|“d•¶’Ê”Ô (           
000000     ‚b‚m‚s“d•¶’Ê”ÔŽæÁ) = ‚v‚j‚s“d•¶’Ê”Ô))GO TO CX00302.                                 
000000     MOVE “d•¶’Ê”ÔŽæÁ TO ‚e‚k‚fáŠQŽæÁŽí•Ê                                             
000000     PERFORM GHT2-RTN THRU CX00020                                        
000000     GO TO CX00019.                                                       
000000 CX00302. 
           DISPLAY "CX00302" UPON CONSOLE
           DISPLAY "CX00302"  UPON CONSOLE                                                                
000000     COMPUTE ‚b‚m‚s“d•¶’Ê”ÔŽæÁ = ‚b‚m‚s“d•¶’Ê”ÔŽæÁ + 1 .                                  
000000     GO TO CX00300.                                                       
000000 CX00301.  
           DISPLAY "CX00301" UPON CONSOLE
           DISPLAY "CX00301"  UPON CONSOLE                                                               
000000     MOVE 1 TO ‚b‚m‚sŽ¯•ÊƒR[ƒhŽæÁ .                                               
000000 CX00303. IF NOT(‚b‚m‚sŽ¯•ÊƒR[ƒhŽæÁ <= ‚váŠQ|Ž¯•ÊƒR[ƒhŽæÁŒ”)GO TO CX00304.               
           DISPLAY "CX00303" UPON CONSOLE
000000     IF NOT(‚váŠQ|Ž¯•ÊƒR[ƒh (‚b‚m‚sŽ¯•ÊƒR[ƒhŽæÁ) (17:8) = ZERO)GO TO CX00305.           
           DISPLAY "CX00303"  UPON CONSOLE 
000000     MOVE ‚váŠQ|Ž¯•ÊƒR[ƒh (‚b‚m‚sŽ¯•ÊƒR[ƒhŽæÁ) (1:8) TO ‚v‚j|‚P‚UŽ¯•ÊƒR[ƒhã                     
000000     MOVE ‚váŠQ|Ž¯•ÊƒR[ƒh (‚b‚m‚sŽ¯•ÊƒR[ƒhŽæÁ) (9:8) TO ‚v‚j|‚P‚UŽ¯•ÊƒR[ƒh‰º                     
      *20141028C³ŠJŽn
000000*           @ZMSSRLCV(MODE = 2 ,                                           
000000*                     SBCDBEFORE  = PTR_SBCDBEFORE  ,                      
000000*                     SBCDAFTER   = PTR_SBCDAFTER  ) .                     
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
      *20141028C³I—¹
000000     IF NOT(‚v‚j|‚Q‚SŽ¯•ÊƒR[ƒh = ‚v‚j|‚s‚qŽ¯•ÊƒR[ƒh)GO TO CX00306.                        
000000     MOVE Ž¯•ÊƒR[ƒhŽæÁ TO ‚e‚k‚fáŠQŽæÁŽí•Ê                                            
000000     PERFORM GHT2-RTN THRU CX00020                                        
000000     GO TO CX00019.                                                       
000000 CX00306.                                                                 
           DISPLAY "CX00306" UPON CONSOLE
000000     GO TO CX00307.                                                       
000000 CX00305. 
           DISPLAY "CX00305" UPON CONSOLE
           DISPLAY "CX00305"  UPON CONSOLE                                                                 
000000     IF NOT(‚váŠQ|Ž¯•ÊƒR[ƒh (‚b‚m‚sŽ¯•ÊƒR[ƒhŽæÁ) = ‚v‚j|‚s‚qŽ¯•ÊƒR[ƒh)GO TO CX00308.            
000000     MOVE Ž¯•ÊƒR[ƒhŽæÁ TO ‚e‚k‚fáŠQŽæÁŽí•Ê                                            
000000     PERFORM GHT2-RTN THRU CX00020                                        
000000     GO TO CX00019.                                                       
000000 CX00308.                                                                 
           DISPLAY "CX00308" UPON CONSOLE
000000 CX00307.
           DISPLAY "CX00307" UPON CONSOLE
           DISPLAY "CX00307"  UPON CONSOLE                                                                 
000000     COMPUTE ‚b‚m‚sŽ¯•ÊƒR[ƒhŽæÁ = ‚b‚m‚sŽ¯•ÊƒR[ƒhŽæÁ + 1 .                                
000000     GO TO CX00303.                                                       
000000 CX00304.                                                                 
           DISPLAY "CX00304" UPON CONSOLE
000000 CX00019. EXIT.                                                           
000000 GHT2-RTN .
           DISPLAY "GHT2-RTN"  UPON CONSOLE                                                               
000000       INITIALIZE  ŠO”Ì—páŠQŽæÁ•s‰Â‚v‚j‚q .                                         
000000     IF NOT(‚e‚k‚fáŠQŽæÁŽí•Ê = “d•¶’Ê”ÔŽæÁ)GO TO CX00309.                             
000000     IF NOT(‚v‚j‚s‹ŒŽ¯•ÊƒR[ƒh = LOW-VALUE)GO TO CX00310.                          
000000     MOVE ‚v‚j|‚s‚qŽ¯•ÊƒR[ƒh TO ‚v‚f‚s‚eŽ¯•ÊƒR[ƒh .                                       
000000     GO TO CX00311.                                                       
000000 CX00310.
           DISPLAY "CX00310" UPON CONSOLE
           DISPLAY "CX00310"  UPON CONSOLE                                                                  
000000     MOVE ‚v‚j‚s‹ŒŽ¯•ÊƒR[ƒhã TO ‚v‚f‚s‚eŽ¯•ÊƒR[ƒhã                                        
000000     MOVE ‚v‚j‚s‹ŒŽ¯•ÊƒR[ƒh‰º TO ‚v‚f‚s‚eŽ¯•ÊƒR[ƒh’†                                        
000000     MOVE ZERO TO ‚v‚f‚s‚eŽ¯•ÊƒR[ƒh‰º .                                            
000000 CX00311.                                                                 
           DISPLAY "CX00311" UPON CONSOLE
000000     GO TO CX00312.                                                       
000000 CX00309.
           DISPLAY "CX00309" UPON CONSOLE
           DISPLAY "CX00309"  UPON CONSOLE                                                                 
000000     MOVE ‚váŠQ|Ž¯•ÊƒR[ƒh (‚b‚m‚sŽ¯•ÊƒR[ƒhŽæÁ) TO ‚v‚f‚s‚eŽ¯•ÊƒR[ƒh .                           
000000 CX00312.
           DISPLAY "CX00312" UPON CONSOLE
           DISPLAY "CX00312"  UPON CONSOLE                                                                 
000000     MOVE ‚v‚j‚sƒQ[ƒ€ƒ^ƒCƒv TO ‚v‚f‚s‚eƒQ[ƒ€ƒ^ƒCƒv                                         
000000     MOVE ‚v‚j‚sƒuƒƒbƒNƒR[ƒh TO ‚v‚f‚s‚eƒuƒƒbƒNƒR[ƒh                                       
000000     MOVE ‚v‚j‚sŠJŽn‰ñ† TO ‚v‚f‚s‚e‰ñ†                                               
000000     MOVE ‚v‚j‚s”„êƒR[ƒh TO ‚v‚f‚s‚e”„êƒR[ƒh                                           
000000     MOVE ‚v‚j‚sŽæˆøŽž TO ‚v‚f‚s‚eŽæˆøŽž                                             
000000     MOVE ‚v‚j‚s“d•¶’Ê”Ô TO ‚v‚f‚s‚e“d•¶’Ê”Ô                                             
000000     MOVE ‚v‚j‚sƒpƒlƒ‹” TO ‚v‚f‚s‚eƒpƒlƒ‹”                                             
000000     MOVE ‚v‚j‚sŒû” TO ‚v‚f‚s‚eŒû”                                                 
000000     MOVE ‚v‚j‚s‹àŠz TO ‚v‚f‚s‚e‹àŠz                                                 
000000     MOVE 1 TO ‚h‚c‚wƒpƒlƒ‹ .                                                   
000000 CX00313. IF NOT(‚h‚c‚wƒpƒlƒ‹ <= ‚v‚j‚sƒpƒlƒ‹”)GO TO CX00314.
           DISPLAY "CX00313" UPON CONSOLE
           DISPLAY "CX00313"  UPON CONSOLE                          
000000     IF NOT(‚v‚j‚sƒQ[ƒ€Ží•Ê = ƒiƒ“ƒo[ƒY)GO TO CX00315.                               
000000     MOVE SPACE TO ‚v‚j|\ž”Žš•ÏŠ· .                                            
000000     IF NOT(‚v‚j‚s•ªŽq = •ªŽqƒiƒ“ƒo[ƒY‚R)GO TO CX00316.                               
000000     IF NOT(‚v‚j‚s\žƒ^ƒCƒv (‚h‚c‚wƒpƒlƒ‹) = 1 OR 2 OR 3)GO TO CX00317.                
000000     MOVE ‚v‚j‚s\ž”Žš (‚h‚c‚wƒpƒlƒ‹) TO ‚v‚j|\ž”Žš•ÏŠ·‚m‚R‚R .                              
000000     GO TO CX00318.                                                       
000000 CX00317.
           DISPLAY "CX00317" UPON CONSOLE
           DISPLAY "CX00317"  UPON CONSOLE                                                                 
000000     MOVE ‚v‚j‚s\ž”Žš (‚h‚c‚wƒpƒlƒ‹) TO ‚v‚j|\ž”Žš•ÏŠ·‚m‚R‚Q .                              
000000 CX00318.                                                                 
           DISPLAY "CX00318" UPON CONSOLE
000000     GO TO CX00319.                                                       
000000 CX00316.    
           DISPLAY "CX00316" UPON CONSOLE
           DISPLAY "CX00316"  UPON CONSOLE                                                              
000000     IF NOT(‚v‚j‚s•ªŽq = •ªŽqƒiƒ“ƒo[ƒY‚S)GO TO CX00320.                               
000000     MOVE SPACE TO ‚v‚j|\ž”Žš•ÏŠ· .                                            
000000     IF NOT(‚v‚j‚s\žƒ^ƒCƒv (‚h‚c‚wƒpƒlƒ‹) = 1 OR 2 OR 3 OR 6)GO TO CX00321.           
000000     MOVE ‚v‚j‚s\ž”Žš (‚h‚c‚wƒpƒlƒ‹) TO ‚v‚j|\ž”Žš•ÏŠ·‚m‚S‚S .                              
000000     GO TO CX00322.                                                       
000000 CX00321.
           DISPLAY "CX00321" UPON CONSOLE
           DISPLAY "CX00321"  UPON CONSOLE                                                                  
000000     MOVE ‚v‚j‚s\ž”Žš (‚h‚c‚wƒpƒlƒ‹) TO ‚v‚j|\ž”Žš•ÏŠ·‚m‚S‚Q .                              
000000 CX00322.                                                                 
           DISPLAY "CX00322" UPON CONSOLE
000000 CX00320.                                                                 
           DISPLAY "CX00320" UPON CONSOLE
000000 CX00319.                                                                 
           DISPLAY "CX00319" UPON CONSOLE
000000     GO TO CX00323.                                                       
000000 CX00315.                                                                 
           DISPLAY "CX00315" UPON CONSOLE
000000     IF NOT(‚v‚j‚sƒQ[ƒ€Ží•Ê = ƒƒg)GO TO CX00324.  
           DISPLAY "CX00315"  UPON CONSOLE                                 
      *20141028C³ŠJŽn
000000*             @ZTSIDXCG( BUNSI  =  ‚v‚j‚s•ªŽq                 ,                 
000000*                      BUNBO    =  ‚v‚j‚s•ª•ê                 ,                 
000000*                      IDXCODE  =  0                          ,            
000000*                      BITCODE  =  2                          ,            
000000*                      NUMCODE  =  1                          ,            
000000*                      TYPE     =  ‚v‚j‚s\žƒ^ƒCƒv(‚h‚c‚wƒpƒlƒ‹),                       
000000*                      CGIDX    =  ‚v‚j‚s\ž”Žš(‚h‚c‚wƒpƒlƒ‹) ,                       
000000*                      CGNUM    =  ‚v‚j|\ž”Žš•ÏŠ·);                             
      *** ƒpƒ‰ƒ[ƒ^@ƒ`ƒFƒbƒN ***                                  
           IF  ‚v‚j‚s•ªŽq  =  LOW-VALUE    THEN                                              
                   DISPLAY "•ªŽq‚ðŽw’è‚µ‚Ä‰º‚³‚¢"                               
                   STOP RUN.                                                         
           IF  ‚v‚j‚s•ª•ê  =  LOW-VALUE    THEN                                              
                   DISPLAY "•ª•ê‚ðŽw’è‚µ‚Ä‰º‚³‚¢"                               
                   STOP RUN.
           IF  ‚v‚j‚s\žƒ^ƒCƒv(‚h‚c‚wƒpƒlƒ‹)  =  LOW-VALUE    THEN                                               
                   DISPLAY "\žƒ^ƒCƒv‚ðŽw’è‚µ‚Ä‰º‚³‚¢"                         
                   STOP RUN.                                                         
           IF  ‚v‚j‚s\ž”Žš(‚h‚c‚wƒpƒlƒ‹)  =  ZERO    THEN                                      
                   DISPLAY "•ÏŠ·ƒCƒ“ƒfƒNƒX‚ðŽw’è‚µ‚Ä‰º‚³‚¢"             
                   STOP RUN.                                                                                              
           IF  ‚v‚j|\ž”Žš•ÏŠ·  =  LOW-VALUE    THEN                                      
                   DISPLAY "•ÏŠ·\ž”Žš‚ðŽw’è‚µ‚Ä‰º‚³‚¢"               
                   STOP RUN.
      *** “ü—Íƒpƒ‰ƒ[ƒ^ˆÚ‘— ***                                     
           MOVE ‚v‚j‚s•ªŽq   TO IDXC-BUNSI
           MOVE ‚v‚j‚s•ª•ê   TO IDXC-BUNBO
           MOVE 0 TO IDXC-IDXCODE
           MOVE 2 TO IDXC-BITCODE
           MOVE 1 TO IDXC-NUMCODE
           MOVE ‚v‚j‚s\žƒ^ƒCƒv(‚h‚c‚wƒpƒlƒ‹)    TO IDXC-TYPE
           MOVE 2 TO IDXC-SEQ                                           
           MOVE ‚v‚j‚s\ž”Žš(‚h‚c‚wƒpƒlƒ‹) TO IDXC-CGIDX
      *** ƒƒg‚h‚c‚w•ÏŠ·ƒ‚ƒWƒ…[ƒ‹ŒÄ‚Ño‚µ ***                         
           CALL "HRATS010" USING  IDXC-PARAM
      *** o—Íƒpƒ‰ƒ[ƒ^ˆÚ‘— ***                                       
           MOVE IDXC-CGNUM TO ‚v‚j|\ž”Žš•ÏŠ·.
      *20141028C³I—¹
000000     MOVE 1 TO ‚b‚m‚s\ž”Žš .                                                  
000000 CX00325. IF NOT(‚b‚m‚s\ž”Žš <= 12)GO TO CX00326.
           DISPLAY "CX00325" UPON CONSOLE
           DISPLAY "CX00325"  UPON CONSOLE                               
000000     IF NOT(‚v‚j|\ž”Žš•ÏŠ·‚k‚s (‚b‚m‚s\ž”Žš) = "00")GO TO CX00327.                   
000000     MOVE SPACE TO ‚v‚j|\ž”Žš•ÏŠ·‚k‚s (‚b‚m‚s\ž”Žš) .                                
000000 CX00327. 
           DISPLAY "CX00327" UPON CONSOLE
           DISPLAY "CX00327"  UPON CONSOLE                                                                
000000     COMPUTE ‚b‚m‚s\ž”Žš = ‚b‚m‚s\ž”Žš + 1 .                                      
000000     GO TO CX00325.                                                       
000000 CX00326.                                                                 
           DISPLAY "CX00326" UPON CONSOLE
000000 CX00324.                                                                 
           DISPLAY "CX00324" UPON CONSOLE
000000 CX00323.  
           DISPLAY "CX00323" UPON CONSOLE
           DISPLAY "CX00323"  UPON CONSOLE                                                                  
000000     MOVE ‚v‚j|\ž”Žš•ÏŠ· TO ‚v‚f‚s‚e\ž”Žš (‚h‚c‚wƒpƒlƒ‹)                                  
000000     MOVE ‚v‚j‚s\žƒ^ƒCƒv (‚h‚c‚wƒpƒlƒ‹) TO ‚v‚f‚s‚e\žƒ^ƒCƒv (‚h‚c‚wƒpƒlƒ‹)                         
000000     MOVE ‚v‚j‚sƒNƒCƒbƒNƒsƒbƒN‹æ•ª (‚h‚c‚wƒpƒlƒ‹) TO ‚v‚f‚s‚eƒNƒCƒbƒNƒsƒbƒN (‚h‚c‚wƒpƒlƒ‹)                   
000000     COMPUTE ‚h‚c‚wƒpƒlƒ‹ = ‚h‚c‚wƒpƒlƒ‹ + 1 .                                        
000000     GO TO CX00313.                                                       
000000 CX00314.    
           DISPLAY "CX00314" UPON CONSOLE
           DISPLAY "CX00314"  UPON CONSOLE                                                               
000000     IF NOT(‚e‚k‚fáŠQŽæÁŽí•Ê = “d•¶’Ê”ÔŽæÁ)GO TO CX00328.                             
000000     MOVE "1" TO ‚v‚f‚s‚e——RƒR[ƒh .                                              
000000     GO TO CX00329.                                                       
000000 CX00328. IF NOT(‚e‚k‚fáŠQŽæÁŽí•Ê = Ž¯•ÊƒR[ƒhŽæÁ)GO TO CX00330.    
           DISPLAY "CX00328" UPON CONSOLE
           DISPLAY "CX00328"  UPON CONSOLE                      
000000     IF NOT(‚váŠQ|ŽæÁ‹æ•ª (‚b‚m‚sŽ¯•ÊƒR[ƒhŽæÁ) = "3")GO TO CX00331.                    
000000     MOVE "2" TO ‚v‚f‚s‚e——RƒR[ƒh .                                              
000000     GO TO CX00332.                                                       
000000 CX00331. 
           DISPLAY "CX00331" UPON CONSOLE
           DISPLAY "CX00331"  UPON CONSOLE                                                                  
000000     MOVE "1" TO ‚v‚f‚s‚e——RƒR[ƒh .                                              
000000 CX00332.                                                                 
           DISPLAY "CX00332" UPON CONSOLE
000000 CX00330.                                                                 
           DISPLAY "CX00330" UPON CONSOLE
000000 CX00329. 
           DISPLAY "CX00329" UPON CONSOLE
           DISPLAY "CX00329"  UPON CONSOLE                                                                 
000000       WRITE ŠO”Ì—páŠQŽæÁ•s‰Â‚v‚j‚q .                                               
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00333.                  
000000         DISPLAY "HBHUN370-89 SQWGTOFK WRITE ERROR ",                     
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00333.                                                                 
           DISPLAY "CX00333" UPON CONSOLE
000000 CX00020. EXIT.                                                           
000000 IDX-GET-RTN . 
           DISPLAY "IDX-GET-RTN"  UPON CONSOLE                                                             
000000     MOVE ZERO TO ‚h‚c‚wƒQ[ƒ€                                                  
000000     MOVE ‚n‚e‚e TO ‚e‚k‚fƒQ[ƒ€ .                                                 
000000 CX00334. IF NOT( (‚h‚c‚wƒQ[ƒ€ < 30) AND (‚e‚k‚fƒQ[ƒ€ = ‚n‚e‚e)                        
000000     )GO TO CX00335.  
           DISPLAY "CX00334" UPON CONSOLE
           DISPLAY "CX00334"  UPON CONSOLE                                                     
000000     COMPUTE ‚h‚c‚wƒQ[ƒ€ = ‚h‚c‚wƒQ[ƒ€ + 1 .                                        
000000     IF NOT( (‚v‰ñ|ƒQ[ƒ€ƒ^ƒCƒv (‚h‚c‚wƒQ[ƒ€) = ‚v‚j‚sƒQ[ƒ€ƒ^ƒCƒv) AND (‚v‰ñ|ƒuƒƒbƒNƒR[ƒh (           
000000     ‚h‚c‚wƒQ[ƒ€) = ‚v‚j‚sƒuƒƒbƒNƒR[ƒh))GO TO CX00336.                                 
000000     MOVE ‚n‚m TO ‚e‚k‚fƒQ[ƒ€ .                                                  
000000 CX00336.                                                                 
           DISPLAY "CX00336" UPON CONSOLE
000000     GO TO CX00334.                                                       
000000 CX00335.  
           DISPLAY "CX00335" UPON CONSOLE
           DISPLAY "CX00335"  UPON CONSOLE                                                               
000000     IF NOT(‚e‚k‚fƒQ[ƒ€ = ‚n‚m)GO TO CX00337.                                    
000000     MOVE ZERO TO ‚h‚c‚w‰ñ†                                                   
000000     MOVE ‚n‚e‚e TO ‚e‚k‚f‰ñ† .                                                  
000000 CX00338. IF NOT( (‚h‚c‚w‰ñ† < 21) AND (‚e‚k‚f‰ñ† = ‚n‚e‚e))GO TO CX00339.           
           DISPLAY "CX00338" UPON CONSOLE
           DISPLAY "CX00338"  UPON CONSOLE   
000000     COMPUTE ‚h‚c‚w‰ñ† = ‚h‚c‚w‰ñ† + 1 .                                          
000000     IF NOT( (‚v‰ñ|‰ñ† (‚h‚c‚wƒQ[ƒ€ ‚h‚c‚w‰ñ†) = ‚v‚j‚sŠJŽn‰ñ†))GO TO CX00340.              
000000     MOVE ‚n‚m TO ‚e‚k‚f‰ñ† .                                                   
000000 CX00340.                                                                 
           DISPLAY "CX00340" UPON CONSOLE
000000     GO TO CX00338.                                                       
000000 CX00339.                                                                 
           DISPLAY "CX00339" UPON CONSOLE
000000 CX00337.                                                                 
           DISPLAY "CX00337" UPON CONSOLE
000000     IF NOT( (‚e‚k‚fƒQ[ƒ€ = ‚n‚e‚e) OR (‚e‚k‚f‰ñ† = ‚n‚e‚e))GO TO CX00341.               
000000         DISPLAY "ŠY“–ƒQ[ƒ€‚Ü‚½‚Í‰ñ†‚È‚µ"                                           
000000         STOP RUN .                                                     
000000 CX00341.    
           DISPLAY "CX00341" UPON CONSOLE
           DISPLAY "CX00341"  UPON CONSOLE                                                                
000000     MOVE ‚h‚c‚w‰ñ† TO ‚h‚c‚w‰ñ†‚Q .                                               
000000 CX00021. EXIT.                                                           
000000 URISABAKI-GET-RTN .    
           DISPLAY "URISABAKI-GET-RTN"  UPON CONSOLE                                                   
000000     MOVE ‚v‰ñ|”„ŽJŽè”—¿‚s‚a‚k”Ô† (‚h‚c‚wƒQ[ƒ€ ‚h‚c‚w‰ñ†) TO ‚h‚c‚wƒe[ƒuƒ‹”Ô†                       
000000     MOVE 1 TO ‚b‚m‚s‘åŽè‹ÆŽÒ                                                    
000000     MOVE 1 TO ‚b‚m‚sƒQ[ƒ€                                                     
000000     MOVE 1 TO ‚b‚m‚s‰ñ†                                                      
000000     MOVE ‚n‚e‚e TO ‚e‚k‚f‘åŽè‹ÆŽÒ                                                  
000000     MOVE ‚n‚e‚e TO ‚e‚k‚fƒQ[ƒ€                                                   
000000     MOVE ‚n‚e‚e TO ‚e‚k‚f‰ñ†                                                    
000000     MOVE ‚v‚j‚s”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh TO ‚b‚m‚s”Ì”„‚b .                                        
000000     IF NOT(‚v‚j|”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh = 01)GO TO CX00342.                              
000000 CX00343. IF NOT( (‚b‚m‚sƒQ[ƒ€ < 30) AND (‚e‚k‚fƒQ[ƒ€ = ‚n‚e‚e)                        
000000     )GO TO CX00344. 
           DISPLAY "CX00343" UPON CONSOLE
           DISPLAY "CX00343"  UPON CONSOLE                                                     
000000     IF NOT( (‚v|”Ì‚b•ÊƒQ[ƒ€ƒ^ƒCƒv (‚b‚m‚s”Ì”„‚b ‚b‚m‚sƒQ[ƒ€) = ‚v‚j‚sƒQ[ƒ€ƒ^ƒCƒv) AND (              
000000     ‚v|”Ì‚b•ÊƒuƒƒbƒNƒR[ƒh (‚b‚m‚s”Ì”„‚b ‚b‚m‚sƒQ[ƒ€) = ‚v‚j‚sƒuƒƒbƒNƒR[ƒh))GO TO CX00345.            
000000     MOVE ‚n‚m TO ‚e‚k‚fƒQ[ƒ€ .                                                  
000000 CX00345.  
           DISPLAY "CX00345" UPON CONSOLE
           DISPLAY "CX00345"  UPON CONSOLE                                                                
000000     IF NOT(‚e‚k‚fƒQ[ƒ€ = ‚n‚e‚e)GO TO CX00346.                                   
000000     COMPUTE ‚b‚m‚sƒQ[ƒ€ = ‚b‚m‚sƒQ[ƒ€ + 1 .                                        
000000 CX00346.                                                                 
           DISPLAY "CX00346" UPON CONSOLE
000000     GO TO CX00343.                                                       
000000 CX00344.                                                                 
           DISPLAY "CX00344" UPON CONSOLE
000000     IF NOT(‚e‚k‚fƒQ[ƒ€ = ‚n‚m)GO TO CX00347.                                    
000000 CX00348. IF NOT( (‚b‚m‚s‰ñ† < 21) AND (‚e‚k‚f‰ñ† = ‚n‚e‚e))GO TO CX00349.           
           DISPLAY "CX00348" UPON CONSOLE
000000     IF NOT( (‚v|”Ì‚b•Ê‰ñ† (‚b‚m‚s”Ì”„‚b ‚b‚m‚sƒQ[ƒ€ ‚b‚m‚s‰ñ†) = ‚v‚j‚sŠJŽn‰ñ†)                    
000000     )GO TO CX00350.    
           DISPLAY "CX00348"  UPON CONSOLE                                                   
000000     MOVE ‚v|”Ì‚b•Ê‹àŠz‘Ñ”Ô† (‚b‚m‚s”Ì”„‚b ‚b‚m‚sƒQ[ƒ€ ‚b‚m‚s‰ñ†) TO ‚b‚m‚s‹àŠz‘Ñ                      
000000     MOVE ‚n‚m TO ‚e‚k‚f‰ñ† .                                                   
000000 CX00350.        
           DISPLAY "CX00350" UPON CONSOLE
           DISPLAY "CX00350"  UPON CONSOLE                                                            
000000     IF NOT(‚e‚k‚f‰ñ† = ‚n‚e‚e)GO TO CX00351.                                    
000000     COMPUTE ‚b‚m‚s‰ñ† = ‚b‚m‚s‰ñ† + 1 .                                          
000000 CX00351.                                                                 
           DISPLAY "CX00351" UPON CONSOLE
000000     GO TO CX00348.                                                       
000000 CX00349.                                                                 
           DISPLAY "CX00349" UPON CONSOLE
000000 CX00347.                                                                 
           DISPLAY "CX00347" UPON CONSOLE
000000     IF NOT( (‚e‚k‚fƒQ[ƒ€ = ‚n‚e‚e) OR (‚e‚k‚f‰ñ† = ‚n‚e‚e))GO TO CX00352.               
000000     MOVE 1 TO ‚b‚m‚s‹àŠz‘Ñ .                                                   
000000 CX00352.                                                                 
           DISPLAY "CX00352" UPON CONSOLE
000000 CX00342.     
           DISPLAY "CX00342" UPON CONSOLE
           DISPLAY "CX00342"  UPON CONSOLE                                                                   
000000     IF NOT(‚v‚j|”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh = 02)GO TO CX00353.                              
000000 CX00354. IF NOT( (‚b‚m‚s‘åŽè‹ÆŽÒ < 999) AND (‚e‚k‚f‘åŽè‹ÆŽÒ = ‚n‚e‚e)                     
000000     )GO TO CX00355.                                                      
           DISPLAY "CX00354" UPON CONSOLE
000000     IF NOT( (‚v|‹@ŠÖ•Ê‘åŽè‹ÆŽÒ‚b‚c‚O‚Q (‚b‚m‚s‘åŽè‹ÆŽÒ) = ‚f‚x‚r‚`‘åŽè‹ÆŽÒƒR[ƒh)                      
000000     )GO TO CX00356.                                                      
000000     MOVE ‚n‚m TO ‚e‚k‚f‘åŽè‹ÆŽÒ .                                                 
000000 CX00356.     
           DISPLAY "CX00356" UPON CONSOLE
           DISPLAY "CX00356"  UPON CONSOLE                                                               
000000     IF NOT(‚e‚k‚f‘åŽè‹ÆŽÒ = ‚n‚e‚e)GO TO CX00357.                                  
000000     COMPUTE ‚b‚m‚s‘åŽè‹ÆŽÒ = ‚b‚m‚s‘åŽè‹ÆŽÒ + 1 .                                      
000000 CX00357.                                                                 
           DISPLAY "CX00357" UPON CONSOLE
000000     GO TO CX00354.                                                       
000000 CX00355.                                                                 
           DISPLAY "CX00355" UPON CONSOLE
000000     IF NOT(‚e‚k‚f‘åŽè‹ÆŽÒ = ‚n‚m)GO TO CX00358.                                   
000000 CX00359. IF NOT( (‚b‚m‚sƒQ[ƒ€ < 30) AND (‚e‚k‚fƒQ[ƒ€ = ‚n‚e‚e)                        
000000     )GO TO CX00360.    
           DISPLAY "CX00359" UPON CONSOLE
           DISPLAY "CX00359"  UPON CONSOLE                                                    
000000     IF NOT( (‚v|‹@ŠÖ•ÊƒQ[ƒ€ƒ^ƒCƒv‚O‚Q (‚b‚m‚s‘åŽè‹ÆŽÒ ‚b‚m‚sƒQ[ƒ€) = ‚v‚j‚sƒQ[ƒ€ƒ^ƒCƒv) AND (           
000000     ‚v|‹@ŠÖ•ÊƒuƒƒbƒN‚b‚c‚O‚Q (‚b‚m‚s‘åŽè‹ÆŽÒ ‚b‚m‚sƒQ[ƒ€) = ‚v‚j‚sƒuƒƒbƒNƒR[ƒh)                         
000000     )GO TO CX00361.                                                      
000000     MOVE ‚n‚m TO ‚e‚k‚fƒQ[ƒ€ .                                                  
000000 CX00361.  
           DISPLAY "CX00361" UPON CONSOLE
           DISPLAY "CX00361"  UPON CONSOLE                                                                 
000000     IF NOT(‚e‚k‚fƒQ[ƒ€ = ‚n‚e‚e)GO TO CX00362.                                   
000000     COMPUTE ‚b‚m‚sƒQ[ƒ€ = ‚b‚m‚sƒQ[ƒ€ + 1 .                                        
000000 CX00362.                                                                 
           DISPLAY "CX00362" UPON CONSOLE
000000     GO TO CX00359.                                                       
000000 CX00360.                                                                 
           DISPLAY "CX00360" UPON CONSOLE
000000 CX00358. 
           DISPLAY "CX00358" UPON CONSOLE
           DISPLAY "CX00358"  UPON CONSOLE                                                                  
000000     IF NOT(‚e‚k‚fƒQ[ƒ€ = ‚n‚m)GO TO CX00363.                                    
000000 CX00364. IF NOT( (‚b‚m‚s‰ñ† < 21) AND (‚e‚k‚f‰ñ† = ‚n‚e‚e))GO TO CX00365.           
           DISPLAY "CX00364" UPON CONSOLE
000000     IF NOT(‚v|‹@ŠÖ•Ê‰ñ†‚O‚Q (‚b‚m‚s‘åŽè‹ÆŽÒ ‚b‚m‚sƒQ[ƒ€ ‚b‚m‚s‰ñ†) = ‚v‚j‚sŠJŽn‰ñ†                    
000000     )GO TO CX00366.                                                      
000000     MOVE ‚v|‹@ŠÖ•Ê‹àŠz‘Ñ”Ô†‚O‚Q (‚b‚m‚s‘åŽè‹ÆŽÒ ‚b‚m‚sƒQ[ƒ€ ‚b‚m‚s‰ñ†) TO ‚b‚m‚s‹àŠz‘Ñ                   
000000     MOVE ‚n‚m TO ‚e‚k‚f‰ñ† .                                                   
000000 CX00366.       
           DISPLAY "CX00366" UPON CONSOLE
           DISPLAY "CX00366"  UPON CONSOLE                                                            
000000     IF NOT(‚e‚k‚f‰ñ† = ‚n‚e‚e)GO TO CX00367.                                    
000000     COMPUTE ‚b‚m‚s‰ñ† = ‚b‚m‚s‰ñ† + 1 .                                          
000000 CX00367.                                                                 
           DISPLAY "CX00367" UPON CONSOLE
000000     GO TO CX00364.                                                       
000000 CX00365.                                                                 
           DISPLAY "CX00365" UPON CONSOLE
000000 CX00363.      
           DISPLAY "CX00363" UPON CONSOLE
           DISPLAY "CX00363"  UPON CONSOLE                                                              
000000     IF NOT( (‚e‚k‚f‘åŽè‹ÆŽÒ = ‚n‚e‚e) OR (‚e‚k‚fƒQ[ƒ€ = ‚n‚e‚e) OR (‚e‚k‚f‰ñ† = ‚n‚e‚e)           
000000     )GO TO CX00368.                                                      
000000     MOVE 1 TO ‚b‚m‚s‹àŠz‘Ñ .                                                   
000000 CX00368.                                                                 
           DISPLAY "CX00368" UPON CONSOLE
000000 CX00353.                                                                 
           DISPLAY "CX00353" UPON CONSOLE
000000 CX00022. EXIT.                                                           
000000 WK-WRITE-RTN .
           DISPLAY "WK-WRITE-RTN"  UPON CONSOLE                                                              
000000     MOVE ‚v‚j|¸¸ TO ”„ã‹à¸¸‚v‚j‚q                                               
000000       WRITE ”„ã‹à¸¸‚v‚j‚q .                                                   
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00369.                  
000000         DISPLAY "HBHUN370-90 SQWURISE WRITE ERROR ",                     
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00369.              
           DISPLAY "CX00369" UPON CONSOLE
           DISPLAY "CX00369"  UPON CONSOLE                                                    
000000     MOVE 1 TO ‚h‚c‚wƒQ[ƒ€                                                     
000000       INITIALIZE  ’c‘Ì•Ê¸ŽZ•\‚v‚j‚q .                                            
000000 CX00370. IF NOT(‚h‚c‚wƒQ[ƒ€ < 31 AND ‚v’c¸ƒQ[ƒ€ƒ^ƒCƒv (‚h‚c‚wƒQ[ƒ€) NOT = ZERO            
000000     )GO TO CX00371. 
           DISPLAY "CX00370" UPON CONSOLE
           DISPLAY "CX00370"  UPON CONSOLE                                                      
000000     MOVE ‚v’c¸ƒQ[ƒ€ƒ^ƒCƒv (‚h‚c‚wƒQ[ƒ€) TO ‚v‚c‚m‚rƒQ[ƒ€ƒ^ƒCƒv                                
000000     MOVE ‚v’c¸ƒuƒƒbƒNƒR[ƒh (‚h‚c‚wƒQ[ƒ€) TO ‚v‚c‚m‚rƒuƒƒbƒNƒR[ƒh                              
000000     MOVE 1 TO ‚h‚c‚w‰ñ† .                                                    
000000 CX00372. IF NOT(‚h‚c‚w‰ñ† < 22 AND ‚v’c¸‰ñ† (‚h‚c‚wƒQ[ƒ€ ‚h‚c‚w‰ñ†) NOT = ZERO           
000000     )GO TO CX00373. 
           DISPLAY "CX00372" UPON CONSOLE
           DISPLAY "CX00372"  UPON CONSOLE                                                      
000000     MOVE ‚v’c¸‰ñ† (‚h‚c‚wƒQ[ƒ€ ‚h‚c‚w‰ñ†) TO ‚v‚c‚m‚r‰ñ†                                  
000000     MOVE 1 TO ‚h‚c‚w’c‘Ì .                                                    
000000 CX00374. IF NOT(‚h‚c‚w’c‘Ì < 81)GO TO CX00375.                                
           DISPLAY "CX00374" UPON CONSOLE
000000     IF NOT(‚v’c¸’c‘Ì•Ê”„ã (‚h‚c‚wƒQ[ƒ€ ‚h‚c‚w‰ñ† ‚h‚c‚w’c‘Ì) NOT = ZERO                      
000000     )GO TO CX00376. 
           DISPLAY "CX00374"  UPON CONSOLE                                                     
000000     MOVE ‚h‚c‚w’c‘Ì TO ‚v‚c‚m‚r’c‘ÌƒR[ƒh                                              
000000     MOVE ‚v’c¸’c‘Ì•Ê”„ã (‚h‚c‚wƒQ[ƒ€ ‚h‚c‚w‰ñ† ‚h‚c‚w’c‘Ì) TO ‚v‚c‚m‚r”„ã‹àŠz                       
000000     MOVE ‚v’c¸”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh (‚h‚c‚wƒQ[ƒ€ ‚h‚c‚w‰ñ† ‚h‚c‚w’c‘Ì) TO ‚v‚c‚m‚r”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh              
000000               WRITE ’c‘Ì•Ê¸ŽZ•\‚v‚j‚q .                                          
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00377.                  
000000                 DISPLAY "HBHUN370-91 SQWDNSSN WRITE ERROR ",             
000000                          STS-FILE1 " " STS-FILE2                         
000000                 STOP RUN .                                             
000000 CX00377.                                                                 
           DISPLAY "CX00377" UPON CONSOLE
000000 CX00376.                                                                  
           DISPLAY "CX00376" UPON CONSOLE
000000     COMPUTE ‚h‚c‚w’c‘Ì = ‚h‚c‚w’c‘Ì + 1 .                                          
000000     GO TO CX00374.                                                       
000000 CX00375.    
           DISPLAY "CX00375" UPON CONSOLE
           DISPLAY "CX00375"  UPON CONSOLE                                                             
000000     COMPUTE ‚h‚c‚w‰ñ† = ‚h‚c‚w‰ñ† + 1 .                                          
000000     GO TO CX00372.                                                       
000000 CX00373.           
           DISPLAY "CX00373" UPON CONSOLE
           DISPLAY "CX00373"  UPON CONSOLE                                                        
000000     COMPUTE ‚h‚c‚wƒQ[ƒ€ = ‚h‚c‚wƒQ[ƒ€ + 1 .                                        
000000     GO TO CX00370.                                                       
000000 CX00371.     
           DISPLAY "CX00371" UPON CONSOLE
           DISPLAY "CX00371"  UPON CONSOLE                                                               
000000     MOVE 1 TO ‚h‚c‚wƒQ[ƒ€                                                     
000000       INITIALIZE  ”„ŽJŽè”—¿‚v‚j‚q .
      *20141028C³ŠJŽn                                             
000000* CX00378. IF NOT( (‚h‚c‚wƒQ[ƒ€ < 31) AND (‚v”„ƒƒQ[ƒ€ƒ^ƒCƒv (‚h‚c‚wƒQ[ƒ€) NOT =             
       CX00378. IF NOT( (‚v‚j|”„ŽJŽè”—¿‚v‚j‚s‚a‚k‰ñ” < 11) AND (‚v”„ƒƒQ[ƒ€ƒ^ƒCƒv (‚h‚c‚wƒQ[ƒ€) NOT =             
      *20141028C³I—¹
000000     ZERO))GO TO CX00379.  
           DISPLAY "CX00378"  UPON CONSOLE                                                  
000000     MOVE ‚v”„ƒƒQ[ƒ€ƒ^ƒCƒv (‚h‚c‚wƒQ[ƒ€) TO ‚v‚t‚s‚dƒQ[ƒ€ƒ^ƒCƒv                                
000000     MOVE ‚v”„ƒƒuƒƒbƒNƒR[ƒh (‚h‚c‚wƒQ[ƒ€) TO ‚v‚t‚s‚dƒuƒƒbƒNƒR[ƒh                              
000000     MOVE 1 TO ‚h‚c‚w‰ñ† .                                                    
000000 CX00380. IF NOT( (‚h‚c‚w‰ñ† < 22) AND (‚v”„ƒ‰ñ† (‚h‚c‚wƒQ[ƒ€ ‚h‚c‚w‰ñ†) NOT =            
000000     ZERO))GO TO CX00381.
           DISPLAY "CX00380" UPON CONSOLE
           DISPLAY "CX00380"  UPON CONSOLE                                                 
000000     MOVE ‚v”„ƒ‰ñ† (‚h‚c‚wƒQ[ƒ€ ‚h‚c‚w‰ñ†) TO ‚v‚t‚s‚d‰ñ†                                  
000000     MOVE 1 TO ‚h‚c‚w”Ì”„‚b .                                                   
000000 CX00382. IF NOT(‚h‚c‚w”Ì”„‚b <= ‚r‚f‚i‚P”Ì”„‚b””Œ³’l)GO TO CX00383.                     
           DISPLAY "CX00382" UPON CONSOLE
000000     IF NOT(‚v”„ƒ”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh (‚h‚c‚wƒQ[ƒ€ ‚h‚c‚w‰ñ† ‚h‚c‚w”Ì”„‚b) NOT = ZERO                 
000000     )GO TO CX00384. 
           DISPLAY "CX00382"  UPON CONSOLE                                                       
000000     MOVE ‚v”„ƒ”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh (‚h‚c‚wƒQ[ƒ€ ‚h‚c‚w‰ñ† ‚h‚c‚w”Ì”„‚b) TO ‚v‚t‚s‚d”Ì”„ƒ`ƒƒƒlƒ‹ƒR[ƒh             
000000     MOVE ‚v”„ƒ”„ã‹àŠz (‚h‚c‚wƒQ[ƒ€ ‚h‚c‚w‰ñ† ‚h‚c‚w”Ì”„‚b) TO ‚v‚t‚s‚d”„ã‹àŠz                       
000000     MOVE ‚v”„ƒŽè”—¿•â³Šz (‚h‚c‚wƒQ[ƒ€ ‚h‚c‚w‰ñ† ‚h‚c‚w”Ì”„‚b) TO ‚v‚t‚s‚dŽè”—¿•â³Šz                   
000000     MOVE 1 TO ‚h‚c‚w‹àŠz‘Ñ .                                                   
000000 CX00385. IF NOT(‚h‚c‚w‹àŠz‘Ñ < 6)GO TO CX00386. 
           DISPLAY "CX00385" UPON CONSOLE
           DISPLAY "CX00385"  UPON CONSOLE                               
000000     MOVE ‚v”„ƒ—ÝŒvŽè”—¿ (‚h‚c‚wƒQ[ƒ€ ‚h‚c‚w‰ñ† ‚h‚c‚w”Ì”„‚b ‚h‚c‚w‹àŠz‘Ñ) TO ‚v‚t‚s‚d‹àŠz‘Ñ•Ê”„ŽJŽè”—¿          
000000     (‚h‚c‚w‹àŠz‘Ñ)                                                             
000000     COMPUTE ‚h‚c‚w‹àŠz‘Ñ = ‚h‚c‚w‹àŠz‘Ñ + 1 .                                        
000000     GO TO CX00385.                                                       
000000 CX00386.    
           DISPLAY "CX00386" UPON CONSOLE
           DISPLAY "CX00386"  UPON CONSOLE                                                             
000000               WRITE ”„ŽJŽè”—¿‚v‚j‚q INVALID CONTINUE .                          
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00387.                  
000000                 DISPLAY "HBHUN370-92 VIWURTES WRITE ERROR ",             
000000                          STS-FILE1 " " STS-FILE2                         
000000                 STOP RUN .                                             
000000 CX00387.                                                                 
           DISPLAY "CX00387" UPON CONSOLE
000000 CX00384.          
           DISPLAY "CX00384" UPON CONSOLE
           DISPLAY "CX00384"  UPON CONSOLE                                                          
000000     COMPUTE ‚h‚c‚w”Ì”„‚b = ‚h‚c‚w”Ì”„‚b + 1 .                                        
000000     GO TO CX00382.                                                       
000000 CX00383.     
           DISPLAY "CX00383" UPON CONSOLE
           DISPLAY "CX00383"  UPON CONSOLE                                                                
000000     COMPUTE ‚h‚c‚w‰ñ† = ‚h‚c‚w‰ñ† + 1 .                                          
000000     GO TO CX00380.                                                       
000000 CX00381. 
           DISPLAY "CX00381" UPON CONSOLE
           DISPLAY "CX00381"  UPON CONSOLE                                                                    
000000     COMPUTE ‚h‚c‚wƒQ[ƒ€ = ‚h‚c‚wƒQ[ƒ€ + 1 .                                        
      *20141028’Ç‰ÁŠJŽn
           IF ‚h‚c‚wƒQ[ƒ€ > 4 
               MOVE 1 TO ‚h‚c‚wƒQ[ƒ€
               INITIALIZE ‚v‚j|”„ŽJŽè”—¿‚v‚j‚s‚a‚k
               COMPUTE ‚v‚j|”„ŽJŽè”—¿‚v‚j‚s‚a‚k‰ñ” = ‚v‚j|”„ŽJŽè”—¿‚v‚j‚s‚a‚k‰ñ” + 1
           ELSE
      *20141028’Ç‰ÁI—¹
000000     GO TO CX00378.                                                       
000000 CX00379. 
           DISPLAY "CX00379" UPON CONSOLE
           DISPLAY "CX00379"  UPON CONSOLE                                                                
000000 CX00023. EXIT.                                                           
000000 ERWK-RTN .   
           DISPLAY "ERWK-RTN"  UPON CONSOLE                                                             
000000     MOVE ‚v‚j‚sŒÂ•Êî•ñ TO ‚d‚q‚v‚jŒÂ•Êî•ñ                                             
000000       WRITE ƒGƒ‰[‚v‚j‚q .                                                     
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00388.                  
000000         DISPLAY "HBHUN370-93 SQTRONRI WRITE ERROR ",                     
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00388.                                                                 
           DISPLAY "CX00388" UPON CONSOLE
000000 CX00024. EXIT.                                                           
000000 ERR-REC-RTN .                                                            
000000     IF NOT(‚e‚k‚fƒGƒ‰[ = ‚n‚m)GO TO CX00389.                                    
      *20141027C³ŠJŽn
000000*         @ZCTMSGOT(MSGID = #BH201                                         
000000*                   PROGID = HBHUN370); .                                  
      *20141027C³I—¹
000000 CX00389.                                                                 
000000 CX00025. EXIT.                                                           

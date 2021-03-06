000000 IDENTIFICATION DIVISION.                                                 
000000 PROGRAM-ID. HBHUN370 .                                                   
000000 DATE-WRITTEN.                                                            
000000 DATE-COMPILED.                                                           
000000 ENVIRONMENT DIVISION.                                                    
000000 CONFIGURATION SECTION.                                                   
000000 SOURCE-COMPUTER.        ACOS.                                            
000000 OBJECT-COMPUTER.        ACOS.                                            
      *20141027修正開始
000000* SPECIAL-NAMES.                                                           
000000*          ITG002    IS    SPCHNL.                                         
      *20141027修正開始
000000 INPUT-OUTPUT SECTION.                                                     
000000 FILE-CONTROL.                                                            
000000     SELECT  トランザクションＦ−Ａ                                                  
000000*             ASSIGN               VRTRNSA                                 
                   ASSIGN               VRTRNSA-MSD
000000*             ORGANIZATION         VSAS  RELATIVE                          
                   ORGANIZATION         IS  RELATIVE
000000             ACCESS               DYNAMIC                                 
000000             RELATIVE             TR-A-RKEY                               
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT  トランザクションＦ−Ｂ                                                  
000000*             ASSIGN               VRTRNSB                                 
000000*             ORGANIZATION         VSAS  RELATIVE                          
000000             ASSIGN               VRTRNSB-MSD                                 
000000             ORGANIZATION         IS  RELATIVE                          
000000             ACCESS               DYNAMIC                                 
000000             RELATIVE             TR-B-RKEY                               
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT 運用管理Ｆ                                                         
000000*                  ASSIGN             VRUNYKAN                             
000000*                  ORGANIZATION       VSAS  RELATIVE                       
000000                  ASSIGN             VRUNYKAN-MSD                             
000000                  ORGANIZATION       IS  RELATIVE                       
000000                  ACCESS             RANDOM                               
000000                  RELATIVE           ＲＫ−運用管理Ｆ                             
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT 売場Ｆ                                                           
000000*                  ASSIGN             VIURIBA                              
000000*                  ORGANIZATION       VSAS INDEXED                         
000000                  ASSIGN             VIURIBA-MSD                              
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       RANDOM                               
000000                  RECORD  KEY        ＵＲＢＡ売場コード                            
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT  ゲームＦ                                                         
000000*             ASSIGN               VIGAME                                  
000000*             ORGANIZATION         VSAS  INDEXED                           
000000             ASSIGN               VIGAME-MSD                                  
000000             ORGANIZATION         IS  INDEXED                           
000000             ACCESS               DYNAMIC                                 
000000             RECORD               ＧＡＭＥゲームＩＤ                               
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT  ゲームルールＦ                                                      
000000*             ASSIGN               VIGMRULE                                
000000*             ORGANIZATION         VSAS INDEXED                            
000000             ASSIGN               VIGMRULE-MSD                                
000000             ORGANIZATION         IS INDEXED                            
000000             ACCESS               RANDOM                                  
000000             RECORD               ＧＭＲ２レコードキー                          
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT  ゲーム状況Ｆ                                                       
000000*             ASSIGN               VIGAMJYO                                
000000*             ORGANIZATION         VSAS  INDEXED                           
000000             ASSIGN               VIGAMJYO-MSD                                
000000             ORGANIZATION         IS  INDEXED                           
000000             ACCESS               RANDOM                                  
000000             RECORD               ＧＭＪＹゲームＩＤ                               
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT 業者Ｆ                                                           
000000*                  ASSIGN             VIGYOSYA                             
000000*                  ORGANIZATION       VSAS INDEXED                         
000000                  ASSIGN             VIGYOSYA-MSD                             
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       RANDOM                               
000000                  RECORD  KEY        ＧＹＳＡ業者コードＸ                            
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT 金融機関手数料変更Ｇ情報Ｆ                                                 
000000*                  ASSIGN             VITSGMKY                             
000000*                  ORGANIZATION       VSAS INDEXED                         
000000                  ASSIGN             VITSGMKY-MSD                             
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       DYNAMIC                              
000000                  RECORD  KEY        ＴＳＧＭレコードキー                           
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT 販売Ｃ別手数料変更Ｇ情報Ｆ                                                 
000000*                  ASSIGN             VITSGMCH                             
000000*                  ORGANIZATION       VSAS INDEXED                         
000000                  ASSIGN             VITSGMCH-MSD                             
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       DYNAMIC                              
000000                  RECORD  KEY        ＨＣＨＴレコードキー                           
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT 販売チャネルＦ                                                       
000000*                  ASSIGN             VICHNNEL                             
000000*                  ORGANIZATION       VSAS INDEXED                         
000000                  ASSIGN             VICHNNEL-MSD                             
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       DYNAMIC                              
000000                  RECORD  KEY        ＣＨＮＬ販売チャネルコードＸ                        
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT 売捌手数料Ｆ                                                        
000000*                  ASSIGN             VIURTESU                             
000000*                  ORGANIZATION       VSAS INDEXED                         
000000                  ASSIGN             VIURTESU-MSD                             
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       DYNAMIC                              
000000                  RECORD  KEY        ＵＲＴＳレコードキー                           
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT 売捌手数料ＷＫＦ                                                      
000000*                  ASSIGN             VIWURTES                             
000000*                  ORGANIZATION       VSAS INDEXED                         
000000                  ASSIGN             VIWURTES-MSD                             
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       RANDOM                               
000000                  RECORD  KEY        ＷＵＴＥレコードキー                           
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT  ＳＧ情報管理Ｆ                                                      
000000*             ASSIGN               VRSGJYO                                 
000000*             ORGANIZATION         VSAS  RELATIVE                          
000000             ASSIGN               VRSGJYO-MSD                                 
000000             ORGANIZATION         IS  RELATIVE                          
000000             ACCESS               RANDOM                                  
000000             RELATIVE             SGF-KEY                                 
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT  外部販売用特殊取引Ｆ−Ａ                                                 
000000*             ASSIGN               VRTKSYGA                                
000000*             ORGANIZATION         VSAS  RELATIVE                          
000000             ASSIGN               VRTKSYGA-MSD                                
000000             ORGANIZATION         IS  RELATIVE                          
000000             ACCESS               DYNAMIC                                 
000000             RELATIVE             ＲＫ−特殊取引Ａ                                
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT  外部販売用特殊取引Ｆ−Ｂ                                                 
000000*             ASSIGN               VRTKSYGB                                
000000*             ORGANIZATION         VSAS  RELATIVE                          
000000             ASSIGN               VRTKSYGB-MSD                                
000000             ORGANIZATION         IS  RELATIVE                          
000000             ACCESS               DYNAMIC                                 
000000             RELATIVE             ＲＫ−特殊取引Ｂ                                
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT 発売ゲームＦ−Ａ                                                      
000000*                  ASSIGN             VIHATGMA                             
000000*                  ORGANIZATION       VSAS INDEXED                         
000000                  ASSIGN             VIHATGMA-MSD                             
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       DYNAMIC                              
000000                  RECORD  KEY        ＨＴＧＡゲームＩＤ                            
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT 発売ゲームＦ−Ｂ                                                      
000000*                  ASSIGN             VIHATGMB                             
000000*                  ORGANIZATION       VSAS INDEXED                         
000000                  ASSIGN             VIHATGMB-MSD                             
000000                  ORGANIZATION       IS INDEXED                         
000000                  ACCESS  MODE       DYNAMIC                              
000000                  RECORD  KEY        ＨＴＧＢゲームＩＤ                            
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT 高額支払情報ＷＫＦ                                                     
000000*                  ASSIGN             SQWKGKSH                             
000000                  ASSIGN             SQWKGKSH-MSD                             
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT 売上金精査ＷＫＦ                                                      
000000*                  ASSIGN             SQWURISE                             
000000                  ASSIGN             SQWURISE-MSD                             
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT 売場別売上ＷＫＦ                                                      
000000*                  ASSIGN             SQWURIUR                             
000000                  ASSIGN             SQWURIUR-MSD                             
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT 売場時間帯別売上ＷＫＦ                                                   
000000*                  ASSIGN             SQWJIKAN                             
000000                  ASSIGN             SQWJIKAN-MSD                             
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT 購入日別申込状況ＷＫＦ                                                   
000000*                  ASSIGN             SQWKNYJY                             
000000                  ASSIGN             SQWKNYJY-MSD                             
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT 売場別精算表ＷＫＦ                                                     
000000*                  ASSIGN             SQWURISS                             
000000                  ASSIGN             SQWURISS-MSD                             
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT 回号別精算表ＷＫＦ                                                     
000000*                  ASSIGN             SQWKAISS                             
000000                  ASSIGN             SQWKAISS-MSD                             
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT 団体別精算表ＷＫＦ                                                     
000000*                  ASSIGN             SQWDNSSN                             
000000                  ASSIGN             SQWDNSSN-MSD                             
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT 外部販売用売上情報ＷＫＦ                                                  
000000*                  ASSIGN             SQWGURAG                             
000000                  ASSIGN             SQWGURAG-MSD                             
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT 外販用障害取消不可ＷＫＦ                                                  
000000*                  ASSIGN             SQWGTOFK                             
000000                  ASSIGN             SQWGTOFK-MSD                             
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
000000     SELECT エラーＷＫＦ                                                        
000000*                  ASSIGN             SQWERROR                             
000000                  ASSIGN             SQWERROR-MSD                             
000000*             FILE STATUS          STS-FILE1  STS-FILE2.                   
000000             FILE STATUS          STS-FILE1.                   
      *20141028追加開始
000000     SELECT 変数販売チャネルコードＦ                                                        
000000                  ASSIGN             NEWFILE-MSD                             
000000             FILE STATUS          STS-FILE1.                   
      *20141028追加終了
000000 DATA DIVISION.                                                           
000000 FILE SECTION.                                                            
000000 FD  トランザクションＦ−Ａ                                                          
000000     LABEL  RECORD  STANDARD                                            
      *20141027追加開始
           VALUE  OF IDENTIFICATION IS "VRTRNSA".
      *20141027追加終了
000000 01  トランザクションＲ−Ａ.                                                         
000000   03  ＴＲＮＡレコード格納件数     USAGE   COMP-1.                                   
000000   03  ＴＲＮＡＦＥＰ識別子         PIC     9(2).                                   
000000   03  ＴＲＮＡパス番号             PIC     9(2).                                 
000000   03  ＴＲＮＡパス別電文日付       USAGE   COMP-2.                                  
000000   03  ＴＲＮＡパス別電文通番       USAGE   COMP-2.                                  
000000   03  ＴＲＮＡ個別情報             OCCURS  63.                                   
000000     COPY CFTRNS REPLACING                                                
000000              //ＴＲＮＳ//  BY  //ＴＲＮＡ// .                                    
000000 FD  トランザクションＦ−Ｂ                                                          
000000     LABEL  RECORD  STANDARD                                             
      *20141027追加開始
           VALUE  OF IDENTIFICATION IS "VRTRNSB".
      *20141027追加終了
000000 01  トランザクションＲ−Ｂ.                                                         
000000   03  ＴＲＮＢレコード格納件数     USAGE   COMP-1.                                   
000000   03  ＴＲＮＢＦＥＰ識別子         PIC     9(2).                                   
000000   03  ＴＲＮＢパス番号             PIC     9(2).                                 
000000   03  ＴＲＮＢパス別電文日付       USAGE   COMP-2.                                  
000000   03  ＴＲＮＢパス別電文通番       USAGE   COMP-2.                                  
000000   03  ＴＲＮＢ個別情報             OCCURS  63.                                   
000000     COPY CFTRNS REPLACING                                                
000000              //ＴＲＮＳ//  BY  //ＴＲＮＢ// .                                    
000000 FD  運用管理Ｆ
      *20141027修正開始                                                          
000000*     RECORD  VARYING  IN  SIZE
           LABEL RECORD STANDARD
      *20141027修正終了                                           
      *20141027追加開始
           VALUE  OF IDENTIFICATION IS "VRUNYKAN".
      *20141027追加終了
000000* 01  運用管理Ｒ２.                                                              
000000*     COPY CFUNK2 .                                                        
000000 01  運用管理Ｒ１.                                                              
000000     COPY CFUNK1 .                                                        
000000* 01  運用管理Ｒ３.                                                              
000000*     COPY CFUNK3 .                                                        
000000 FD  業者Ｆ                                                                  
000000     LABEL RECORD STANDARD                                               
      *20141027追加開始
           VALUE  OF IDENTIFICATION IS "VIGYOSYA".
      *20141027追加終了
000000 01  業者Ｒ.                                                                 
000000     COPY CFGYSA .                                                        
000000 FD  売場Ｆ                                                                  
000000     LABEL RECORD STANDARD                                               
      *20141027追加開始
           VALUE  OF IDENTIFICATION IS "VIURIBA".
      *20141027追加終了
000000 01  売場Ｒ.                                                                 
000000     COPY CFURBA .                                                        
000000 FD  ゲーム状況Ｆ                                                               
000000     LABEL  RECORD  STANDARD                                             
      *20141027追加開始
           VALUE  OF IDENTIFICATION IS "VIGAMJYO".
      *20141027追加終了
000000 01  ゲーム状況Ｒ.                                                              
000000     COPY CFGMJY .                                                        
000000 FD  ゲームルールＦ                                                              
000000     LABEL  RECORD  STANDARD                                             
      *20141027追加開始
           VALUE  OF IDENTIFICATION IS "VIGMRULE".
      *20141027追加終了
      *20141102修正開始
000000* 01  ゲームルールＫ.                                                             
000000*     COPY CFGMR1 .
      *20141102修正終了                                                        
000000 01  ゲームルールＭ.                                                             
000000     COPY CFGMR2 .                                                        
000000 FD  ゲームＦ                                                                 
000000     LABEL  RECORD  STANDARD                                             
      *20141027追加開始
           VALUE  OF IDENTIFICATION IS "VIGAME".
      *20141027追加終了
000000 01  ゲームＲ.                                                                
000000     COPY CFGAME .                                                        
000000 FD  発売ゲームＦ−Ａ                                                             
000000     LABEL  RECORD  STANDARD                                             
      *20141027追加開始
           VALUE  OF IDENTIFICATION IS "VIHATGMA".
      *20141027追加終了
000000 01  発売ゲームＲ−Ａ.                                                            
000000     COPY CFHTGM REPLACING                                                
000000              //ＨＴＧＭ//  BY  //ＨＴＧＡ// .                                    
000000 FD  発売ゲームＦ−Ｂ                                                             
000000     LABEL  RECORD  STANDARD                                             
      *20141027追加開始
           VALUE  OF IDENTIFICATION IS "VIHATGMB".
      *20141027追加終了
000000 01  発売ゲームＲ−Ｂ.                                                            
000000     COPY CFHTGM REPLACING                                                
000000              //ＨＴＧＭ//  BY  //ＨＴＧＢ// .                                    
000000 FD  外部販売用特殊取引Ｆ−Ａ                                                         
000000     LABEL  RECORD  STANDARD                                             
      *20141027追加開始
           VALUE  OF IDENTIFICATION IS "VRTKSYGA".
      *20141027追加終了
000000 01  外部販売用特殊取引Ｒ−Ａ.                                                        
000000     COPY CFGHT2 .                                                        
000000 FD  外部販売用特殊取引Ｆ−Ｂ                                                         
000000     LABEL  RECORD  STANDARD                                             
      *20141027追加開始
           VALUE  OF IDENTIFICATION IS "VRTKSYGB".
      *20141027追加終了
000000 01  外部販売用特殊取引Ｒ−Ｂ.                                                        
000000     COPY CFGHT2 REPLACING                                                
000000              //ＧＨＴ２//  BY  //ＧＨＴ２Ｂ// .                                   
000000 FD  金融機関手数料変更Ｇ情報Ｆ                                                        
000000     LABEL  RECORD  STANDARD                                             
      *20141027追加開始
           VALUE  OF IDENTIFICATION IS "VITSGMKY".
      *20141027追加終了
000000 01  金融機関手数料変更Ｇ情報Ｒ.                                                       
000000     COPY CFTSGM .                                                        
000000 FD  販売Ｃ別手数料変更Ｇ情報Ｆ                                                        
000000     LABEL  RECORD  STANDARD                                             
      *20141027追加開始
           VALUE  OF IDENTIFICATION IS "VITSGMCH".
      *20141027追加終了
000000 01  販売Ｃ別手数料変更Ｇ情報Ｒ.                                                       
000000     COPY CFHCHT .                                                        
000000 FD  販売チャネルＦ                                                              
000000     LABEL RECORD STANDARD                                               
      *20141027追加開始
           VALUE  OF IDENTIFICATION IS "VICHNNEL".
      *20141027追加終了
000000 01  販売チャネルＲ.                                                             
000000     COPY CFCHNL .                                                        
000000 FD  高額支払情報ＷＫＦ                                                            
000000     LABEL  RECORD  STANDARD                                             
      *20141027追加開始
           VALUE  OF IDENTIFICATION IS "SQWKGKSH".
      *20141027追加終了
000000 01  高額支払情報ＷＫＲ.                                                           
000000     COPY CFKSMT .                                                        
000000 FD  売上金精査ＷＫＦ                                                             
000000     LABEL  RECORD  STANDARD                                             
      *20141027追加開始
           VALUE  OF IDENTIFICATION IS "SQWURISE".
      *20141027追加終了
000000 01  売上金精査ＷＫＲ.                                                            
000000     COPY CFWUAS .                                                        
000000 FD  売場別売上ＷＫＦ                                                             
000000     LABEL  RECORD  STANDARD                                             
      *20141027追加開始
           VALUE  OF IDENTIFICATION IS "SQWURIUR".
      *20141027追加終了
000000 01  売場別売上ＷＫＲ.                                                            
000000     COPY CFWUBU .                                                        
000000 FD  売場時間帯別売上ＷＫＦ                                                          
000000     LABEL  RECORD  STANDARD                                            
      *20141027追加開始
           VALUE  OF IDENTIFICATION IS "SQWJIKAN".
      *20141027追加終了
000000 01  売場時間帯別売上ＷＫＲ.                                                         
000000     COPY CFWJIK .                                                        
000000 FD  購入日別申込状況ＷＫＦ                                                          
000000     LABEL  RECORD  STANDARD                                             
      *20141027追加開始
           VALUE  OF IDENTIFICATION IS "SQWKNYJY".
      *20141027追加終了
000000 01  購入日別申込状況ＷＫＲ.                                                         
000000     COPY CFWKNY .                                                        
000000 FD  売場別精算表ＷＫＦ                                                            
000000     LABEL  RECORD  STANDARD                                             
      *20141027追加開始
           VALUE  OF IDENTIFICATION IS "SQWURISS".
      *20141027追加終了
000000 01  売場別精算表ＷＫＲ.                                                           
000000     COPY CFWUBS .                                                        
000000 FD  回号別精算表ＷＫＦ                                                            
000000     LABEL  RECORD  STANDARD                                             
      *20141027追加開始
           VALUE  OF IDENTIFICATION IS "SQWKAISS".
      *20141027追加終了
000000 01  回号別精算表ＷＫＲ.                                                           
000000     COPY CFWKAI .                                                        
000000 FD  団体別精算表ＷＫＦ                                                            
000000     LABEL  RECORD  STANDARD                                             
      *20141027追加開始
           VALUE  OF IDENTIFICATION IS "SQWDNSSN".
      *20141027追加終了
000000 01  団体別精算表ＷＫＲ.                                                           
000000     COPY CFWDNS .                                                        
000000 FD  エラーＷＫＦ                                                               
000000     LABEL  RECORD  STANDARD                                             
      *20141027追加開始
           VALUE  OF IDENTIFICATION IS "SQWERROR".
      *20141027追加終了
000000 01  エラーＷＫＲ.                                                              
000000   03  ＥＲＷＫ個別情報.                                                          
000000     COPY CFTRNS REPLACING                                                
000000              //ＴＲＮＳ//  BY  //ＥＲＷＫ// .                                    
000000 FD  外部販売用売上情報ＷＫＦ                                                         
000000     LABEL  RECORD  STANDARD                                             
      *20141027追加開始
           VALUE  OF IDENTIFICATION IS "SQWGURAG".
      *20141027追加終了
000000 01  外部販売用売上情報ＷＫＲ.                                                        
000000     COPY CFWGUA .                                                        
000000 FD  外販用障害取消不可ＷＫＦ                                                         
000000     LABEL  RECORD  STANDARD                                             
      *20141027追加開始
           VALUE  OF IDENTIFICATION IS "SQWGTOFK".
      *20141027追加終了
000000 01  外販用障害取消不可ＷＫＲ.                                                        
000000     COPY CFWGTF .                                                        
000000 FD  ＳＧ情報管理Ｆ
      *20141027修正開始                                                              
000000*     RECORD  VARYING  IN  SIZE                                         
           LABEL  RECORD  STANDARD
      *20141027修正終了
      *20141027追加開始
           VALUE  OF IDENTIFICATION IS "VRSGJYO".
      *20141027追加終了
000000* 01  ＳＧ情報管理Ｒ３.                                                            
000000*     COPY CFSGJ3 .                                                        
000000 01  ＳＧ情報管理Ｒ１.                                                            
000000     COPY CFSGJ1 .                                                        
000000* 01  ＳＧ情報管理Ｒ２.                                                            
000000*     COPY CFSGJ2 .                                                        
000000 FD  売捌手数料Ｆ                                                               
000000     LABEL  RECORD  STANDARD                                             
      *20141027追加開始
           VALUE  OF IDENTIFICATION IS "VIURTESU".
      *20141027追加終了
000000 01  売捌手数料Ｒ.                                                              
000000     COPY CFURTS .                                                        
000000 FD  売捌手数料ＷＫＦ                                                             
000000     LABEL  RECORD  STANDARD                                             
      *20141027追加開始
           VALUE  OF IDENTIFICATION IS "VIWURTES".
      *20141027追加終了
000000 01  売捌手数料ＷＫＲ.                                                            
000000     COPY CFWUTE .
      *20141028追加開始
000000 FD  変数販売チャネルコードＦ
           LABEL  RECORD  STANDARD                                                        
           VALUE  OF IDENTIFICATION IS "NEWFILE".
       01  SPCHNL                            PIC X(02).
      *20141028追加終了                                                        
000000 WORKING-STORAGE SECTION.                                                 
000000 01  作業エリア.                                                               
000000   03  ＷＫ−等級                      PIC 9(02).                              
000000   03  ＷＫ−販売チャネルコード        PIC 9(02).                                     
000000   03  ＷＫ−ゲームタイプ              PIC 9(02).                                  
000000   03  ＷＫ−ブロックコード            COMP-1.                                      
000000   03  ＷＫ−大手業者                  PIC X(03).                                
000000   03  ＷＫ−世代区分                  PIC X(01).                                
000000   03  ＷＫ−継続回号数                PIC 9(01).                                 
000000   03  ＷＫ−回号                      PIC 9(01).                              
000000   03  ＷＫ−申込通り数                PIC 9(04).                                 
000000   03  ＷＫ−発券日                    PIC 9(08).                               
000000   03  ＷＫ−支払日                    PIC 9(08).                               
000000   03  ＷＫ−口数                      PIC 9(03).                              
000000   03  ＷＫ−売捌手数料                PIC 9(05)V9(02) COMP-3.                    
000000   03  ＷＫ−変更後手数料              PIC 9(11)V9(02) COMP-3.                     
000000   03  ＷＫ−パネル数                  PIC 9(01).                                
000000   03  ＷＫ−申込数字                  PIC 9(10).                                
000000   03  ＷＫ−申込数字Ｒ                REDEFINES ＷＫ−申込数字.                         
000000     05  ＴＢＬ申込数字                PIC 9(01) OCCURS 10.                      
000000   03  ＷＫ−当せん数字                PIC 9(10).                                 
000000   03  ＷＫ−当せん数字Ｒ              REDEFINES ＷＫ−当せん数字.                         
000000     05  ＴＢＬ当せん数字              PIC 9(01) OCCURS 10.                       
000000   03  ＷＫ−ＴＲ識別コード.                                                        
000000     05  ＷＫ−ＴＲ識別コード上８桁    PIC 9(08).                                      
000000     05  ＷＫ−ＴＲ識別コード中８桁    PIC 9(08).                                      
000000     05  ＷＫ−ＴＲ識別コード下８桁    PIC 9(08).                                      
000000   03  ＷＫ−申込数字変換              PIC X(24).                                  
000000   03  ＷＫ−申込数字変換ＲＮ３３ REDEFINES ＷＫ−申込数字変換.                                 
000000     05  ＷＫ−申込数字変換Ｎ３３      PIC 9(03).                                     
000000     05  FILLER                        PIC X(21).                         
000000   03  ＷＫ−申込数字変換ＲＮ３２ REDEFINES ＷＫ−申込数字変換.                                 
000000     05  ＷＫ−申込数字変換Ｎ３２      PIC 9(02).                                     
000000     05  FILLER                        PIC X(22).                         
000000   03  ＷＫ−申込数字変換ＲＮ４４ REDEFINES ＷＫ−申込数字変換.                                 
000000     05  ＷＫ−申込数字変換Ｎ４４      PIC 9(04).                                     
000000     05  FILLER                        PIC X(20).                         
000000   03  ＷＫ−申込数字変換ＲＮ４２ REDEFINES ＷＫ−申込数字変換.                                 
000000     05  ＷＫ−申込数字変換Ｎ４２      PIC 9(02).                                     
000000     05  FILLER                        PIC X(22).                         
000000   03  ＷＫ−申込数字変換ＲＬＴ   REDEFINES ＷＫ−申込数字変換.                                
000000     05  ＷＫ−申込数字変換ＬＴ        PIC X(02) OCCURS 12.                          
000000   03 利用者制御変数エリア.                                                         
000000     05  変数販売チャネルコード        PIC 9(02).                                    
000000   03  ＷＫ−識別コード変換.                                                        
000000     05  PTR_SBCDBEFORE                USAGE POINTER.                     
000000     05  PTR_SBCDAFTER                 USAGE POINTER.                     
000000     05  ＷＫ−１６識別コード.                                                      
000000       07  ＷＫ−１６識別コード上      PIC  9(08).                                   
000000       07  ＷＫ−１６識別コード下      PIC  9(08).                                   
000000     05  ＷＫ−２４識別コード.                                                      
000000       07  ＷＫ−２４識別コード上      PIC  9(08).                                   
000000       07  ＷＫ−２４識別コード中      PIC  9(08).                                   
000000       07  ＷＫ−２４識別コード下      PIC  9(08).                                   
000000 01  カウンタ.                                                                
000000   03  ＣＮＴゲーム                    PIC 9(02).                               
000000   03  ＣＮＴ回号                      PIC 9(02).                              
000000   03  ＣＮＴ大手業者                  PIC 9(03).                                
000000   03  ＣＮＴ申込数字                  PIC 9(02).                                
000000   03  ＣＮＴ販売Ｃ                    PIC 9(02).                               
000000   03  ＣＮＴ金額帯                    PIC 9(02).                               
000000   03  ＣＮＴ当せん                    PIC 9(02).                               
000000   03  ＣＮＴパネル                    PIC 9(01).                               
000000   03  ＣＮＴ電文通番取消              PIC 9(05).                                  
000000   03  ＣＮＴ識別コード取消            PIC 9(05).                                   
000000 01  相対キー.                                                                
      *20141027修正開始
000000*   03  ＲＫ−運用管理Ｆ                COMP-2.                                    
000000*   03  ＲＫ−特殊取引Ａ                COMP-2.                                    
000000*   03  ＲＫ−特殊取引Ｂ                COMP-2.                                    
000000*   03  TR-A-RKEY                       COMP-2.                            
000000*   03  TR-B-RKEY                       COMP-2.                            
000000*   03  SGF-KEY                         COMP-2.                            
      *20141027修正終了
      *20141027追加開始
000000   03  ＲＫ−運用管理Ｆ                PIC 9(08).                                    
000000   03  ＲＫ−特殊取引Ａ                PIC 9(08).                                    
000000   03  ＲＫ−特殊取引Ｂ                PIC 9(08).                                    
000000   03  TR-A-RKEY                       PIC 9(08).                            
000000   03  TR-B-RKEY                       PIC 9(08).                            
000000   03  SGF-KEY                         PIC 9(08).                            
      *20141027追加終了
000000 01  添字.                                                                  
000000   03  ＩＤＸ格納レコード              PIC 9(02).                                  
000000   03  ＩＤＸ売場コード                PIC X(06).                                 
000000   03  ＩＤＸ売場コードＲ              REDEFINES ＩＤＸ売場コード.                         
000000     05  ＩＤＸ売場                    PIC 9(05).                              
000000     05  FILLER                        PIC X(01).                         
000000   03  ＩＤＸゲーム                    PIC 9(02).                               
000000   03  ＩＤＸ回号                      PIC 9(02).                              
000000   03  ＩＤＸ回号２                    PIC 9(02).                               
000000   03  ＩＤＸ販売Ｃ                    PIC 9(02).                               
000000   03  ＩＤＸテーブル番号              PIC 9(02).                                  
000000   03  ＩＤＸ当せん                    PIC 9(02).                               
000000   03  ＩＤＸ金額帯                    PIC 9(01).                               
000000   03  ＩＤＸパネル                    PIC 9(01).                               
000000   03  ＩＤＸ団体                      PIC 9(03).                              
000000   03  ＩＤＸ大手業者                  PIC 9(03).                                
000000 01  フラグ.                                                                 
000000   03  各種フラグ.                                                             
000000     05  ＦＬＧゲーム                  PIC 9(01).                               
000000     05  ＦＬＧ回号                    PIC 9(01).                              
000000     05  ＦＬＧエラー                  PIC 9(01).                               
000000     05  ＦＬＧ販売Ｃ                  PIC 9(01).                               
000000     05  ＦＬＧ大手業者                PIC 9(01).                                
000000     05  ＦＬＧ障害取消種別            PIC 9(01).                                  
000000   03  ファイル終了フラグ.                                                         
000000     05  ＦＬＧＴＲＮＳ                PIC 9(01).                                
000000     05  ＦＬＧＨＴＧＭ                PIC 9(01).                                
000000     05  ＦＬＧＣＨＮＬ                PIC 9(01).                                
000000     05  ＦＬＧＨＣＨＴ                PIC 9(01).                                
000000     05  ＦＬＧＴＳＧＭ                PIC 9(01).                                
000000     05  ＦＬＧＧＨＴ２                PIC 9(01).                                
000000     05  ＦＬＧＵＲＴＳ                PIC 9(01).                                
000000 01  ファイルステータス.                                                           
000000   03  STS-FILE1                       PIC X(02).                         
000000   03  STS-FILE2                       PIC 9(05).                         
000000 01  ＷＫ−精査.                                                               
000000   03  Ｗ精−本日発券総額              PIC 9(11) COMP-3.                           
000000   03  Ｗ精−本日発券取消総額          PIC 9(11) COMP-3.                             
000000   03  Ｗ精−本日発券取消解除総額      PIC 9(11) COMP-3.                               
000000   03  Ｗ精−解除カウンタオーバ        PIC 9(01).                                     
000000 01  ＷＫ−回号情報テーブル.                                                         
000000   03  Ｗ回−ゲームブロック            OCCURS 30.                                   
000000     05  Ｗ回−ゲームタイプ            PIC 9(02).                                  
000000     05  Ｗ回−ブロックコード          COMP-1.                                      
000000     05  Ｗ回−回号別情報              OCCURS 21.                                 
000000       07  Ｗ回−回号                  COMP-1.                                 
000000       07  Ｗ回−売捌手数料ＴＢＬ番号  PIC 9(02).                                      
000000       07  Ｗ回−単価                  PIC 9(05) COMP-3.                       
000000 01  ＷＫ−高額支払基準値.                                                          
000000   03  Ｗ販Ｃ別情報                    OCCURS 10.                               
000000     05  Ｗ販高額支払基準値            PIC 9(13) COMP-3.                           
      *20141027修正開始
000000*01  Ｗ障害取消不可展開Ａ.                                                          
       01  Ｗ障害−伝聞通番取消Ａ.
000000   03  Ｗ障害−伝聞通番取消          OCCURS 1000.                                  
000000     05  Ｗ障害−売場コード              PIC X(06).                                
000000     05  Ｗ障害−電文通番                COMP-2.                                  
       01  Ｗ障害−識別コード取消Ａ.
000000   03  Ｗ障害−識別コード取消        OCCURS 1000.                                   
000000     05  Ｗ障害−識別コード              PIC X(24).                                
000000     05  Ｗ障害−取消区分                PIC X(01).                               
000000 01  Ｗ障害−電文通番取消件数          PIC 9(05).                                   
000000 01  Ｗ障害−識別コード取消件数        PIC 9(05).                                    
000000*   03  Ｗ障害−電文通番取消件数          PIC 9(05).                                   
000000*   03  Ｗ障害−識別コード取消件数        PIC 9(05).                                    
      *20141027修正終了
000000 01  ＷＫ−団体別精算表. 
      *20141028修正開始                                                          
000000   03  Ｗ団精ゲームブロック            OCCURS 3.                                   
000000     05  Ｗ団精ゲームタイプ            PIC 9(02).                                  
000000     05  Ｗ団精ブロックコード          COMP-1.                                      
000000     05  Ｗ団精回号別情報              OCCURS 21.                                 
000000       07  Ｗ団精回号                  COMP-1.                                 
000000       07  Ｗ団精団体別情報            OCCURS 80.                                 
000000         09  Ｗ団精団体別売上          PIC 9(11) COMP-3.                          
000000         09  Ｗ団精業者コード          PIC 9(06) COMP-3.                          
000000         09  Ｗ団精販売チャネルコード  PIC 9(02).                                     
      *20141028追加開始
       01  ＷＫ−団体別精算表回数            PIC 9(02).
      *20141028追加終了
000000 01  ＷＫＴレコード.                                                             
000000   03  ＷＫＴレコード格納件数     USAGE   COMP-1.                                    
000000   03  ＷＫＴＦＥＰ識別子         PIC     9(2).                                    
000000   03  ＷＫＴパス番号             PIC     9(2).                                  
000000   03  ＷＫＴパス別電文日付       USAGE   COMP-2.                                   
000000   03  ＷＫＴパス別電文通番       USAGE   COMP-2.                                   
000000   03  ＷＫＴ個別情報.                                                           
000000     COPY CFTRNS REPLACING                                                
000000                 //ＴＲＮＳ// BY //ＷＫＴ// .                                    
000000 01  ＷＫＧレコード.                                                             
000000     COPY CFHTGM REPLACING                                                
000000                 //ＨＴＧＭ// BY //ＷＫＧ// .                                    
000000 01  ＷＫ−売場別精算表ＷＫＲ.                                                        
000000     COPY CFWUBS REPLACING                                                
000000                 //ＷＵＢＳ// BY //ＷＫ売精// .                                   
000000 01  ＷＫ−外販用売上情報ＷＫＲ.                                                       
000000     COPY CFWGUA REPLACING                                                
000000                 //ＷＧＵＡ// BY //ＷＫ外販// .                                   
000000 01  ＷＫ−売捌手数料テーブル.                                                        
000000   03  Ｗ売捌テーブル番号情報          OCCURS 30.                                    
000000     05  Ｗ売捌販売Ｃ情報              OCCURS 10.                                 
000000       07  Ｗ売捌売捌金額帯情報        OCCURS 5.                                    
000000         09  Ｗ売捌売捌手数料          PIC 9(05)V9(02) COMP-3.                    
000000         09  Ｗ売捌売捌手数料率        PIC 9(02)V9(04) COMP-3.                     
000000 01  ＷＫ−売捌手数料ＷＫＴＢＬ.  
      *20141028修正開始                                                     
000000*   03  Ｗ売ワゲームブロック            OCCURS 30.
         03  Ｗ売ワゲームブロック            OCCURS 3.                                    
      *20141028修正終了
000000     05  Ｗ売ワゲームタイプ            PIC 9(02).                                  
000000     05  Ｗ売ワブロックコード          COMP-1.                                      
000000     05  Ｗ売ワ回号別情報              OCCURS 21.                                 
000000       07  Ｗ売ワ回号                  COMP-1.                                 
000000       07  Ｗ売ワ販売Ｃ情報            OCCURS 10.                                 
000000         09  Ｗ売ワ販売チャネルコード  PIC 9(02).                                     
000000         09  Ｗ売ワ売上金額            PIC 9(13) COMP-3.                         
000000         09  Ｗ売ワ累計手数料          OCCURS  5                                  
000000                                       PIC 9(13)V9(02) COMP-3.            
000000         09  Ｗ売ワ手数料補正額        PIC 9(13)V9(02) COMP-3.                     
      *20141028追加開始
       01  ＷＫ−売捌手数料ＷＫＴＢＬ回数    PIC 9(02).
      *20141028追加終了
000000 01  ＷＫ−販Ｃ別手数料テーブル.                                                       
000000   03  Ｗ−販Ｃ別販Ｃ情報              OCCURS 10.                                  
000000     05  Ｗ−販Ｃ別ゲームブロック      OCCURS 30.                                     
000000       07  Ｗ−販Ｃ別ゲームタイプ      PIC 9(02).                                    
000000       07  Ｗ−販Ｃ別ブロックコード    COMP-1.                                        
000000       07  Ｗ−販Ｃ別回号情報          OCCURS 21.                                  
000000         09  Ｗ−販Ｃ別回号            COMP-1.                                   
000000         09  Ｗ−販Ｃ別金額帯番号      PIC 9(01).                                   
      *20141028修正開始
000000*01  Ｗ−機関別手数料ＴＢＬ０１.                                                       
000000*  03  Ｗ−機関別販Ｃ情報０１.                                                       
000000*    05  Ｗ−機関別大手業者情報０１     OCCURS 999.                                    
000000*      07  Ｗ−機関別大手業者ＣＤ０１   PIC 9(03) COMP-3.                              
000000*      07  Ｗ−機関別ゲームＢＬＫ０１   OCCURS 30.                                     
000000*        09  Ｗ−機関別ゲームタイプ０１ PIC 9(02).                                     
000000*        09  Ｗ−機関別ブロックＣＤ０１ COMP-1.                                        
000000*        09  Ｗ−機関別回号情報０１     OCCURS 21.                                   
000000*          11  Ｗ−機関別回号０１       USAGE COMP-1.                              
000000*          11  Ｗ−機関別金額帯番号０１ PIC 9(01).                                    
      *20141028修正終了
000000 01  Ｗ−機関別手数料ＴＢＬ０２.                                                       
000000   03  Ｗ−機関別販Ｃ情報０２.                                                       
      *20141028修正開始
000000*     05  Ｗ−機関別大手業者情報０２     OCCURS 999.                                    
           05  Ｗ−機関別大手業者情報０２     OCCURS 9.
      *20141028修正終了
000000       07  Ｗ−機関別大手業者ＣＤ０２   PIC 9(03).                                     
000000       07  Ｗ−機関別ゲームＢＬＫ０２   OCCURS 30.                                     
000000         09  Ｗ−機関別ゲームタイプ０２ PIC 9(02).                                     
000000         09  Ｗ−機関別ブロックＣＤ０２ COMP-1.                                        
000000         09  Ｗ−機関別回号情報０２     OCCURS 21.                                   
000000           11  Ｗ−機関別回号０２       USAGE COMP-1.                              
000000           11  Ｗ−機関別金額帯番号０２ PIC 9(01).                                    
000000 01  ＬＮＫＡ等級.                                                              
000000     COPY CWLNKA .                                                        
000000 01  フラグ値.                                                                
000000   03  ＯＮ                            PIC 9(01) VALUE 1.                   
000000   03  ＯＦＦ                          PIC 9(01) VALUE 0.                    
000000 01  障害取消種別.                                                              
000000   03  電文通番取消                    PIC 9(01) VALUE 1.                       
000000   03  識別コード取消                  PIC 9(01) VALUE 0.                        
000000 01  レコードＩＤ.                                                              
000000   03  発券                            PIC 9(01) VALUE 1.                   
000000   03  発券取消                        PIC 9(01) VALUE 2.                     
000000   03  支払                            PIC 9(01) VALUE 4.                   
000000   03  支払取消                        PIC 9(01) VALUE 5.                     
000000   03  期限後支払                      PIC 9(01) VALUE 6.                      
000000   03  代替券                          PIC 9(01) VALUE 7.                    
000000   03  障害取消                        PIC 9(01) VALUE 8.                     
000000   03  特殊代替券                      PIC 9(01) VALUE 9.                      
000000 01  ゲームタイプ.                                                              
000000   03  ナンバーズ                      PIC 9(01) VALUE 1.                      
000000   03  ロト                            PIC 9(01) VALUE 2.                   
000000 01  分子.                                                                  
000000   03  分子ナンバーズ３                PIC 9(01) VALUE 3.                         
000000   03  分子ナンバーズ４                PIC 9(01) VALUE 4.                         
000000 01  タイプ区分.                                                               
000000   03  ストレート                      PIC 9(01) VALUE 1.                      
000000   03  ボックス                        PIC 9(01) VALUE 2.                     
000000   03  ストレートボックス              PIC 9(01) VALUE 3.                          
000000   03  フロントペア                    PIC 9(01) VALUE 4.                       
000000   03  バックペア                      PIC 9(01) VALUE 5.                      
000000   03  チャンス                        PIC 9(01) VALUE 6.                     
000000   03  通常                            PIC 9(01) VALUE 2.                   
000000   03  コンビ７                        PIC 9(01) VALUE 3.                     
000000   03  コンビ８                        PIC 9(01) VALUE 4.                     
000000   03  コンビ９                        PIC 9(01) VALUE 5.                     
000000   03  コンビ１０                      PIC 9(01) VALUE 6.                      
      *20141028追加開始
       01  KUMN-PARAM.
           COPY CLKUMN.
       01  DTCP-PARAM.                                                         
           COPY CLDTCP.
       01  SRLC-PARAM.                                                         
           COPY CLSRLC.
       01  IDXC-PARAM.                                                         
           COPY CLIDXC.
      *20141028追加終了
000000 PROCEDURE DIVISION .                                                     
000000 MAIN-RTN .                                                               
000000     PERFORM S000-RTN THRU CX00002                                        
000000     PERFORM P000-RTN THRU CX00003                                        
000000     PERFORM E000-RTN THRU CX00004 .                                      
000000 CX00001. STOP RUN.                                                       
           DISPLAY "CX00001" UPON CONSOLE
000000 S000-RTN .                                                               
000000       OPEN INPUT 運用管理Ｆ .                                                 
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00027.                           
000000         DISPLAY "HBHUN370-01 VRUNYKAN OPEN ERROR ",                      
000000                   STS-FILE1 " " STS-FILE2                                
000000         STOP RUN .                                                     
000000 CX00027.                                                                 
           DISPLAY "CX00027" UPON CONSOLE
000000       OPEN INPUT 売場Ｆ .                                                   
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00028.                           
000000         DISPLAY "HBHUN370-02 VIURIBA  OPEN ERROR ",                      
000000                   STS-FILE1 " " STS-FILE2                                
000000         STOP RUN .                                                     
000000 CX00028.                                                                 
           DISPLAY "CX00028" UPON CONSOLE
000000       OPEN INPUT ゲームＦ .                                                  
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00029.                           
000000         DISPLAY "HBHUN370-03 VIGAME   OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00029.                                                                 
           DISPLAY "CX00029" UPON CONSOLE
000000       OPEN INPUT ゲームルールＦ .                                               
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00030.                           
000000         DISPLAY "HBHUN370-04 VIGMRULE OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00030.                                                                 
           DISPLAY "CX00030" UPON CONSOLE
000000       OPEN INPUT ゲーム状況Ｆ .                                                
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00031.                           
000000         DISPLAY "HBHUN370-05 VIGAMJYO OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00031.                                                                 
           DISPLAY "CX00031" UPON CONSOLE
000000       OPEN INPUT 業者Ｆ .                                                   
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00032.                           
000000         DISPLAY "HBHUN370-06 VIGYOSYA OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00032.                                                                 
           DISPLAY "CX00032" UPON CONSOLE
000000       OPEN INPUT 金融機関手数料変更Ｇ情報Ｆ .                                         
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00033.                           
000000         DISPLAY "HBHUN370-07 VITSGMKY OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00033.                                                                 
           DISPLAY "CX00033" UPON CONSOLE
000000       OPEN INPUT 販売Ｃ別手数料変更Ｇ情報Ｆ .                                         
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00034.                           
000000         DISPLAY "HBHUN370-08 VITSGMCH OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00034.                                                                 
           DISPLAY "CX00034" UPON CONSOLE
000000       OPEN INPUT 販売チャネルＦ .                                               
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00035.                           
000000         DISPLAY "HBHUN370-09 VICHNNEL OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00035.                                                                 
           DISPLAY "CX00035" UPON CONSOLE
000000       OPEN INPUT 売捌手数料Ｆ .                                                
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00036.                           
000000         DISPLAY "HBHUN370-10 VIUTRESU OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00036.                                                                 
           DISPLAY "CX00036" UPON CONSOLE
000000       OPEN OUTPUT 高額支払情報ＷＫＦ .                                            
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00037.                           
000000         DISPLAY "HBHUN370-11 SQWKGKSH OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00037.                                                                 
           DISPLAY "CX00037" UPON CONSOLE
000000       OPEN OUTPUT 売上金精査ＷＫＦ .                                             
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00038.                           
000000         DISPLAY "HBHUN370-12 SQWURISE OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00038.                                                                 
           DISPLAY "CX00038" UPON CONSOLE
000000       OPEN OUTPUT 売場別売上ＷＫＦ .                                             
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00039.                           
000000         DISPLAY "HBHUN370-13 SQWURIUR OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00039.                                                                 
           DISPLAY "CX00039" UPON CONSOLE
000000       OPEN OUTPUT 売場時間帯別売上ＷＫＦ .                                          
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00040.                           
000000         DISPLAY "HBHUN370-14 SQWJIKAN OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00040.                                                                 
           DISPLAY "CX00040" UPON CONSOLE
000000       OPEN OUTPUT 購入日別申込状況ＷＫＦ .                                          
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00041.                           
000000         DISPLAY "HBHUN370-15 SQWKNYJY OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00041.                                                                 
           DISPLAY "CX00041" UPON CONSOLE
000000       OPEN OUTPUT 売場別精算表ＷＫＦ .                                            
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00042.                           
000000         DISPLAY "HBHUN370-16 SQWURISS OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00042.                                                                 
           DISPLAY "CX00042" UPON CONSOLE
000000       OPEN OUTPUT 回号別精算表ＷＫＦ .                                            
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00043.                           
000000         DISPLAY "HBHUN370-17 SQWKAISS OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00043.                                                                 
           DISPLAY "CX00043" UPON CONSOLE
000000       OPEN OUTPUT 団体別精算表ＷＫＦ .                                            
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00044.                           
000000         DISPLAY "HBHUN370-18 SQWDNSSN OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00044.                                                                 
           DISPLAY "CX00044" UPON CONSOLE
000000       OPEN OUTPUT エラーＷＫＦ .                                               
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00045.                           
000000         DISPLAY "HBHUN370-19 SQTRONRI OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00045.                                                                 
           DISPLAY "CX00045" UPON CONSOLE
000000       OPEN OUTPUT 売捌手数料ＷＫＦ .                                             
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00046.                           
000000         DISPLAY "HBHUN370-20 VIWURTES OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00046.                                                                 
           DISPLAY "CX00046" UPON CONSOLE
000000       OPEN OUTPUT 外部販売用売上情報ＷＫＦ .                                         
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00047.                           
000000         DISPLAY "HBHUN370-21 SQWGURAG OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00047.                                                                 
           DISPLAY "CX00047" UPON CONSOLE
000000       OPEN OUTPUT 外販用障害取消不可ＷＫＦ .                                         
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00048.                           
000000         DISPLAY "HBHUN370-22 SQWGTOFK OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00048.                                                                 
           DISPLAY "CX00048" UPON CONSOLE
000000       OPEN INPUT ＳＧ情報管理Ｆ .                                               
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00049.                           
000000         DISPLAY "HBHUN370-23 VRSGJYO  OPEN ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00049.                                                                 
           DISPLAY "CX00049" UPON CONSOLE
000000     MOVE 1 TO ＲＫ−運用管理Ｆ
             DISPLAY "運用管理Ｆ"  UPON CONSOLE                                            
000000       READ 運用管理Ｆ INVALID CONTINUE . 
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00050.                  
000000         DISPLAY "HBHUN370-24 VRUNYKAN READ ERROR ",                      
000000                   STS-FILE1 " " STS-FILE2                                
000000         STOP RUN .                                                     
000000 CX00050.                                                                 
           DISPLAY "CX00050" UPON CONSOLE
000000     IF NOT(ＵＮＫ１業務日付 = ＵＮＫ１バッチ業務日付)GO TO CX00051.                         
000000     MOVE ＵＮＫ１世代区分 TO ＷＫ−世代区分 .                                           
000000     GO TO CX00052.                                                       
000000 CX00051.                                                                 
           DISPLAY "CX00051" UPON CONSOLE
000000     IF NOT(ＵＮＫ１世代区分 = "1")GO TO CX00053.                                 
000000     MOVE "2" TO ＷＫ−世代区分 .                                                
000000     GO TO CX00054.                                                       
000000 CX00053.                                                                 
           DISPLAY "CX00053" UPON CONSOLE
000000     MOVE "1" TO ＷＫ−世代区分 .                                                
000000 CX00054.                                                                 
           DISPLAY "CX00054" UPON CONSOLE
000000 CX00052.                                                                 
           DISPLAY "CX00052" UPON CONSOLE
000000     IF NOT(ＷＫ−世代区分 = "1")GO TO CX00055.                                  
000000         OPEN  INPUT  トランザクションＦ−Ａ .                                       
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00056.                           
000000           DISPLAY "HBHUN370-25 VRTRNSA  OPEN ERROR ",                    
000000                   STS-FILE1 " " STS-FILE2                                
000000           STOP RUN .                                                   
000000 CX00056.                                                                 
           DISPLAY "CX00056" UPON CONSOLE
000000         OPEN  INPUT  外部販売用特殊取引Ｆ−Ａ .                                      
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00057.                           
000000           DISPLAY "HBHUN370-26 VRTKSYGA OPEN ERROR ",                    
000000                   STS-FILE1 " " STS-FILE2                                
000000           STOP RUN .                                                   
000000 CX00057.                                                                 
           DISPLAY "CX00057" UPON CONSOLE
000000         OPEN  INPUT  発売ゲームＦ−Ａ .                                          
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00058.                           
000000           DISPLAY "HBHUN370-27 VIHATGMA OPEN ERROR ",                    
000000                   STS-FILE1 " " STS-FILE2                                
000000           STOP RUN .                                                   
000000 CX00058.                                                                 
           DISPLAY "CX00058" UPON CONSOLE
000000     GO TO CX00059.                                                       
000000 CX00055.                                                                 
           DISPLAY "CX00055" UPON CONSOLE
000000         OPEN  INPUT  トランザクションＦ−Ｂ .                                       
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00060.                           
000000           DISPLAY "HBHUN370-28 VRTRNSB  OPEN ERROR ",                    
000000                   STS-FILE1 " " STS-FILE2                                
000000           STOP RUN .                                                   
000000 CX00060.                                                                 
           DISPLAY "CX00060" UPON CONSOLE
000000         OPEN  INPUT  外部販売用特殊取引Ｆ−Ｂ .                                      
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00061.                           
000000           DISPLAY "HBHUN370-29 VRTKSYGB OPEN ERROR ",                    
000000                   STS-FILE1 " " STS-FILE2                                
000000           STOP RUN .                                                   
000000 CX00061.                                                                 
           DISPLAY "CX00061" UPON CONSOLE
000000         OPEN  INPUT  発売ゲームＦ−Ｂ .                                          
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00062.                           
000000           DISPLAY "HBHUN370-30 VIHATGMB OPEN  ERROR ",                   
000000                   STS-FILE1 " " STS-FILE2                                
000000           STOP RUN .                                                   
000000 CX00062.                                                                 
           DISPLAY "CX00062" UPON CONSOLE
000000 CX00059.
           DISPLAY "CX00059" UPON CONSOLE
      *20141028修正開始                                                                 
000000*       ACCEPT  変数販売チャネルコード  FROM  SPCHNL                                  
000000         OPEN  INPUT  変数販売チャネルコードＦ .                                          
000000     IF STS-FILE1 NOT = ZERO                           
000000           DISPLAY "HBHUN370-99 NEWFILE OPEN  ERROR ",                   
000000                   STS-FILE1 " " STS-FILE2                                
000000           STOP RUN .
           DISPLAY "変数販売チャネルコードＦ"  UPON CONSOLE 
           READ 変数販売チャネルコードＦ AT END CONTINUE. 
           MOVE SPCHNL TO 変数販売チャネルコード
000000         CLOSE 変数販売チャネルコードＦ .                                                 
000000     IF STS-FILE1 NOT = ZERO                           
000000           DISPLAY "HBHUN370-99 NEWFILE CLOSE ERROR ",                   
000000           STOP RUN . 
      *20141028修正終了
000000     MOVE 変数販売チャネルコード TO ＷＫ−販売チャネルコード                                     
000000     MOVE 1 TO SGF-KEY
           DISPLAY "ＳＧ情報管理Ｆ"  UPON CONSOLE                                                    
000000       READ ＳＧ情報管理Ｆ INVALID CONTINUE .                                    
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00063.                  
000000         DISPLAY "HBHUN370-31 VRSGJYO  READ ERROR ",                      
000000                   STS-FILE1 " " STS-FILE2                                
000000         STOP RUN .                                                     
000000 CX00063.                                                                 
           DISPLAY "CX00063" UPON CONSOLE
000000       INITIALIZE ＷＫ−外販用売上情報ＷＫＲ                                           
000000       INITIALIZE ＷＫ−売場別精算表ＷＫＲ                                            
000000       INITIALIZE 売場時間帯別売上ＷＫＲ                                             
000000       INITIALIZE ＷＫ−精査                                                   
000000       SET PTR_SBCDBEFORE TO ADDRESS OF ＷＫ−１６識別コード.                       
000000       SET PTR_SBCDAFTER  TO ADDRESS OF ＷＫ−２４識別コード.                       
000000 CX00002. EXIT.                                                           
000000 P000-RTN .                                                               
000000     PERFORM P100-RTN THRU CX00005                                        
000000     PERFORM P200-RTN THRU CX00007 .                                      
000000     IF NOT(ＷＫ−販売チャネルコード = 02)GO TO CX00064.                              
000000     PERFORM P300-RTN THRU CX00008 .                                      
000000 CX00064.
           DISPLAY "CX00064" UPON CONSOLE
           DISPLAY "CX00064"  UPON CONSOLE                                                                 
000000     MOVE ＯＦＦ TO ＦＬＧＴＲＮＳ                                                  
000000     MOVE 1 TO ＩＤＸ格納レコード                                                  
000000     PERFORM P400-RTN THRU CX00009 .                                      
000000 CX00065. IF NOT(ＦＬＧＴＲＮＳ = ＯＦＦ)GO TO CX00066.
           DISPLAY "CX00065" UPON CONSOLE
           DISPLAY "CX00065"  UPON CONSOLE                              
000000 CX00067. IF NOT(ＩＤＸ格納レコード <= ＷＫＴレコード格納件数)GO TO CX00068.                  
000000     IF NOT(ＷＫ−世代区分 = "1")GO TO CX00069.                                  
000000     MOVE ＴＲＮＡ個別情報 (ＩＤＸ格納レコード) TO ＷＫＴ個別情報 .                               
000000     GO TO CX00070.
           DISPLAY "CX00067"  UPON CONSOLE                                                       
000000 CX00069.
           DISPLAY "CX00069"  UPON CONSOLE                                                                 
000000     MOVE ＴＲＮＢ個別情報 (ＩＤＸ格納レコード) TO ＷＫＴ個別情報 .                               
000000 CX00070.
           DISPLAY "CX00070" UPON CONSOLE
           DISPLAY "CX00070"  UPON CONSOLE                                                                 
000000     IF NOT(ＷＫＴレコード状態 = ZERO)GO TO CX00071.                               
000000     PERFORM P500-RTN THRU CX00010 .                                      
000000     IF NOT(ＷＫ−販売チャネルコード = 01)GO TO CX00072.                              
000000     IF NOT(ＷＫＴレコードＩＤ = 発券 OR 代替券)GO TO CX00073.                          
000000     PERFORM P600-RTN THRU CX00011 .                                      
000000     GO TO CX00074.                                                       
000000 CX00073. IF NOT(ＷＫＴレコードＩＤ = 支払 OR 期限後支払)GO TO CX00075.
           DISPLAY "CX00073" UPON CONSOLE
           DISPLAY "CX00073"  UPON CONSOLE                   
000000     PERFORM P800-RTN THRU CX00013 .                                      
000000     GO TO CX00074.                                                       
000000 CX00075. IF NOT(ＷＫＴレコードＩＤ = 特殊代替券)GO TO CX00076.
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
000000     IF NOT(ＷＫＴレコードＩＤ = 発券)GO TO CX00078.                                 
000000     PERFORM P700-RTN THRU CX00012 .                                      
000000     GO TO CX00079.                                                       
000000 CX00078. IF NOT(ＷＫＴレコードＩＤ = 障害取消)GO TO CX00080.                          
           DISPLAY "CX00078" UPON CONSOLE
000000                 CONTINUE .                                               
000000     GO TO CX00079.                                                       
000000 CX00080.
           DISPLAY "CX00080" UPON CONSOLE
           DISPLAY "CX00080"  UPON CONSOLE                                                                  
000000     MOVE ＯＮ TO ＦＬＧエラー                                                    
000000     MOVE "1" TO ＷＫＴ当チェックフラグ                                              
000000     PERFORM ERWK-RTN THRU CX00024 .                                      
000000 CX00079.                                                                 
           DISPLAY "CX00079" UPON CONSOLE
000000 CX00077.                                                                 
           DISPLAY "CX00077" UPON CONSOLE
000000 CX00071.
           DISPLAY "CX00071" UPON CONSOLE
           DISPLAY "CX00071"  UPON CONSOLE                                                                  
000000     COMPUTE ＩＤＸ格納レコード = ＩＤＸ格納レコード + 1 .                                  
000000     GO TO CX00067.                                                       
000000 CX00068.
           DISPLAY "CX00068" UPON CONSOLE
           DISPLAY "CX00068"  UPON CONSOLE                                                                 
000000     PERFORM P400-RTN THRU CX00009                                        
000000     MOVE 1 TO ＩＤＸ格納レコード .                                                
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
000000       CLOSE 運用管理Ｆ .                                                      
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00081.                           
000000         DISPLAY "HBHUN370-32 VRUNYKAN CLOSE ERROR ",                     
000000                   STS-FILE1 " " STS-FILE2                                
000000         STOP RUN .                                                     
000000 CX00081.                                                                 
           DISPLAY "CX00081" UPON CONSOLE
000000       CLOSE 売場Ｆ .                                                        
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00082.                           
000000         DISPLAY "HBHUN370-33 VIURIBA  CLOSE ERROR ",                     
000000                   STS-FILE1 " " STS-FILE2                                
000000         STOP RUN .                                                     
000000 CX00082.                                                                 
           DISPLAY "CX00082" UPON CONSOLE
000000       CLOSE ゲームＦ .                                                       
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00083.                           
000000         DISPLAY "HBHUN370-34 VIGAME   CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00083.                                                                 
           DISPLAY "CX00083" UPON CONSOLE
000000       CLOSE ゲームルールＦ .                                                    
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00084.                           
000000         DISPLAY "HBHUN370-35 VIGMRULE CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00084.                                                                 
           DISPLAY "CX00084" UPON CONSOLE
000000       CLOSE ゲーム状況Ｆ .                                                     
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00085.                           
000000         DISPLAY "HBHUN370-36 VIGAMJYO CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00085.                                                                 
           DISPLAY "CX00085" UPON CONSOLE
000000       CLOSE 業者Ｆ .                                                        
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00086.                           
000000         DISPLAY "HBHUN370-37 VIGYOSYA CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00086.                                                                 
           DISPLAY "CX00086" UPON CONSOLE
000000       CLOSE 金融機関手数料変更Ｇ情報Ｆ .                                              
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00087.                           
000000         DISPLAY "HBHUN370-38 VITSGMKY CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00087.                                                                 
           DISPLAY "CX00087" UPON CONSOLE
000000       CLOSE 販売Ｃ別手数料変更Ｇ情報Ｆ .                                              
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00088.                           
000000         DISPLAY "HBHUN370-39 VITSGMCH CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00088.                                                                 
           DISPLAY "CX00088" UPON CONSOLE
000000       CLOSE 販売チャネルＦ .                                                    
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00089.                           
000000         DISPLAY "HBHUN370-40 VICHNNEL CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00089.                                                                 
           DISPLAY "CX00089" UPON CONSOLE
000000       CLOSE 売捌手数料Ｆ .                                                     
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00090.                           
000000         DISPLAY "HBHUN370-41 VIUTRESU CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00090.                                                                 
           DISPLAY "CX00090" UPON CONSOLE
000000       CLOSE 高額支払情報ＷＫＦ .                                                  
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00091.                           
000000         DISPLAY "HBHUN370-42 SQWKGKSH CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00091.                                                                 
           DISPLAY "CX00091" UPON CONSOLE
000000       CLOSE 売上金精査ＷＫＦ .                                                   
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00092.                           
000000         DISPLAY "HBHUN370-43 SQWURISE CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00092.                                                                 
           DISPLAY "CX00092" UPON CONSOLE
000000       CLOSE 売場別売上ＷＫＦ .                                                   
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00093.                           
000000         DISPLAY "HBHUN370-44 SQWURIUR CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00093.                                                                 
           DISPLAY "CX00093" UPON CONSOLE
000000       CLOSE 売場時間帯別売上ＷＫＦ .                                                
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00094.                           
000000         DISPLAY "HBHUN370-45 SQWJIKAN CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00094.                                                                 
           DISPLAY "CX00094" UPON CONSOLE
000000       CLOSE 購入日別申込状況ＷＫＦ .                                                
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00095.                           
000000         DISPLAY "HBHUN370-46 SQWKNYJY CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00095.                                                                 
           DISPLAY "CX00095" UPON CONSOLE
000000       CLOSE 売場別精算表ＷＫＦ .                                                  
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00096.                           
000000         DISPLAY "HBHUN370-47 SQWURISS CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00096.                                                                 
           DISPLAY "CX00096" UPON CONSOLE
000000       CLOSE 回号別精算表ＷＫＦ .                                                  
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00097.                           
000000         DISPLAY "HBHUN370-48 SQWKAISS CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00097.                                                                 
           DISPLAY "CX00097" UPON CONSOLE
000000       CLOSE 団体別精算表ＷＫＦ .                                                  
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00098.                           
000000         DISPLAY "HBHUN370-49 SQWDNSSN CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00098.                                                                 
           DISPLAY "CX00098" UPON CONSOLE
000000       CLOSE エラーＷＫＦ .                                                     
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00099.                           
000000         DISPLAY "HBHUN370-50 SQTRONRI CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00099.                                                                 
           DISPLAY "CX00099" UPON CONSOLE
000000       CLOSE 売捌手数料ＷＫＦ .                                                   
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00100.                           
000000         DISPLAY "HBHUN370-51 VIWURTES CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00100.                                                                 
           DISPLAY "CX00100" UPON CONSOLE
000000       CLOSE 外部販売用売上情報ＷＫＦ .                                               
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00101.                           
000000         DISPLAY "HBHUN370-52 SQWGURAG CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00101.                                                                 
           DISPLAY "CX00101" UPON CONSOLE
000000       CLOSE 外販用障害取消不可ＷＫＦ .                                               
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00102.                           
000000         DISPLAY "HBHUN370-53 SQWGTOFK CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00102.                                                                 
           DISPLAY "CX00102" UPON CONSOLE
000000       CLOSE ＳＧ情報管理Ｆ .                                                    
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00103.                           
000000         DISPLAY "HBHUN370-54 VRSGJYO  CLOSE ERROR ",                     
000000         STOP RUN .                                                     
000000 CX00103.                                                                 
           DISPLAY "CX00103" UPON CONSOLE
000000     IF NOT(ＷＫ−世代区分 = "1")GO TO CX00104.                                  
000000         CLOSE トランザクションＦ−Ａ .                                              
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00105.                           
000000           DISPLAY "HBHUN370-55 VRTRNSA  CLOSE ERROR ",                   
000000           STOP RUN .                                                   
000000 CX00105.                                                                 
           DISPLAY "CX00105" UPON CONSOLE
000000         CLOSE 外部販売用特殊取引Ｆ−Ａ .                                             
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00106.                           
000000           DISPLAY "HBHUN370-56 VRTKSYGA CLOSE ERROR ",                   
000000           STOP RUN .                                                   
000000 CX00106.                                                                 
           DISPLAY "CX00106" UPON CONSOLE
000000         CLOSE 発売ゲームＦ−Ａ .                                                 
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00107.                           
000000           DISPLAY "HBHUN370-57 VIHATGMA CLOSE ERROR ",                   
000000           STOP RUN .                                                   
000000 CX00107.                                                                 
           DISPLAY "CX00107" UPON CONSOLE
000000     GO TO CX00108.                                                       
000000 CX00104.                                                                 
           DISPLAY "CX00104" UPON CONSOLE
000000         CLOSE トランザクションＦ−Ｂ .                                              
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00109.                           
000000           DISPLAY "HBHUN370-58 VRTRNSB  CLOSE ERROR ",                   
000000           STOP RUN .                                                   
000000 CX00109.                                                                 
           DISPLAY "CX00109" UPON CONSOLE
000000         CLOSE 外部販売用特殊取引Ｆ−Ｂ .                                             
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00110.                           
000000           DISPLAY "HBHUN370-59 VRTKSYGB CLOSE ERROR ",                   
000000           STOP RUN .                                                   
000000 CX00110.                                                                 
           DISPLAY "CX00110" UPON CONSOLE
000000         CLOSE 発売ゲームＦ−Ｂ .                                                 
000000     IF NOT(STS-FILE1 NOT = ZERO)GO TO CX00111.                           
000000           DISPLAY "HBHUN370-60 VIHATGMB CLOSE ERROR ",                   
000000           STOP RUN .                                                   
000000 CX00111.                                                                 
           DISPLAY "CX00111" UPON CONSOLE
000000 CX00108.                                                                 
           DISPLAY "CX00108" UPON CONSOLE
      *20141027修正開始
000000*       @ZCTMSGOT(MSGID = #BH001                                           
000000*                 PROGID = HBHUN370); .                                    
      *20141027修正終了
000000 CX00004. EXIT.                                                           
000000 P100-RTN .
             DISPLAY "P100-RTN"  UPON CONSOLE                                                               
000000       INITIALIZE ＷＫ−回号情報テーブル                                             
000000       INITIALIZE ＷＫ−団体別精算表                                               
000000       INITIALIZE ＷＫ−売捌手数料ＷＫＴＢＬ                                           
      *20141102追加開始
      *       INITIALIZE フラグ
      *20141102追加終了
      *20141028追加開始
           MOVE ZERO TO ＷＫ−団体別精算表回数
      *20141028追加終了
000000     MOVE 1 TO ＩＤＸゲーム                                                     
000000     MOVE 1 TO ＣＮＴゲーム                                                     
000000     MOVE ＯＦＦ TO ＦＬＧＨＴＧＭ                                                  
000000     PERFORM P110-RTN THRU CX00006 .                                      
      *20141028修正開始 
000000* CX00112. IF NOT( (ＣＮＴゲーム < 31) AND (ＦＬＧＨＴＧＭ = ＯＦＦ)                       
       CX00112. IF NOT( (ＷＫ−団体別精算表回数 < 11) AND (ＦＬＧＨＴＧＭ = ＯＦＦ)
      *20141028修正終了
000000     )GO TO CX00113.
                  DISPLAY "CX00112"  UPON CONSOLE                                                      
000000     IF NOT( (ＷＫＧ未抽せんフラグ = ＯＦＦ) AND (ＷＫＧ未発売フラグ = ＯＮ)                      
000000     )GO TO CX00114.                                                      
000000     COMPUTE ＷＫＧ回号 = ＷＫＧ回号 + 1 .                                          
000000 CX00114.
           DISPLAY "CX00114" UPON CONSOLE
           DISPLAY "CX00114"  UPON CONSOLE                                                                 
000000     MOVE ＷＫＧゲームタイプ TO ＧＭＪＹゲームタイプ                                         
000000     MOVE ＷＫＧブロックコード TO ＧＭＪＹブロックコード 
           DISPLAY "ゲーム状況Ｆ"  UPON CONSOLE                                      
000000         READ ゲーム状況Ｆ  INVALID  CONTINUE .                                 
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00115.                  
000000           DISPLAY "HBHUN370-61 VIGAMJYO READ ERROR ",                    
000000                     STS-FILE1 " " STS-FILE2                              
000000           STOP RUN .                                                   
000000 CX00115.
           DISPLAY "CX00115" UPON CONSOLE
           DISPLAY "CX00115"  UPON CONSOLE                                                                 
000000     MOVE ＷＫＧゲームタイプ TO Ｗ回−ゲームタイプ (ＣＮＴゲーム)                                 
000000     MOVE ＷＫＧブロックコード TO Ｗ回−ブロックコード (ＣＮＴゲーム)                               
000000     MOVE ＷＫＧゲームタイプ TO Ｗ団精ゲームタイプ (ＣＮＴゲーム)                                 
000000     MOVE ＷＫＧブロックコード TO Ｗ団精ブロックコード (ＣＮＴゲーム)                               
000000     MOVE ＷＫＧゲームタイプ TO Ｗ売ワゲームタイプ (ＣＮＴゲーム)                                 
000000     MOVE ＷＫＧブロックコード TO Ｗ売ワブロックコード (ＣＮＴゲーム)                               
000000     MOVE 1 TO ＣＮＴ回号 .                                                    
000000 CX00116. IF NOT( (ＣＮＴ回号 - 1 <= ＳＧＪ１継続回号数諸元値) AND ( (ＷＫＧ回号 +              
000000     ＣＮＴ回号 - 1) <= ＧＭＪＹ登録済み最大回号))GO TO CX00117.
           DISPLAY "CX00116" UPON CONSOLE
           DISPLAY "CX00116"  UPON CONSOLE                            
000000     COMPUTE Ｗ回−回号 (ＣＮＴゲーム ＣＮＴ回号) = ＷＫＧ回号 + ＣＮＴ回号 - 1                     
000000     COMPUTE Ｗ売ワ回号 (ＣＮＴゲーム ＣＮＴ回号) = ＷＫＧ回号 + ＣＮＴ回号 - 1                     
000000     COMPUTE Ｗ団精回号 (ＣＮＴゲーム ＣＮＴ回号) = ＷＫＧ回号 + ＣＮＴ回号 - 1                     
000000     MOVE ＷＫＧゲームタイプ TO ＧＡＭＥゲームタイプ                                         
000000     MOVE ＷＫＧブロックコード TO ＧＡＭＥブロックコード                                       
000000     COMPUTE ＧＡＭＥ回号 = ＷＫＧ回号 + ＣＮＴ回号 - 1 
           DISPLAY "ゲームＦ"  UPON CONSOLE                                  
000000           READ ゲームＦ  INVALID  CONTINUE .                                 
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00118.                  
000000             DISPLAY "HBHUN370-62 VIGAME READ ERROR ",                    
000000                       STS-FILE1 " " STS-FILE2                            
000000             STOP RUN .                                                 
000000 CX00118.
           DISPLAY "CX00118" UPON CONSOLE
           DISPLAY "CX00118"  UPON CONSOLE                                                                 
000000     MOVE ＷＫＧゲームタイプ TO ＧＭＲ２ゲームタイプ                                         
000000     MOVE ＧＡＭＥゲームルール番号 TO ＧＭＲ２ゲームルール番号 
           DISPLAY "ゲームルールＦ"  UPON CONSOLE                                   
000000           READ ゲームルールＦ  INVALID  CONTINUE .                              
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00119.                  
000000             DISPLAY "HBHUN370-63 VIGMRULE READ ERROR ",                  
000000                       STS-FILE1 " " STS-FILE2                            
000000             STOP RUN .                                                 
000000 CX00119.
           DISPLAY "CX00119" UPON CONSOLE
           DISPLAY "CX00119"  UPON CONSOLE                                                                 
000000     MOVE ＧＭＲ２売手テーブル番号 TO Ｗ回−売捌手数料ＴＢＬ番号 (ＣＮＴゲーム ＣＮＴ回号)                    
000000     MOVE ＧＭＲ２単価 TO Ｗ回−単価 (ＣＮＴゲーム ＣＮＴ回号)                                  
000000     COMPUTE ＣＮＴ回号 = ＣＮＴ回号 + 1 .                                          
000000     GO TO CX00116.                                                       
000000 CX00117.
           DISPLAY "CX00117" UPON CONSOLE
           DISPLAY "CX00117"  UPON CONSOLE                                                                 
000000     COMPUTE ＣＮＴゲーム = ＣＮＴゲーム + 1                                          
      *20141028追加開始
           IF ＣＮＴゲーム > 4 
               MOVE 1 TO ＣＮＴゲーム
               INITIALIZE ＷＫ−団体別精算表
               COMPUTE ＷＫ−団体別精算表回数 = ＷＫ−団体別精算表回数 + 1.
      *20141028追加終了
000000     PERFORM P110-RTN THRU CX00006 .                                      
000000     GO TO CX00112.                                                       
000000 CX00113.                                                                 
           DISPLAY "CX00113" UPON CONSOLE
000000 CX00005. EXIT.                                                           
000000 P110-RTN .
           DISPLAY "P110-RTN"  UPON CONSOLE                                                               
000000     IF NOT(ＷＫ−世代区分 = "1")GO TO CX00120.
               DISPLAY "発売ゲームＦ−Ａ"   UPON CONSOLE                                
000000         READ 発売ゲームＦ−Ａ   NEXT  ,                                          
000000           AT END MOVE ＯＮ TO ＦＬＧＨＴＧＭ.                                     
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02" AND "10"                        
000000     )GO TO CX00121.                                                      
000000           DISPLAY "HBHUN370-64 VIHATGMA READ ERROR ",                    
000000                     STS-FILE1 " " STS-FILE2                              
000000           STOP RUN .                                                   
000000 CX00121.
           DISPLAY "CX00121" UPON CONSOLE
           DISPLAY "CX00121"  UPON CONSOLE                                                      
000000     IF NOT(STS-FILE1 = "10")GO TO CX00122.                               
000000     MOVE ＯＮ TO ＦＬＧＴＲＮＳ .                                                 
000000 CX00122.  
           DISPLAY "CX00122" UPON CONSOLE
           DISPLAY "CX00122"  UPON CONSOLE                                                               
000000     IF NOT(ＦＬＧＴＲＮＳ = ＯＦＦ)GO TO CX00123.                                  
000000     MOVE 発売ゲームＲ−Ａ TO ＷＫＧレコード .                                           
000000 CX00123.  
           DISPLAY "CX00123" UPON CONSOLE
           DISPLAY "CX00123"  UPON CONSOLE                                                    
000000     GO TO CX00124.                                                       
000000 CX00120.
           DISPLAY "CX00120" UPON CONSOLE
               DISPLAY "発売ゲームＦ−Ｂ"   UPON CONSOLE                                                                 
000000         READ 発売ゲームＦ−Ｂ   NEXT  ,                                          
000000           AT END MOVE ＯＮ TO ＦＬＧＨＴＧＭ.                                     
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02" AND "10"                        
000000     )GO TO CX00125.                                                      
000000           DISPLAY "HBHUN370-65 VIHATGMB READ ERROR ",                    
000000                     STS-FILE1 " " STS-FILE2                              
000000           STOP RUN .                                                   
000000 CX00125.                                                                 
           DISPLAY "CX00125" UPON CONSOLE
000000     IF NOT(STS-FILE1 = "10")GO TO CX00126.                               
000000     MOVE ＯＮ TO ＦＬＧＴＲＮＳ .                                                 
000000 CX00126.                                                                 
           DISPLAY "CX00126" UPON CONSOLE
000000     IF NOT(ＦＬＧＨＴＧＭ = ＯＦＦ)GO TO CX00127.                                  
000000     MOVE 発売ゲームＲ−Ｂ TO ＷＫＧレコード .                                           
000000 CX00127.                                                                 
           DISPLAY "CX00127" UPON CONSOLE
000000 CX00124.                                                                 
           DISPLAY "CX00124" UPON CONSOLE
000000 CX00006. EXIT.                                                           
000000 P200-RTN .
           DISPLAY "P200-RTN"  UPON CONSOLE                                                                
000000     MOVE ＯＦＦ TO ＦＬＧＣＨＮＬ                                                  
000000     MOVE ZERO TO ＩＤＸ販売Ｃ .                                                
000000 CX00128. IF NOT( (ＦＬＧＣＨＮＬ = ＯＦＦ) AND (ＩＤＸ販売Ｃ <= ＳＧＪ１販売Ｃ数諸元値)             
000000     )GO TO CX00129.
           DISPLAY "CX00128" UPON CONSOLE
               DISPLAY "販売チャネルＦ"   UPON CONSOLE                                                      
000000         READ 販売チャネルＦ NEXT AT END CONTINUE .                              
000000     IF NOT(STS-FILE1 = ZERO OR "02")GO TO CX00130.                       
000000     GO TO CX00131.                                                       
000000 CX00130. IF NOT(STS-FILE1 = "10")GO TO CX00132.                          
           DISPLAY "CX00130" UPON CONSOLE
000000     MOVE ＯＮ TO ＦＬＧＣＨＮＬ .                                                 
000000     GO TO CX00131.                                                       
000000 CX00132.                                                                 
           DISPLAY "CX00132" UPON CONSOLE
000000           DISPLAY "HBHUN370-66 VICHNNEL READ ERROR ",                    
000000                     STS-FILE1 " " STS-FILE2                              
000000           STOP RUN .                                                   
000000 CX00131.
           DISPLAY "CX00131" UPON CONSOLE
           DISPLAY "CX00131"  UPON CONSOLE                                                                 
000000     IF NOT(ＦＬＧＣＨＮＬ = ＯＦＦ)GO TO CX00133.                                  
000000     MOVE ＣＨＮＬ販売チャネルコード TO ＩＤＸ販売Ｃ                                         
000000     MOVE ＣＨＮＬ高額券基準値 TO Ｗ販高額支払基準値 (ＩＤＸ販売Ｃ)                                
000000     MOVE ZERO TO ＩＤＸ大手業者                                                 
000000     MOVE ZERO TO ＩＤＸゲーム                                                  
000000     MOVE ZERO TO ＩＤＸ回号                                                   
000000     MOVE ＯＦＦ TO ＦＬＧＨＣＨＴ                                                  
000000     MOVE ＯＦＦ TO ＦＬＧＴＳＧＭ                                                  
000000     MOVE ZERO TO ＷＫ−ゲームタイプ                                               
000000     MOVE ZERO TO ＷＫ−ブロックコード                                              
000000     MOVE SPACE TO ＷＫ−大手業者 .                                              
000000     IF NOT(ＷＫ−販売チャネルコード = 01)GO TO CX00134.                              
000000     MOVE ＣＨＮＬ販売チャネルコード TO ＨＣＨＴ販売チャネルコード                                  
000000     MOVE LOW-VALUE TO ＨＣＨＴゲームＩＤ                                          
000000             START 販売Ｃ別手数料変更Ｇ情報Ｆ KEY NOT < ,                              
000000               ＨＣＨＴレコードキー INVALID ,                                       
000000                 MOVE ＯＮ TO ＦＬＧＨＣＨＴ .                                     
000000     IF NOT( (STS-FILE1 NOT = ZERO) AND (ＦＬＧＨＣＨＴ = ＯＮ AND                 
000000     STS-FILE1 NOT = "23"))GO TO CX00135.                                 
000000               DISPLAY "HBHUN370-67 VITSGMCH START ERROR ",               
000000                        STS-FILE1 " " STS-FILE2                           
000000              STOP RUN .                                                
000000 CX00135.                                                                 
           DISPLAY "CX00135" UPON CONSOLE
000000 CX00136. IF NOT( (ＦＬＧＨＣＨＴ = ＯＦＦ))GO TO CX00137.                          
           DISPLAY "CX00136" UPON CONSOLE
           DISPLAY "販売Ｃ別手数料変更Ｇ情報Ｆ"  UPON CONSOLE 
000000               READ  販売Ｃ別手数料変更Ｇ情報Ｆ ,                                      
000000                 NEXT AT END CONTINUE .                                   
000000     IF NOT(STS-FILE1 = ZERO OR "02")GO TO CX00138.                       
000000     GO TO CX00139.                                                       
000000 CX00138. IF NOT(STS-FILE1 = "10")GO TO CX00140.                          
           DISPLAY "CX00138" UPON CONSOLE
000000     MOVE ＯＮ TO ＦＬＧＨＣＨＴ .                                                 
000000     GO TO CX00139.                                                       
000000 CX00140.                                                                 
           DISPLAY "CX00140" UPON CONSOLE
000000                 DISPLAY "HBHUN370-68 VITSGMCH READ ERROR ",              
000000                           STS-FILE1 " " STS-FILE2                        
000000                 STOP RUN .                                             
000000 CX00139.
           DISPLAY "CX00139" UPON CONSOLE
           DISPLAY "CX00139"  UPON CONSOLE                                                                 
000000     IF NOT(ＦＬＧＨＣＨＴ = ＯＦＦ AND ＨＣＨＴ販売チャネルコード NOT = ZERO AND                
000000     ＨＣＨＴゲームＩＤ NOT = ZERO AND ＨＣＨＴ売手金額帯番号 NOT = ZERO AND                  
000000     ＨＣＨＴ販売チャネルコード = ＣＨＮＬ販売チャネルコード)GO TO CX00141.                         
000000     IF NOT(ＷＫ−ゲームタイプ = ＨＣＨＴゲームタイプ AND ＷＫ−ブロックコード = ＨＣＨＴブロックコード           
000000     )GO TO CX00142.                                                      
000000     COMPUTE ＩＤＸ回号 = ＩＤＸ回号 + 1 .                                          
000000     GO TO CX00143.                                                       
000000 CX00142.
           DISPLAY "CX00142" UPON CONSOLE
           DISPLAY "CX00142"  UPON CONSOLE                                                                 
000000     COMPUTE ＩＤＸゲーム = ＩＤＸゲーム + 1                                          
000000     MOVE 1 TO ＩＤＸ回号 .                                                    
000000 CX00143.
           DISPLAY "CX00143" UPON CONSOLE
           DISPLAY "CX00143"  UPON CONSOLE                                                                 
000000     MOVE ＨＣＨＴゲームタイプ TO Ｗ−販Ｃ別ゲームタイプ (ＩＤＸ販売Ｃ ＩＤＸゲーム)                       
000000     MOVE ＨＣＨＴブロックコード TO Ｗ−販Ｃ別ブロックコード (ＩＤＸ販売Ｃ ＩＤＸゲーム)                     
000000     MOVE ＨＣＨＴ回号 TO Ｗ−販Ｃ別回号 (ＩＤＸ販売Ｃ ＩＤＸゲーム ＩＤＸ回号)                         
000000     MOVE ＨＣＨＴ売手金額帯番号 TO Ｗ−販Ｃ別金額帯番号 (ＩＤＸ販売Ｃ ＩＤＸゲーム ＩＤＸ回号)                 
000000     MOVE ＨＣＨＴゲームタイプ TO ＷＫ−ゲームタイプ                                         
000000     MOVE ＨＣＨＴブロックコード TO ＷＫ−ブロックコード .                                     
000000     GO TO CX00144.                                                       
000000 CX00141.
           DISPLAY "CX00141" UPON CONSOLE
           DISPLAY "CX00141"  UPON CONSOLE                                                                  
000000     MOVE ＯＮ TO ＦＬＧＨＣＨＴ .                                                 
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
000000     MOVE ＣＨＮＬ販売チャネルコード TO ＴＳＧＭ販売チャネルコード                                  
000000     MOVE ZERO TO ＴＳＧＭ大手業者コード                                             
000000     MOVE LOW-VALUE TO ＴＳＧＭゲームＩＤ                                          
000000             START 金融機関手数料変更Ｇ情報Ｆ KEY NOT < ,                              
000000               ＴＳＧＭレコードキー INVALID  ,                                      
000000                 MOVE ＯＮ TO ＦＬＧＴＳＧＭ .                                     
000000     IF NOT( (STS-FILE1 NOT = ZERO) AND (ＦＬＧＴＳＧＭ = ＯＮ AND                 
000000     STS-FILE1 NOT = "23"))GO TO CX00146.                                 
000000               DISPLAY "HBHUN370-69 VITSGMKY START ERROR ",               
000000                        STS-FILE1 " " STS-FILE2                           
000000              STOP RUN .                                                
000000 CX00146.                                                                 
           DISPLAY "CX00146" UPON CONSOLE
000000 CX00147. IF NOT(ＦＬＧＴＳＧＭ = ＯＦＦ)GO TO CX00148. 
           DISPLAY "CX00147" UPON CONSOLE
           DISPLAY "金融機関手数料変更Ｇ情報Ｆ"  UPON CONSOLE                             
000000               READ  金融機関手数料変更Ｇ情報Ｆ ,                                      
000000                 NEXT AT END CONTINUE .                                   
000000     IF NOT(STS-FILE1 = ZERO OR "02")GO TO CX00149.                       
000000     GO TO CX00150.                                                       
000000 CX00149. IF NOT(STS-FILE1 = "10")GO TO CX00151.                          
           DISPLAY "CX00149" UPON CONSOLE
000000     MOVE ＯＮ TO ＦＬＧＴＳＧＭ .                                                 
000000     GO TO CX00150.                                                       
000000 CX00151.                                                                 
           DISPLAY "CX00151" UPON CONSOLE
000000                 DISPLAY "HBHUN370-70 VITSGMKY READ ERROR ",              
000000                           STS-FILE1 " " STS-FILE2                        
000000                 STOP RUN .                                             
000000 CX00150.
           DISPLAY "CX00150" UPON CONSOLE
           DISPLAY "CX00150"  UPON CONSOLE                                                                 
000000     IF NOT(ＦＬＧＴＳＧＭ = ＯＦＦ AND ＴＳＧＭ販売チャネルコード NOT = ZERO AND                
000000     ＴＳＧＭ大手業者コード NOT = SPACE AND ＴＳＧＭゲームＩＤ NOT = ZERO AND                 
000000     ＴＳＧＭ売手金額帯番号 NOT = ZERO AND ＴＳＧＭ販売チャネルコード = ＣＨＮＬ販売チャネルコード             
000000     )GO TO CX00152.                                                      
000000     IF NOT(ＷＫ−大手業者 = ＴＳＧＭ大手業者コード)GO TO CX00153.                          
000000     IF NOT(ＷＫ−ゲームタイプ = ＴＳＧＭゲームタイプ AND ＷＫ−ブロックコード = ＴＳＧＭブロックコード           
000000     )GO TO CX00154.                                                      
000000     COMPUTE ＩＤＸ回号 = ＩＤＸ回号 + 1 .                                          
000000     GO TO CX00155.                                                       
000000 CX00154.
           DISPLAY "CX00154" UPON CONSOLE
           DISPLAY "CX00154"  UPON CONSOLE                                                                 
000000     COMPUTE ＩＤＸゲーム = ＩＤＸゲーム + 1                                          
000000     MOVE 1 TO ＩＤＸ回号 .                                                    
000000 CX00155.                                                                 
           DISPLAY "CX00155" UPON CONSOLE
000000     GO TO CX00156.                                                       
000000 CX00153.
           DISPLAY "CX00153" UPON CONSOLE
           DISPLAY "CX00153"  UPON CONSOLE                                                                 
000000     COMPUTE ＩＤＸ大手業者 = ＩＤＸ大手業者 + 1                                        
      *20141028追加開始
           IF ＩＤＸ大手業者 > 9
               MOVE 1 TO ＩＤＸ大手業者
               INITIALIZE Ｗ−機関別手数料ＴＢＬ０２.
      *20141028追加終了
000000     COMPUTE ＩＤＸゲーム = ＩＤＸゲーム + 1                                          
000000     MOVE 1 TO ＩＤＸ回号 .                                                    
000000 CX00156.
           DISPLAY "CX00156" UPON CONSOLE
           DISPLAY "CX00156"  UPON CONSOLE                                                                 
000000     MOVE ＴＳＧＭ大手業者コード TO Ｗ−機関別大手業者ＣＤ０２ (ＩＤＸ大手業者)                          
000000     MOVE ＴＳＧＭゲームタイプ TO Ｗ−機関別ゲームタイプ０２ (ＩＤＸ大手業者 ＩＤＸゲーム)                    
000000     MOVE ＴＳＧＭブロックコード TO Ｗ−機関別ブロックＣＤ０２ (ＩＤＸ大手業者 ＩＤＸゲーム)                   
000000     MOVE ＴＳＧＭ回号 TO Ｗ−機関別回号０２ (ＩＤＸ大手業者 ＩＤＸゲーム ＩＤＸ回号)                      
000000     MOVE ＴＳＧＭ売手金額帯番号 TO Ｗ−機関別金額帯番号０２ (ＩＤＸ大手業者 ＩＤＸゲーム ＩＤＸ回号)              
000000     MOVE ＴＳＧＭ大手業者コード TO ＷＫ−大手業者                                          
000000     MOVE ＴＳＧＭゲームタイプ TO ＷＫ−ゲームタイプ                                         
000000     MOVE ＴＳＧＭブロックコード TO ＷＫ−ブロックコード .                                     
000000     GO TO CX00157.                                                       
000000 CX00152.
           DISPLAY "CX00152" UPON CONSOLE
           DISPLAY "CX00152"  UPON CONSOLE                                                                 
000000     MOVE ＯＮ TO ＦＬＧＴＳＧＭ .                                                 
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
000000     MOVE ＯＦＦ TO ＦＬＧＵＲＴＳ                                                  
000000     MOVE ZERO TO ＩＤＸテーブル番号                                               
000000     MOVE ZERO TO ＩＤＸ販売Ｃ                                                  
000000     MOVE 1 TO ＩＤＸ金額帯
           DISPLAY "売捌手数料Ｆ"  UPON CONSOLE                                                     
000000       READ 売捌手数料Ｆ  NEXT  AT  END  CONTINUE .                             
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00158.                  
000000         DISPLAY "HBHUN370-71 VIURTESU READ ERROR ",                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00158.                                                                 
           DISPLAY "CX00158" UPON CONSOLE
000000 CX00159. IF NOT( (ＦＬＧＵＲＴＳ = ＯＦＦ))GO TO CX00160.
           DISPLAY "CX00159" UPON CONSOLE
           DISPLAY "CX00159"  UPON CONSOLE                           
000000     MOVE ＵＲＴＳテーブル番号 TO ＩＤＸテーブル番号                                         
000000     MOVE ＵＲＴＳ販売チャネルコード TO ＩＤＸ販売Ｃ                                         
000000     MOVE 1 TO ＩＤＸ金額帯 .                                                   
000000 CX00161. IF NOT(ＩＤＸ金額帯 < 6)GO TO CX00162.
           DISPLAY "CX00161" UPON CONSOLE
           DISPLAY "CX00161"  UPON CONSOLE                                 
000000     MOVE ＵＲＴＳ売捌手数料 (ＩＤＸ金額帯) TO Ｗ売捌売捌手数料 (ＩＤＸテーブル番号 ＩＤＸ販売Ｃ                
000000     ＩＤＸ金額帯)                                                              
000000     MOVE ＵＲＴＳ売捌手数料率 (ＩＤＸ金額帯) TO Ｗ売捌売捌手数料率 (ＩＤＸテーブル番号 ＩＤＸ販売Ｃ              
000000     ＩＤＸ金額帯)                                                              
000000     COMPUTE ＩＤＸ金額帯 = ＩＤＸ金額帯 + 1 .                                        
000000     GO TO CX00161.                                                       
000000 CX00162. 
           DISPLAY "CX00162" UPON CONSOLE
               DISPLAY "売捌手数料Ｆ"  UPON CONSOLE                                                       
000000         READ 売捌手数料Ｆ  NEXT  AT  END  CONTINUE .                           
000000     IF NOT(STS-FILE1 = ZERO OR "02")GO TO CX00163.                       
000000     GO TO CX00164.                                                       
000000 CX00163. IF NOT(STS-FILE1 = "10")GO TO CX00165.                          
           DISPLAY "CX00163" UPON CONSOLE
000000     MOVE ＯＮ TO ＦＬＧＵＲＴＳ .                                                 
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
      *20141028修正開始
000000*       INITIALIZE Ｗ障害取消不可展開Ａ                                              
             INITIALIZE Ｗ障害−伝聞通番取消Ａ
             INITIALIZE Ｗ障害−識別コード取消Ａ
      *20141028修正終了
000000     MOVE ZERO TO ＣＮＴ電文通番取消                                               
000000     MOVE ZERO TO ＣＮＴ識別コード取消                                              
000000     MOVE ＯＦＦ TO ＦＬＧＧＨＴ２ .                                                
000000     IF NOT(ＷＫ−世代区分 = "1")GO TO CX00166.                                  
000000     MOVE 2 TO ＲＫ−特殊取引Ａ 
               DISPLAY "外部販売用特殊取引Ｆ−Ａ"  UPON CONSOLE                                                  
000000         READ  外部販売用特殊取引Ｆ−Ａ INVALID CONTINUE .                            
000000     IF NOT(STS-FILE1 = ZERO OR "02")GO TO CX00167.                       
000000     GO TO CX00168.                                                       
000000 CX00167. IF NOT(STS-FILE1 = "23")GO TO CX00169.                          
           DISPLAY "CX00167" UPON CONSOLE
000000     MOVE ＯＮ TO ＦＬＧＧＨＴ２ .                                                 
000000     GO TO CX00168.                                                       
000000 CX00169.                                                                 
           DISPLAY "CX00169" UPON CONSOLE
000000           DISPLAY "HBHUN370-73 VRTKSYGA READ ERROR ",                    
000000                     STS-FILE1 " " STS-FILE2                              
000000           STOP RUN .                                                   
000000 CX00168.                                                                 
           DISPLAY "CX00168" UPON CONSOLE
000000 CX00170. IF NOT(ＦＬＧＧＨＴ２ = ＯＦＦ)GO TO CX00171.                             
           DISPLAY "CX00170" UPON CONSOLE
000000     IF NOT(ＧＨＴ２特殊取引種類 = 7)GO TO CX00172.                                 
000000     IF NOT(ＧＨＴ２識別コード (1:8) = ZERO)GO TO CX00173.
           DISPLAY "CX00170"  UPON CONSOLE                         
000000     COMPUTE ＣＮＴ電文通番取消 = ＣＮＴ電文通番取消 + 1                                    
      *20141028
           IF ＣＮＴ電文通番取消 > 1000
               MOVE 1 TO ＣＮＴ電文通番取消
               INITIALIZE Ｗ障害−伝聞通番取消Ａ.
      *20141028
000000     MOVE ＧＨＴ２売場コード TO Ｗ障害−売場コード (ＣＮＴ電文通番取消)                              
000000     MOVE ＧＨＴ２電文通番 TO Ｗ障害−電文通番 (ＣＮＴ電文通番取消) .                              
000000     GO TO CX00174.                                                       
000000 CX00173.                                                                 
           DISPLAY "CX00173" UPON CONSOLE
000000     COMPUTE ＣＮＴ識別コード取消 = ＣＮＴ識別コード取消 + 1                                  
      *20141028
           IF ＣＮＴ識別コード取消 > 1000
               MOVE 1 TO ＣＮＴ識別コード取消
               INITIALIZE Ｗ障害−識別コード取消Ａ.
      *20141028
000000     MOVE ＧＨＴ２識別コード TO Ｗ障害−識別コード (ＣＮＴ識別コード取消)                             
000000     MOVE ＧＨＴ２取消区分 TO Ｗ障害−取消区分 (ＣＮＴ識別コード取消) .                             
000000 CX00174.                                                                 
           DISPLAY "CX00174" UPON CONSOLE
000000 CX00172.  
           DISPLAY "CX00172" UPON CONSOLE
               DISPLAY "CX00172外部販売用特殊取引Ｆ−Ａ"  UPON CONSOLE                                                                 
000000           READ  外部販売用特殊取引Ｆ−Ａ NEXT AT END CONTINUE .                      
000000     IF NOT(STS-FILE1 = ZERO OR "02")GO TO CX00175.                       
000000     GO TO CX00176.                                                       
000000 CX00175. IF NOT(STS-FILE1 = "10")GO TO CX00177.                          
           DISPLAY "CX00175" UPON CONSOLE
000000     MOVE ＯＮ TO ＦＬＧＧＨＴ２ .                                                 
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
000000     MOVE 2 TO ＲＫ−特殊取引Ｂ
               DISPLAY "外部販売用特殊取引Ｆ−Ｂ"  UPON CONSOLE                                                   
000000         READ  外部販売用特殊取引Ｆ−Ｂ INVALID CONTINUE .                            
000000     IF NOT(STS-FILE1 = ZERO OR "02")GO TO CX00179.                       
000000     GO TO CX00180.                                                       
000000 CX00179. IF NOT(STS-FILE1 = "23")GO TO CX00181.                          
           DISPLAY "CX00179" UPON CONSOLE
000000     MOVE ＯＮ TO ＦＬＧＧＨＴ２ .                                                 
000000     GO TO CX00180.                                                       
000000 CX00181.                                                                 
           DISPLAY "CX00181" UPON CONSOLE
000000           DISPLAY "HBHUN370-75 VRTKSYGB READ ERROR ",                    
000000                     STS-FILE1 " " STS-FILE2                              
000000           STOP RUN .                                                   
000000 CX00180.                                                                 
           DISPLAY "CX00180" UPON CONSOLE
000000 CX00182. IF NOT(ＦＬＧＧＨＴ２ = ＯＦＦ)GO TO CX00183.                             
           DISPLAY "CX00182" UPON CONSOLE
000000     IF NOT(ＧＨＴ２Ｂ特殊取引種類 = 7)GO TO CX00184.                                
000000     IF NOT(ＧＨＴ２Ｂ識別コード (1:8) = ZERO)GO TO CX00185.
           DISPLAY "CX00182"  UPON CONSOLE                        
000000     COMPUTE ＣＮＴ電文通番取消 = ＣＮＴ電文通番取消 + 1                                    
000000     MOVE ＧＨＴ２Ｂ売場コード TO Ｗ障害−売場コード (ＣＮＴ電文通番取消)                             
000000     MOVE ＧＨＴ２Ｂ電文通番 TO Ｗ障害−電文通番 (ＣＮＴ電文通番取消) .                             
000000     GO TO CX00186.                                                       
000000 CX00185.
           DISPLAY "CX00185" UPON CONSOLE
           DISPLAY "CX00185"  UPON CONSOLE                                                                 
000000     COMPUTE ＣＮＴ識別コード取消 = ＣＮＴ識別コード取消 + 1                                  
000000     MOVE ＧＨＴ２Ｂ識別コード TO Ｗ障害−識別コード (ＣＮＴ識別コード取消)                            
000000     MOVE ＧＨＴ２Ｂ取消区分 TO Ｗ障害−取消区分 (ＣＮＴ識別コード取消) .                            
000000 CX00186.                                                                 
           DISPLAY "CX00186" UPON CONSOLE
000000 CX00184.  
           DISPLAY "CX00184" UPON CONSOLE
               DISPLAY "CX00184外部販売用特殊取引Ｆ−Ｂ"  UPON CONSOLE                                                               
000000           READ  外部販売用特殊取引Ｆ−Ｂ NEXT AT END CONTINUE .                      
000000     IF NOT(STS-FILE1 = ZERO OR "02")GO TO CX00187.                       
000000     GO TO CX00188.                                                       
000000 CX00187. IF NOT(STS-FILE1 = "10")GO TO CX00189.                          
           DISPLAY "CX00187" UPON CONSOLE
000000     MOVE ＯＮ TO ＦＬＧＧＨＴ２ .                                                 
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
000000     MOVE ＣＮＴ電文通番取消 TO Ｗ障害−電文通番取消件数                                       
000000     MOVE ＣＮＴ識別コード取消 TO Ｗ障害−識別コード取消件数 .                                   
000000 CX00008. EXIT.                                                           
000000 P400-RTN .                                                               
000000     IF NOT(ＷＫ−世代区分 = "1")GO TO CX00190. 
               DISPLAY "トランザクションＦ−Ａ"  UPON CONSOLE                                 
000000         READ トランザクションＦ−Ａ   NEXT  ,                                       
000000           AT END MOVE ＯＮ TO ＦＬＧＴＲＮＳ.                                     
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02" AND "10"                        
000000     )GO TO CX00191.                                                      
000000           DISPLAY "HBHUN370-77 VITRANSA READ ERROR ",                    
000000                     STS-FILE1 " " STS-FILE2                              
000000           STOP RUN .                                                   
000000 CX00191.                                                                 
           DISPLAY "CX00191" UPON CONSOLE
000000     IF NOT(STS-FILE1 = "10")GO TO CX00192.                               
000000     MOVE ＯＮ TO ＦＬＧＴＲＮＳ .                                                 
000000 CX00192.                                                                 
           DISPLAY "CX00192" UPON CONSOLE
000000     IF NOT(ＴＲＮＡレコード格納件数 = 0)GO TO CX00193.                               
000000     MOVE ＯＮ TO ＦＬＧＴＲＮＳ .                                                 
000000     GO TO CX00194.                                                       
000000 CX00193.
           DISPLAY "CX00193" UPON CONSOLE
           DISPLAY "CX00193"  UPON CONSOLE                                                                 
000000     MOVE ＴＲＮＡレコード格納件数 TO ＷＫＴレコード格納件数 .                                   
000000 CX00194.                                                                 
           DISPLAY "CX00194" UPON CONSOLE
000000     GO TO CX00195.                                                       
000000 CX00190. 
           DISPLAY "CX00190" UPON CONSOLE
               DISPLAY "トランザクションＦ−Ｂ"  UPON CONSOLE                                                                 
000000         READ トランザクションＦ−Ｂ   NEXT  ,                                       
000000           AT END MOVE ＯＮ TO ＦＬＧＴＲＮＳ.  
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02" AND "10"                        
000000     )GO TO CX00196.                                                      
000000           DISPLAY "HBHUN370-78 VITRANSB READ ERROR ",                    
000000                     STS-FILE1 " " STS-FILE2                              
000000           STOP RUN .                                                   
000000 CX00196. 
           DISPLAY "CX00196" UPON CONSOLE
               DISPLAY "CX00196"  UPON CONSOLE                                                                
000000     IF NOT(STS-FILE1 = "10")GO TO CX00197.                               
000000     MOVE ＯＮ TO ＦＬＧＴＲＮＳ .                                                 
               DISPLAY "ＦＬＧＴＲＮＳ=" ＦＬＧＴＲＮＳ  UPON CONSOLE
000000 CX00197.
               DISPLAY "CX00197"  UPON CONSOLE                                                                  
000000     IF NOT(ＴＲＮＢレコード格納件数 = 0)GO TO CX00198.                               
000000     MOVE ＯＮ TO ＦＬＧＴＲＮＳ .                                                 
000000     GO TO CX00199.                                                       
000000 CX00198.
           DISPLAY "CX00198" UPON CONSOLE
           DISPLAY "CX00198"  UPON CONSOLE                                                                 
000000     MOVE ＴＲＮＢレコード格納件数 TO ＷＫＴレコード格納件数 .                                   
000000 CX00199.                                                                 
           DISPLAY "CX00199" UPON CONSOLE
000000 CX00195.                                                                 
           DISPLAY "CX00195" UPON CONSOLE
000000 CX00009. EXIT.                                                           
000000 P500-RTN .
           DISPLAY "P500-RTN"  UPON CONSOLE                                                               
000000     MOVE ＷＫＴ売場コード TO ＵＲＢＡ売場コード 
               DISPLAY "ＵＲＢＡ売場コード=" ＵＲＢＡ売場コード UPON CONSOLE
               DISPLAY "売場Ｆ"  UPON CONSOLE                                          
000000       READ  売場Ｆ INVALID CONTINUE .                                       
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00200.                  
000000         DISPLAY "HBHUN370-79 VIURIBA READ ERROR ",                       
000000                   STS-FILE1 " " STS-FILE2                                
000000         STOP RUN .                                                     
000000 CX00200.
           DISPLAY "CX00200" UPON CONSOLE
           DISPLAY "CX00200"  UPON CONSOLE                                                                 
000000     MOVE ＵＲＢＡ業者コード TO ＧＹＳＡ業者コード  
               DISPLAY "業者Ｆ"  UPON CONSOLE                                        
000000       READ 業者Ｆ INVALID CONTINUE .                                        
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00201.                  
000000         DISPLAY "HBHUN370-80 VIGYOSYA READ ERROR" ,                      
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00201.                                                                 
           DISPLAY "CX00201" UPON CONSOLE
000000 CX00010. EXIT.                                                           
000000 P600-RTN .
           DISPLAY "P600-RTN"  UPON CONSOLE                                                               
000000     IF NOT(ＷＫＴ取消識別コード下 NOT = ZERO)GO TO CX00202.                         
000000     IF NOT(ＷＫＴ支払識別コード下 NOT = ZERO)GO TO CX00203.                         
000000     MOVE ＯＮ TO ＦＬＧエラー                                                    
000000     MOVE '1' TO ＷＫＴ当チェックフラグ                                              
000000     PERFORM ERWK-RTN THRU CX00024 .                                      
000000     GO TO CX00204.                                                       
000000 CX00203.
           DISPLAY "CX00203" UPON CONSOLE
           DISPLAY "CX00203"  UPON CONSOLE                                                                  
000000     IF NOT(ＷＫＴ代替識別コード下 NOT = ZERO)GO TO CX00205.                         
000000     MOVE ＯＮ TO ＦＬＧエラー                                                    
000000     MOVE '2' TO ＷＫＴ当チェックフラグ                                              
000000     PERFORM ERWK-RTN THRU CX00024 .                                      
000000     GO TO CX00206.                                                       
000000 CX00205.
           DISPLAY "CX00205" UPON CONSOLE
           DISPLAY "CX00205"  UPON CONSOLE                                                                 
000000     IF NOT(ＷＫＴ発券識別コード下 = ZERO)GO TO CX00207.                             
000000     IF NOT(ＷＫＴ取消区分 = ZERO)GO TO CX00208.                                 
000000     MOVE 発券 TO ＷＪＩＫレコードＩＤ                                                
000000     PERFORM URJKWK-RTN THRU CX00014                                      
000000     COMPUTE Ｗ精−本日発券総額 = Ｗ精−本日発券総額 + ＷＫＴ金額                                
000000     MOVE ＷＫＴ売場コード TO ＩＤＸ売場コード                                            
000000     MOVE ＷＫ−売場別精算表ＷＫＲ TO 売場別精算表ＷＫＲ                                       
000000     MOVE 1 TO ＷＵＢＳ発券枚数                                                   
000000     MOVE ＷＫＴ金額 TO ＷＵＢＳ発券金額                                               
000000     PERFORM IDX-GET-RTN THRU CX00021                                     
000000     MOVE ＷＫＴ販売チャネルコード TO ＩＤＸ販売Ｃ                                          
000000     PERFORM URISABAKI-GET-RTN THRU CX00022                               
000000     MOVE 発券取消 TO ＷＪＩＫレコードＩＤ                                              
000000     PERFORM URJKWK-RTN THRU CX00014                                      
000000     COMPUTE Ｗ精−本日発券取消総額 = Ｗ精−本日発券取消総額 + ＷＫＴ金額                            
000000     MOVE 1 TO ＷＵＢＳ取消枚数                                                   
000000     MOVE ＷＫＴ金額 TO ＷＵＢＳ取消金額 .                                             
000000     IF NOT(ＷＫＴ取消解除カウンタ > ZERO)GO TO CX00209.                             
000000     COMPUTE Ｗ精−本日発券取消総額 = Ｗ精−本日発券取消総額 + (ＷＫＴ金額 * ＷＫＴ取消解除カウンタ)            
000000     COMPUTE Ｗ精−本日発券取消解除総額 = Ｗ精−本日発券取消解除総額 + (ＷＫＴ金額 *                     
000000     ＷＫＴ取消解除カウンタ) .                                                       
000000     IF NOT(ＷＫＴ取消解除カウンタ = 9)GO TO CX00210.                                
000000     MOVE ＯＮ TO Ｗ精−解除カウンタオーバ .                                            
000000 CX00210.
           DISPLAY "CX00210" UPON CONSOLE
           DISPLAY "CX00210"  UPON CONSOLE                                                                 
000000     COMPUTE ＷＵＢＳ取消枚数 = ＷＵＢＳ取消枚数 + ＷＫＴ取消解除カウンタ                            
000000     COMPUTE ＷＵＢＳ取消金額 = ＷＵＢＳ取消金額 + (ＷＫＴ金額 * ＷＫＴ取消解除カウンタ)                  
000000     MOVE ＷＫＴ取消解除カウンタ TO ＷＵＢＳ取消解除枚数                                       
000000     COMPUTE ＷＵＢＳ取消解除金額 = ＷＫＴ金額 * ＷＫＴ取消解除カウンタ .                           
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
000000     IF NOT(ＷＫＴ支払識別コード下 = ZERO)GO TO CX00212.                             
000000     IF NOT(ＷＫＴ取消支払売場コード NOT = SPACE)GO TO CX00213.                       
000000     MOVE SPACE TO ＷＫＴ取消支払売場コード                                           
000000     MOVE ZERO TO ＷＫＴ取消支払取引時刻                                             
000000     MOVE ZERO TO ＷＫＴ取消支払ＦＥＰ番号                                            
000000     MOVE ZERO TO ＷＫＴ取消支払パス通番 .                                           
000000 CX00213.
           DISPLAY "CX00213" UPON CONSOLE
           DISPLAY "CX00213"  UPON CONSOLE                                                                 
000000     IF NOT(ＷＫＴ代替識別コード下 NOT = ZERO)GO TO CX00214.                         
000000     MOVE ＯＮ TO ＦＬＧエラー                                                    
000000     MOVE '3' TO ＷＫＴ当チェックフラグ                                              
000000     PERFORM ERWK-RTN THRU CX00024 .                                      
000000     GO TO CX00215.                                                       
000000 CX00214.
           DISPLAY "CX00214" UPON CONSOLE
           DISPLAY "CX00214"  UPON CONSOLE                                                                  
000000     IF NOT(ＷＫＴ発券識別コード下 = ZERO)GO TO CX00216.                             
000000     MOVE 発券 TO ＷＪＩＫレコードＩＤ                                                
000000     PERFORM URJKWK-RTN THRU CX00014                                      
000000     PERFORM IDX-GET-RTN THRU CX00021                                     
000000     MOVE ＷＫＴ販売チャネルコード TO ＩＤＸ販売Ｃ                                          
000000     PERFORM URISABAKI-GET-RTN THRU CX00022                               
000000     PERFORM HAKKEN-RTN THRU CX00015                                      
000000     COMPUTE Ｗ精−本日発券総額 = Ｗ精−本日発券総額 + ＷＫＴ金額                                
000000     MOVE ＷＫ−売場別精算表ＷＫＲ TO 売場別精算表ＷＫＲ                                       
000000     MOVE 1 TO ＷＵＢＳ発券枚数                                                   
000000     MOVE ＷＫＴ金額 TO ＷＵＢＳ発券金額 .                                             
000000     IF NOT(ＷＫＴ取消解除カウンタ > ZERO)GO TO CX00217.                             
000000     COMPUTE Ｗ精−本日発券取消総額 = Ｗ精−本日発券取消総額 + (ＷＫＴ金額 * ＷＫＴ取消解除カウンタ)            
000000     COMPUTE Ｗ精−本日発券取消解除総額 = Ｗ精−本日発券取消解除総額 + (ＷＫＴ金額 *                     
000000     ＷＫＴ取消解除カウンタ) .                                                       
000000     IF NOT(ＷＫＴ取消解除カウンタ = 9)GO TO CX00218.                                
000000     MOVE ＯＮ TO Ｗ精−解除カウンタオーバ .                                            
000000 CX00218.
           DISPLAY "CX00218" UPON CONSOLE
           DISPLAY "CX00218"  UPON CONSOLE                                                                 
000000     MOVE ＷＫＴ取消解除カウンタ TO ＷＵＢＳ取消枚数                                         
000000     COMPUTE ＷＵＢＳ取消金額 = ＷＫＴ金額 * ＷＫＴ取消解除カウンタ                               
000000     MOVE ＷＫＴ取消解除カウンタ TO ＷＵＢＳ取消解除枚数                                       
000000     COMPUTE ＷＵＢＳ取消解除金額 = ＷＫＴ金額 * ＷＫＴ取消解除カウンタ .                           
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
000000     IF NOT(ＷＫＴ発券識別コード下 = ZERO)GO TO CX00220.                             
000000     MOVE 発券 TO ＷＪＩＫレコードＩＤ                                                
000000     PERFORM URJKWK-RTN THRU CX00014                                      
000000     PERFORM IDX-GET-RTN THRU CX00021                                     
000000     MOVE ＷＫＴ販売チャネルコード TO ＩＤＸ販売Ｃ                                          
000000     PERFORM URISABAKI-GET-RTN THRU CX00022                               
000000     PERFORM HAKKEN-RTN THRU CX00015                                      
000000     COMPUTE Ｗ精−本日発券総額 = Ｗ精−本日発券総額 + ＷＫＴ金額                                
000000     MOVE ＷＫ−売場別精算表ＷＫＲ TO 売場別精算表ＷＫＲ                                       
000000     MOVE 1 TO ＷＵＢＳ発券枚数                                                   
000000     MOVE ＷＫＴ金額 TO ＷＵＢＳ発券金額 .                                             
000000     IF NOT(ＷＫＴ取消解除カウンタ > ZERO)GO TO CX00221.                             
000000     COMPUTE Ｗ精−本日発券取消総額 = Ｗ精−本日発券取消総額 + (ＷＫＴ金額 * ＷＫＴ取消解除カウンタ)            
000000     COMPUTE Ｗ精−本日発券取消解除総額 = Ｗ精−本日発券取消解除総額 + (ＷＫＴ金額 *                     
000000     ＷＫＴ取消解除カウンタ) .                                                       
000000     IF NOT(ＷＫＴ取消解除カウンタ = 9)GO TO CX00222.                                
000000     MOVE ＯＮ TO Ｗ精−解除カウンタオーバ .                                            
000000 CX00222.
           DISPLAY "CX00222" UPON CONSOLE
           DISPLAY "CX00222"  UPON CONSOLE                                                                 
000000     MOVE ＷＫＴ取消解除カウンタ TO ＷＵＢＳ取消枚数                                         
000000     COMPUTE ＷＵＢＳ取消金額 = ＷＫＴ金額 * ＷＫＴ取消解除カウンタ                               
000000     MOVE ＷＫＴ取消解除カウンタ TO ＷＵＢＳ取消解除枚数                                       
000000     COMPUTE ＷＵＢＳ取消解除金額 = ＷＫＴ金額 * ＷＫＴ取消解除カウンタ                             
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
000000     IF NOT(ＷＫＴ支払識別コード下 NOT = ZERO)GO TO CX00223.                         
000000     MOVE ＯＮ TO ＦＬＧエラー                                                    
000000     MOVE '2' TO ＷＫＴ当チェックフラグ                                              
000000     PERFORM ERWK-RTN THRU CX00024 .                                      
000000     GO TO CX00224.                                                       
000000 CX00223.
           DISPLAY "CX00223" UPON CONSOLE
           DISPLAY "CX00223"  UPON CONSOLE                                                                 
000000     IF NOT(ＷＫＴ代替識別コード下 NOT = ZERO)GO TO CX00225.                         
000000     MOVE ＯＮ TO ＦＬＧエラー                                                    
000000     MOVE '3' TO ＷＫＴ当チェックフラグ                                              
000000     PERFORM ERWK-RTN THRU CX00024 .                                      
000000     GO TO CX00226.                                                       
000000 CX00225.
           DISPLAY "CX00225" UPON CONSOLE
           DISPLAY "CX00225"  UPON CONSOLE                                                                 
000000     IF NOT(ＷＫＴ発券識別コード下 NOT = ZERO)GO TO CX00227.                         
000000     MOVE ＯＮ TO ＦＬＧエラー                                                    
000000     MOVE '4' TO ＷＫＴ当チェックフラグ                                              
000000     PERFORM ERWK-RTN THRU CX00024 .                                      
000000     GO TO CX00228.                                                       
000000 CX00227.
           DISPLAY "CX00227" UPON CONSOLE
           DISPLAY "CX00227"  UPON CONSOLE                                                                  
000000     IF NOT(ＷＫＴ取消識別コード下 NOT = ZERO)GO TO CX00229.                         
000000     IF NOT(ＷＫＴ取消区分 = 0)GO TO CX00230.                                    
000000     MOVE ＯＮ TO ＦＬＧエラー                                                    
000000     MOVE '5' TO ＷＫＴ当チェックフラグ                                              
000000     PERFORM ERWK-RTN THRU CX00024 .                                      
000000     GO TO CX00231.                                                       
000000 CX00230.
           DISPLAY "CX00230" UPON CONSOLE
           DISPLAY "CX00230"  UPON CONSOLE                                                                  
000000     MOVE ＷＫ−外販用売上情報ＷＫＲ TO 外部販売用売上情報ＷＫＲ                                   
000000     MOVE ＧＹＳＡ業者コード TO ＷＧＵＡ業者コード                                          
000000     MOVE ＷＫＴ売場コード TO ＷＧＵＡ売場コード                                           
000000     MOVE 1 TO ＷＧＵＡ障害取消枚数                                                 
000000     MOVE ＷＫＴ金額 TO ＷＧＵＡ障害取消金額                                             
000000     MOVE 0 TO ＷＧＵＡ発券枚数                                                   
000000     MOVE 0 TO ＷＧＵＡ発券金額                                                   
000000                 WRITE 外部販売用売上情報ＷＫＲ .                                     
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
000000     MOVE 発券 TO ＷＪＩＫレコードＩＤ                                                
000000     PERFORM URJKWK-RTN THRU CX00014                                      
000000     PERFORM IDX-GET-RTN THRU CX00021                                     
000000     MOVE ＷＫＴ販売チャネルコード TO ＩＤＸ販売Ｃ                                          
000000     PERFORM URISABAKI-GET-RTN THRU CX00022                               
000000     PERFORM HAKKEN-RTN THRU CX00015                                      
000000     COMPUTE Ｗ精−本日発券総額 = Ｗ精−本日発券総額 + ＷＫＴ金額                                
000000     MOVE ＷＫ−売場別精算表ＷＫＲ TO 売場別精算表ＷＫＲ                                       
000000     MOVE 1 TO ＷＵＢＳ発券枚数                                                   
000000     MOVE ＷＫＴ金額 TO ＷＵＢＳ発券金額                                               
000000     PERFORM WUBSWK-RTN THRU CX00017                                      
000000     MOVE ＷＫ−外販用売上情報ＷＫＲ TO 外部販売用売上情報ＷＫＲ                                   
000000     MOVE ＧＹＳＡ業者コード TO ＷＧＵＡ業者コード                                          
000000     MOVE ＷＫＴ売場コード TO ＷＧＵＡ売場コード                                           
000000     MOVE 0 TO ＷＧＵＡ障害取消枚数                                                 
000000     MOVE 0 TO ＷＧＵＡ障害取消金額                                                 
000000     MOVE 1 TO ＷＧＵＡ発券枚数                                                   
000000     MOVE ＷＫＴ金額 TO ＷＧＵＡ発券金額                                               
000000               WRITE 外部販売用売上情報ＷＫＲ .                                       
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
000000     IF NOT(ＷＫＴ発券識別コード下 = ZERO)GO TO CX00235.                             
000000     MOVE ＯＮ TO ＦＬＧエラー                                                    
000000     MOVE "4" TO ＷＫＴ当チェックフラグ                                              
000000     PERFORM ERWK-RTN THRU CX00024 .                                      
000000     GO TO CX00236.                                                       
000000 CX00235.
           DISPLAY "CX00235" UPON CONSOLE
           DISPLAY "CX00235"  UPON CONSOLE                                                                 
000000     IF NOT(ＷＫＴ支払識別コード下 NOT = ZERO)GO TO CX00237.                         
000000     MOVE ＯＮ TO ＦＬＧエラー                                                    
000000     MOVE "5" TO ＷＫＴ当チェックフラグ                                              
000000     PERFORM ERWK-RTN THRU CX00024 .                                      
000000     GO TO CX00238.                                                       
000000 CX00237.
           DISPLAY "CX00237" UPON CONSOLE
           DISPLAY "CX00237"  UPON CONSOLE                                                                  
000000     MOVE 支払 TO ＷＫＡＩレコードＩＤ                                                
000000     PERFORM KSWK-RTN THRU CX00016 .                                      
000000     IF NOT(ＷＫＴ取消識別コード下 NOT = ZERO)GO TO CX00239.                         
000000     MOVE 支払取消 TO ＷＫＡＩレコードＩＤ                                              
000000     PERFORM KSWK-RTN THRU CX00016                                        
000000     MOVE ＷＫ−売場別精算表ＷＫＲ TO 売場別精算表ＷＫＲ                                       
000000     MOVE 1 TO ＷＵＢＳ支払枚数                                                   
000000     MOVE ＷＫＴ金額 TO ＷＵＢＳ支払金額                                               
000000     MOVE 1 TO ＷＵＢＳ支払取消枚数                                                 
000000     MOVE ＷＫＴ金額 TO ＷＵＢＳ支払取消金額                                             
000000     PERFORM WUBSWK-RTN THRU CX00017 .                                    
000000     GO TO CX00240.                                                       
000000 CX00239.
           DISPLAY "CX00239" UPON CONSOLE
           DISPLAY "CX00239"  UPON CONSOLE                                                                 
000000     MOVE 支払 TO ＷＪＩＫレコードＩＤ                                                
000000     PERFORM URJKWK-RTN THRU CX00014                                      
000000     MOVE ＷＫ−売場別精算表ＷＫＲ TO 売場別精算表ＷＫＲ                                       
000000     MOVE 1 TO ＷＵＢＳ支払枚数                                                   
000000     MOVE ＷＫＴ金額 TO ＷＵＢＳ支払金額                                               
000000     PERFORM WUBSWK-RTN THRU CX00017                                      
000000     MOVE ＷＫＴ販売チャネルコード TO ＩＤＸ販売Ｃ .                                        
000000     IF NOT(ＷＫＴ金額 >= Ｗ販高額支払基準値 (ＩＤＸ販売Ｃ))GO TO CX00241.                    
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
000000     MOVE ＷＫＴ売場コード TO ＷＪＩＫ売場コード                                           
000000     MOVE ＷＫＴ受付時刻 TO ＷＪＩＫ取引時刻                                             
000000     MOVE ＷＫＴゲームタイプ TO ＷＪＩＫゲームタイプ                                         
000000     MOVE ＷＫＴブロックコード TO ＷＪＩＫブロックコード                                       
000000     MOVE ＷＫＴ金額 TO ＷＪＩＫ金額                                                 
000000     MOVE ＷＫＴ出力番号 TO ＷＪＩＫ出力番号                                             
000000       WRITE 売場時間帯別売上ＷＫＲ .                                                
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00242.                  
000000         DISPLAY "HBHUN370-83 SQWJIKAN WRITE ERROR ",                     
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00242.                                                                 
           DISPLAY "CX00242" UPON CONSOLE
000000 CX00014. EXIT.                                                           
000000 HAKKEN-RTN .
           DISPLAY "HAKKEN-RTN"  UPON CONSOLE                                                             
000000       INITIALIZE 売場別売上ＷＫＲ                                                
000000     MOVE ＷＫＴ売場コード TO ＷＵＢＵ売場コード                                           
000000     MOVE ＷＫＴゲームタイプ TO ＷＵＢＵゲームタイプ                                         
000000     MOVE ＷＫＴブロックコード TO ＷＵＢＵブロックコード                                       
000000     COMPUTE ＷＵＢＵ売上金額 = ＷＫＴ金額 / ＷＫＴ当初継続回号数                                
000000     MOVE ＷＫＴ当初継続回号数 TO ＷＫ−継続回号数                                          
000000     MOVE ZERO TO ＷＫ−回号 .                                                 
000000 CX00243. IF NOT(ＷＫ−継続回号数 > ZERO)GO TO CX00244.
           DISPLAY "CX00243" UPON CONSOLE
           DISPLAY "CX00243"  UPON CONSOLE                           
000000     COMPUTE ＷＵＢＵ回号 = ＷＫＴ開始回号 + ＷＫ−回号                                     
000000         WRITE 売場別売上ＷＫＲ .                                                 
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00245.                  
000000           DISPLAY "HBHUN370-84 SQWURIUR WRITE ERROR ",                   
000000                    STS-FILE1 " " STS-FILE2                               
000000           STOP RUN .                                                   
000000 CX00245.
           DISPLAY "CX00245" UPON CONSOLE
           DISPLAY "CX00245"  UPON CONSOLE                                                                 
000000     COMPUTE ＷＫ−継続回号数 = ＷＫ−継続回号数 - 1                                      
000000     COMPUTE ＷＫ−回号 = ＷＫ−回号 + 1 .                                          
000000     GO TO CX00243.                                                       
000000 CX00244.
           DISPLAY "CX00244" UPON CONSOLE
           DISPLAY "CX00244"  UPON CONSOLE                                                                 
000000     IF NOT(ＷＫＴゲーム種別 = ナンバーズ)GO TO CX00246.                               
000000         INITIALIZE  購入日別申込状況ＷＫＲ                                          
000000     MOVE ＷＫＴゲームタイプ TO ＷＫＮＹゲームタイプ                                         
000000     MOVE ＷＫＴブロックコード TO ＷＫＮＹブロックコード .                                     
000000     IF NOT(ＷＫ−販売チャネルコード = 01)GO TO CX00247.                              
000000     COMPUTE ＷＫＮＹ口数 = ＷＫＴ口数 * ＷＫＴ当初継続回号数 .                                
000000     GO TO CX00248.                                                       
000000 CX00247.
           DISPLAY "CX00247" UPON CONSOLE
           DISPLAY "CX00247"  UPON CONSOLE                                                                  
000000     MOVE ＷＫＴ口数 TO ＷＫＮＹ口数 .                                               
000000 CX00248.
           DISPLAY "CX00248" UPON CONSOLE
           DISPLAY "CX00248"  UPON CONSOLE                                                                  
000000     MOVE ＷＫＴパネル数 TO ＩＤＸパネル .                                             
000000 CX00249. IF NOT(ＩＤＸパネル > ZERO)GO TO CX00250.
           DISPLAY "CX00249" UPON CONSOLE
           DISPLAY "CX00249"  UPON CONSOLE                             
000000     MOVE ＷＫＴ申込数字 (ＩＤＸパネル) TO ＷＫＮＹ申込数字                                    
000000     MOVE ＷＫＴ申込タイプ (ＩＤＸパネル) TO ＷＫＮＹタイプ区分                                  
000000     MOVE ＷＫＴクイックピック区分 (ＩＤＸパネル) TO ＷＫＮＹクイックピック                            
000000           WRITE 購入日別申込状況ＷＫＲ .                                            
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00251.                  
000000             DISPLAY "HBHUN370-85 SQWKNYJY WRITE ERROR ",                 
000000                      STS-FILE1 " " STS-FILE2                             
000000             STOP RUN .                                                 
000000 CX00251.
           DISPLAY "CX00251" UPON CONSOLE
           DISPLAY "CX00251"  UPON CONSOLE                                                                 
000000     COMPUTE ＩＤＸパネル = ＩＤＸパネル - 1 .                                        
000000     GO TO CX00249.                                                       
000000 CX00250.
           DISPLAY "CX00250" UPON CONSOLE
           DISPLAY "CX00250"  UPON CONSOLE                                                      
000000 CX00246.
           DISPLAY "CX00246"  UPON CONSOLE                                                                 
000000     IF NOT(ＷＫＴゲーム種別 = ロト AND ＷＫＴ申込タイプ (1) NOT = 通常                       
000000     )GO TO CX00252.                                                      
      *20141028修正開始
000000*         @ZSNCNBMP( BUNSI = ＷＫＴ分子 ,                                       
000000*                    BUNBO = ＷＫＴ分母 ,                                       
000000*                    RTYPE = ＷＫＴ申込タイプ(1) ,                                 
000000*                    RNUMS = ＷＫ−申込通り数 );                                   
       ZSNCNBMP.
      *** 初期化 ***                                                  
           INITIALIZE     KUMN-PARAM.                                                                       
      *** パラメータチェック ***                                   
           IF  ＷＫＴ分子  =  LOW-VALUE    THEN                                              
                   DISPLAY  "分子を指定して下さい"                               
                   STOP RUN.                                                                                               
           IF  ＷＫＴ分母  =  LOW-VALUE    THEN                                              
                   DISPLAY  "分母を指定して下さい"                               
                   STOP RUN.
           IF  ＷＫＴ申込タイプ(1)  =  LOW-VALUE    THEN                                              
                   DISPLAY  "申込タイプを指定して下さい"                         
                   STOP RUN.
           IF  ＷＫ−申込通り数  =  LOW-VALUE    THEN                                              
                   DISPLAY  "申込通り数を指定して下さい"                         
                   STOP RUN.
      *** ニューメリックチェック ***                                    
           IF ＷＫＴ分子  NOT  NUMERIC  OR                                
              ＷＫＴ分母  NOT  NUMERIC  OR                                   
              ＷＫＴ申込タイプ(1)  NOT  NUMERIC                                        
              STOP RUN.                                                                
      *** 申込通り数の算出 ***                                          
           IF   ＷＫＴ申込タイプ(1)  =  "1"                                            
                COMPUTE ＫＵＭＮ組み合わせ数 = ＷＫＴ分母 - ＷＫＴ分子 + 1
           ELSE                                                               
      *** パラメータ設定 ***                                    
                COMPUTE ＫＵＭＮ数値Ｎ = ＷＫＴ分子 + ＷＫＴ申込タイプ(1) - 2
                MOVE ＷＫＴ分子 TO ＫＵＭＮ数値Ｒ                                                                  
      *** 組み合わせ数算出モジュール呼び出し ***
                CALL "HSAAL250" USING KUMN-PARAM.                                                                
      *** 出力パラメータ移送 ***                                
           MOVE ＫＵＭＮ組み合わせ数 TO ＷＫ−申込通り数.
           DISPLAY  "AAAAAAAAAAAAAAAAAAAAAAAAAAAAA"  UPON CONSOLE
      *20141028修正終了
000000     COMPUTE Ｗ売ワ売上金額 (ＩＤＸゲーム ＩＤＸ回号 ＩＤＸ販売Ｃ) = Ｗ売ワ売上金額 (ＩＤＸゲーム              
000000     ＩＤＸ回号 ＩＤＸ販売Ｃ) + ＷＫＴ金額 .                                              
000000     IF NOT(Ｗ売捌売捌手数料 (ＩＤＸテーブル番号 ＣＮＴ販売Ｃ ＣＮＴ金額帯) NOT = 0                    
000000     )GO TO CX00253.                                                      
000000     MOVE Ｗ売捌売捌手数料 (ＩＤＸテーブル番号 ＣＮＴ販売Ｃ ＣＮＴ金額帯) TO ＷＫ−売捌手数料 .                
000000     GO TO CX00254.                                                       
000000 CX00253.
           DISPLAY "CX00253" UPON CONSOLE
           DISPLAY "CX00253"  UPON CONSOLE                                                                 
000000     COMPUTE ＷＫ−売捌手数料 = Ｗ売捌売捌手数料率 (ＩＤＸテーブル番号 ＣＮＴ販売Ｃ ＣＮＴ金額帯) /             
000000     100 * Ｗ回−単価 (ＩＤＸゲーム ＩＤＸ回号) .                                         
000000 CX00254.
           DISPLAY "CX00254" UPON CONSOLE
           DISPLAY "CX00254"  UPON CONSOLE                                                                 
000000     COMPUTE Ｗ売ワ累計手数料 (ＩＤＸゲーム ＩＤＸ回号 ＩＤＸ販売Ｃ ＣＮＴ金額帯) = Ｗ売ワ累計手数料 (           
000000     ＩＤＸゲーム ＩＤＸ回号 ＩＤＸ販売Ｃ ＣＮＴ金額帯) + ＷＫ−売捌手数料 * ＷＫＴ口数 * ＷＫ−申込通り数 .          
000000     IF NOT(ＣＮＴ金額帯 > 1)GO TO CX00255.                                     
000000     IF NOT(Ｗ売捌売捌手数料 (ＩＤＸテーブル番号 ＣＮＴ販売Ｃ 1) NOT = 0                         
000000     )GO TO CX00256.                                                      
000000     COMPUTE Ｗ売ワ手数料補正額 (ＩＤＸゲーム ＩＤＸ回号 ＩＤＸ販売Ｃ) = Ｗ売ワ手数料補正額 (ＩＤＸゲーム          
000000     ＩＤＸ回号 ＩＤＸ販売Ｃ) + Ｗ売捌売捌手数料 (ＩＤＸテーブル番号 ＣＮＴ販売Ｃ 1) * ＷＫＴ口数 *              
000000     ＷＫ−申込通り数 - ＷＫ−売捌手数料 * ＷＫＴ口数 * ＷＫ−申込通り数 .                             
000000     GO TO CX00257.                                                       
000000 CX00256. 
           DISPLAY "CX00256" UPON CONSOLE
           DISPLAY "CX00256"  UPON CONSOLE                                                                 
000000     COMPUTE Ｗ売ワ手数料補正額 (ＩＤＸゲーム ＩＤＸ回号 ＩＤＸ販売Ｃ) = Ｗ売ワ手数料補正額 (ＩＤＸゲーム          
000000     ＩＤＸ回号 ＩＤＸ販売Ｃ) + Ｗ売捌売捌手数料率 (ＩＤＸテーブル番号 ＣＮＴ販売Ｃ 1) / 100 *               
000000     Ｗ回−単価 (ＩＤＸゲーム ＩＤＸ回号) * ＷＫＴ口数 * ＷＫ−申込通り数 - ＷＫ−売捌手数料 * ＷＫＴ口数           
000000     * ＷＫ−申込通り数 .                                                         
000000 CX00257.                                                                 
           DISPLAY "CX00257" UPON CONSOLE
000000 CX00255.
           DISPLAY "CX00255" UPON CONSOLE
           DISPLAY "CX00255"  UPON CONSOLE                                                                 
000000     MOVE ＷＫＴ販売チャネルコード TO Ｗ売ワ販売チャネルコード (ＩＤＸゲーム ＩＤＸ回号 ＩＤＸ販売Ｃ) .            
000000     GO TO CX00258.                                                       
000000 CX00252.
           DISPLAY "CX00252" UPON CONSOLE
           DISPLAY "CX00252"  UPON CONSOLE                                                                 
000000     MOVE 1 TO ＷＫ−申込通り数                                                   
000000     MOVE ＷＫＴ当初継続回号数 TO ＷＫ−継続回号数 .                                        
000000 CX00259. IF NOT(ＷＫ−継続回号数 > ZERO)GO TO CX00260.
           DISPLAY "CX00259" UPON CONSOLE
           DISPLAY "CX00259"  UPON CONSOLE                           
000000     COMPUTE Ｗ売ワ売上金額 (ＩＤＸゲーム ＩＤＸ回号 ＩＤＸ販売Ｃ) = Ｗ売ワ売上金額 (ＩＤＸゲーム              
000000     ＩＤＸ回号 ＩＤＸ販売Ｃ) + (ＷＫＴ金額 / ＷＫＴ当初継続回号数) .                               
000000     IF NOT(Ｗ売捌売捌手数料 (ＩＤＸテーブル番号 ＣＮＴ販売Ｃ ＣＮＴ金額帯) NOT = 0                    
000000     )GO TO CX00261.                                                      
000000     MOVE Ｗ売捌売捌手数料 (ＩＤＸテーブル番号 ＣＮＴ販売Ｃ ＣＮＴ金額帯) TO ＷＫ−売捌手数料 .                
000000     GO TO CX00262.                                                       
000000 CX00261.
           DISPLAY "CX00261" UPON CONSOLE
           DISPLAY "CX00261"  UPON CONSOLE                                                                  
000000     COMPUTE ＷＫ−売捌手数料 = Ｗ売捌売捌手数料率 (ＩＤＸテーブル番号 ＣＮＴ販売Ｃ ＣＮＴ金額帯) /             
000000     100 * Ｗ回−単価 (ＩＤＸゲーム ＩＤＸ回号) .                                         
000000 CX00262.
           DISPLAY "CX00262" UPON CONSOLE
           DISPLAY "CX00262"  UPON CONSOLE                                                                  
000000     COMPUTE Ｗ売ワ累計手数料 (ＩＤＸゲーム ＩＤＸ回号 ＩＤＸ販売Ｃ ＣＮＴ金額帯) = Ｗ売ワ累計手数料 (           
000000     ＩＤＸゲーム ＩＤＸ回号 ＩＤＸ販売Ｃ ＣＮＴ金額帯) +                                        
000000           ＷＫ−売捌手数料 *  ,                                                  
000000                            ＷＫＴ口数    *  ＷＫＴパネル数 .                         
000000     IF NOT(ＣＮＴ金額帯 > 1)GO TO CX00263.                                     
000000     IF NOT(Ｗ売捌売捌手数料 (ＩＤＸテーブル番号 ＣＮＴ販売Ｃ 1) NOT = 0                         
000000     )GO TO CX00264.                                                      
000000     COMPUTE Ｗ売ワ手数料補正額 (ＩＤＸゲーム ＩＤＸ回号 ＩＤＸ販売Ｃ) = Ｗ売ワ手数料補正額 (ＩＤＸゲーム          
000000     ＩＤＸ回号 ＩＤＸ販売Ｃ) + Ｗ売捌売捌手数料 (ＩＤＸテーブル番号 ＣＮＴ販売Ｃ 1) * ＷＫＴ口数 *              
000000     ＷＫＴパネル数 - ＷＫ−売捌手数料 * ＷＫＴ口数 * ＷＫＴパネル数 .                               
000000     GO TO CX00265.                                                       
000000 CX00264.
           DISPLAY "CX00264" UPON CONSOLE
           DISPLAY "CX00264"  UPON CONSOLE                                                                 
000000     COMPUTE Ｗ売ワ手数料補正額 (ＩＤＸゲーム ＩＤＸ回号 ＩＤＸ販売Ｃ) = Ｗ売ワ手数料補正額 (ＩＤＸゲーム          
000000     ＩＤＸ回号 ＩＤＸ販売Ｃ) + Ｗ売捌売捌手数料率 (ＩＤＸテーブル番号 ＣＮＴ販売Ｃ 1) / 100 *               
000000     Ｗ回−単価 (ＩＤＸゲーム ＩＤＸ回号) * ＷＫＴ口数 * ＷＫＴパネル数 - ＷＫ−売捌手数料 * ＷＫＴ口数 *          
000000     ＷＫＴパネル数 .                                                            
000000 CX00265.                                                                 
           DISPLAY "CX00265" UPON CONSOLE
000000 CX00263.
           DISPLAY "CX00263" UPON CONSOLE
           DISPLAY "CX00263"  UPON CONSOLE                                                                 
000000     MOVE ＷＫＴ販売チャネルコード TO Ｗ売ワ販売チャネルコード (ＩＤＸゲーム ＩＤＸ回号 ＩＤＸ販売Ｃ)              
000000     COMPUTE ＩＤＸ回号 = ＩＤＸ回号 + 1                                            
000000     COMPUTE ＷＫ−継続回号数 = ＷＫ−継続回号数 - 1 .                                    
000000     GO TO CX00259.                                                       
000000 CX00260.                                                                 
           DISPLAY "CX00260" UPON CONSOLE
000000 CX00258. 
           DISPLAY "CX00258" UPON CONSOLE
           DISPLAY "CX00258"  UPON CONSOLE                                                                 
000000     MOVE ＵＲＢＡ売上計上団体コード TO ＩＤＸ団体                                          
000000     MOVE ＩＤＸ回号２ TO ＩＤＸ回号                                                 
000000     MOVE ＷＫＴ当初継続回号数 TO ＷＫ−継続回号数 .                                        
000000 CX00266. IF NOT(ＷＫ−継続回号数 > ZERO)GO TO CX00267.
           DISPLAY "CX00266" UPON CONSOLE
           DISPLAY "CX00266"  UPON CONSOLE                           
000000     COMPUTE Ｗ団精団体別売上 (ＩＤＸゲーム ＩＤＸ回号 ＩＤＸ団体) = Ｗ団精団体別売上 (ＩＤＸゲーム             
000000     ＩＤＸ回号 ＩＤＸ団体) + ＷＫＴ金額 / ＷＫＴ当初継続回号数                                    
000000     MOVE ＧＹＳＡ業者コード TO Ｗ団精業者コード (ＩＤＸゲーム ＩＤＸ回号 ＩＤＸ団体)                      
000000     MOVE ＷＫＴ販売チャネルコード TO Ｗ団精販売チャネルコード (ＩＤＸゲーム ＩＤＸ回号 ＩＤＸ団体)               
000000     COMPUTE ＷＫ−継続回号数 = ＷＫ−継続回号数 - 1                                      
000000     COMPUTE ＩＤＸ回号 = ＩＤＸ回号 + 1 .                                          
000000     GO TO CX00266.                                                       
000000 CX00267.
           DISPLAY "CX00267" UPON CONSOLE
           DISPLAY "CX00267"  UPON CONSOLE                                                                 
000000     MOVE ＩＤＸ回号２ TO ＩＤＸ回号 .                                               
000000 CX00015. EXIT.                                                           
000000 KSWK-RTN . 
           DISPLAY "KSWK-RTN"  UPON CONSOLE                                                              
000000       INITIALIZE  ＷＫＡＩ支払情報                                               
000000       INITIALIZE  ＷＫＡＩコンビ支払情報                                            
000000     MOVE ＷＫＴゲームタイプ TO ＷＫＡＩゲームタイプ                                         
000000     MOVE ＷＫＴブロックコード TO ＷＫＡＩブロックコード .                                     
000000     IF NOT( (ＷＫＴコンビ当せん口数 (1) = ZERO) AND (ＷＫＴコンビ当せん口数 (2) =              
000000     ZERO) AND (ＷＫＴコンビ当せん口数 (3) = ZERO) AND (ＷＫＴコンビ当せん口数 (4) =            
000000     ZERO) AND (ＷＫＴコンビ当せん口数 (5) = ZERO) AND (ＷＫＴコンビ当せん口数 (6) =            
000000     ZERO) AND (ＷＫＴコンビ当せん口数 (7) = ZERO) AND (ＷＫＴコンビ当せん口数 (8) =            
000000     ZERO) AND (ＷＫＴコンビ当せん口数 (9) = ZERO) AND (ＷＫＴコンビ当せん口数 (10) =           
000000     ZERO) AND (ＷＫＴコンビ当せん口数 (11) = ZERO))GO TO CX00268.                   
000000     MOVE ＷＫＴ口数 TO ＷＫＡＩ口数                                                 
000000     MOVE 1 TO ＩＤＸ回号                                                      
000000     MOVE 1 TO ＣＮＴ回号                                                      
000000     MOVE 1 TO ＩＤＸパネル                                                     
000000     MOVE 1 TO ＣＮＴパネル .                                                   
000000     IF NOT(ＷＫＴパネル数 > 1)GO TO CX00269.                                    
000000 CX00270. IF NOT(ＣＮＴパネル < 6 AND ＣＮＴパネル <= ＷＫＴパネル数                         
000000     )GO TO CX00271.
           DISPLAY "CX00270" UPON CONSOLE
           DISPLAY "CX00270"  UPON CONSOLE                                                      
000000     IF NOT(ＷＫＴ当せん等級 (ＣＮＴパネル) > ZERO)GO TO CX00272.                       
000000     MOVE ＷＫＴ開始回号 TO ＷＫＡＩ支払回号 (ＩＤＸパネル)                                    
000000     MOVE ＷＫＴ当せん等級 (ＣＮＴパネル) TO ＷＫＡＩ支払等級 (ＩＤＸパネル)                          
000000     COMPUTE ＩＤＸパネル = ＩＤＸパネル + 1 .                                        
000000 CX00272. 
           DISPLAY "CX00272" UPON CONSOLE
           DISPLAY "CX00272"  UPON CONSOLE                                                                 
000000     COMPUTE ＣＮＴパネル = ＣＮＴパネル + 1 .                                        
000000     GO TO CX00270.                                                       
000000 CX00271.                                                                 
           DISPLAY "CX00271" UPON CONSOLE
000000     GO TO CX00273.                                                       
000000 CX00269.                                                                 
           DISPLAY "CX00269" UPON CONSOLE
000000 CX00274. IF NOT(ＣＮＴ回号 < 6 AND ＣＮＴ回号 <= ＷＫＴ当初継続回号数                        
000000     )GO TO CX00275.
           DISPLAY "CX00274" UPON CONSOLE
           DISPLAY "CX00274"  UPON CONSOLE                                                      
000000     IF NOT(ＷＫＴ当せん等級 (ＣＮＴ回号) > ZERO)GO TO CX00276.                        
000000     COMPUTE ＷＫＡＩ支払回号 (ＩＤＸ回号) = ＷＫＴ開始回号 + ＣＮＴ回号 - 1                       
000000     MOVE ＷＫＴ当せん等級 (ＣＮＴ回号) TO ＷＫＡＩ支払等級 (ＩＤＸ回号)                            
000000     COMPUTE ＩＤＸ回号 = ＩＤＸ回号 + 1 .                                          
000000 CX00276. 
           DISPLAY "CX00276" UPON CONSOLE
           DISPLAY "CX00276"  UPON CONSOLE                                                                
000000     COMPUTE ＣＮＴ回号 = ＣＮＴ回号 + 1 .                                          
000000     GO TO CX00274.                                                       
000000 CX00275.                                                                 
           DISPLAY "CX00275" UPON CONSOLE
000000 CX00273.                                                                 
           DISPLAY "CX00273" UPON CONSOLE
000000     GO TO CX00277.                                                       
000000 CX00268.
           DISPLAY "CX00268" UPON CONSOLE
           DISPLAY "CX00268"  UPON CONSOLE                                                                  
000000     MOVE 0 TO ＷＫＡＩ口数                                                     
000000     MOVE ＷＫＴ開始回号 TO ＷＫＡＩコンビ支払回号                                          
000000     MOVE ＷＫＴ開始回号 TO ＷＫＡＩ支払回号 (1)                                         
000000     MOVE ＷＫＴコンビ当せん口数 (1) TO ＷＫＡＩ口数１                                      
000000     MOVE ＷＫＴコンビ当せん口数 (2) TO ＷＫＡＩ口数２                                      
000000     MOVE ＷＫＴコンビ当せん口数 (3) TO ＷＫ−口数                                        
000000     MOVE ＷＫ−口数 TO ＷＫＡＩ口数３                                                
000000     MOVE ＷＫＴコンビ当せん口数 (4) TO ＷＫ−口数                                        
000000     MOVE ＷＫ−口数 TO ＷＫＡＩ口数４                                                
000000     MOVE ＷＫＴコンビ当せん口数 (5) TO ＷＫ−口数                                        
000000     MOVE ＷＫ−口数 TO ＷＫＡＩ口数５                                                
000000     MOVE ＷＫＴコンビ当せん口数 (6) TO ＷＫ−口数                                        
000000     MOVE ＷＫ−口数 TO ＷＫＡＩ口数６                                                
000000     MOVE ＷＫＴコンビ当せん口数 (7) TO ＷＫ−口数                                        
000000     MOVE ＷＫ−口数 TO ＷＫＡＩ口数７                                                
000000     MOVE ＷＫＴコンビ当せん口数 (8) TO ＷＫ−口数                                        
000000     MOVE ＷＫ−口数 TO ＷＫＡＩ口数８                                                
000000     MOVE ＷＫＴコンビ当せん口数 (9) TO ＷＫ−口数                                        
000000     MOVE ＷＫ−口数 TO ＷＫＡＩ口数９                                                
000000     MOVE ＷＫＴコンビ当せん口数 (10) TO ＷＫ−口数                                       
000000     MOVE ＷＫ−口数 TO ＷＫＡＩ口数１０                                               
000000     MOVE ＷＫＴコンビ当せん口数 (11) TO ＷＫ−口数                                       
000000     MOVE ＷＫ−口数 TO ＷＫＡＩ口数１１ .                                             
000000 CX00277.
           DISPLAY "CX00277" UPON CONSOLE
           DISPLAY "CX00277"  UPON CONSOLE                                                                  
000000       WRITE 回号別精算表ＷＫＲ .                                                  
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00278.                  
000000         DISPLAY "HBHUN370-86 SQWKAISS WRITE ERROR ",                     
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00278.                                                                 
           DISPLAY "CX00278" UPON CONSOLE
000000 CX00016. EXIT.                                                           
000000 WUBSWK-RTN .
           DISPLAY "WUBSWK-RTN"  UPON CONSOLE                                                             
000000     MOVE ＷＫＴ売場コード TO ＷＵＢＳ売場コード                                           
000000     MOVE ＷＫＴゲームタイプ TO ＷＵＢＳゲームタイプ                                         
000000     MOVE ＷＫＴブロックコード TO ＷＵＢＳブロックコード                                       
000000       INITIALIZE ＷＵＢＳ金額帯別売手情報                                            
000000     MOVE 0 TO ＷＵＢＳ売捌手数料金額                                                
000000     MOVE 0 TO ＷＵＢＳ手数料補正額 .                                               
000000     IF NOT(ＷＫＴレコードＩＤ = 発券 AND ＷＫＴ取消識別コード上 = 0)GO TO CX00279.             
000000     IF NOT(Ｗ売捌売捌手数料 (ＩＤＸテーブル番号 ＣＮＴ販売Ｃ ＣＮＴ金額帯) NOT = 0                    
000000     )GO TO CX00280.                                                      
000000     MOVE Ｗ売捌売捌手数料 (ＩＤＸテーブル番号 ＣＮＴ販売Ｃ ＣＮＴ金額帯) TO ＷＫ−売捌手数料 .                
000000     GO TO CX00281.                                                       
000000 CX00280.
           DISPLAY "CX00280" UPON CONSOLE
           DISPLAY "CX00280"  UPON CONSOLE                                                                  
000000     COMPUTE ＷＫ−売捌手数料 = Ｗ売捌売捌手数料率 (ＩＤＸテーブル番号 ＣＮＴ販売Ｃ ＣＮＴ金額帯) /             
000000     100 * Ｗ回−単価 (ＩＤＸゲーム ＩＤＸ回号) .                                         
000000 CX00281.
           DISPLAY "CX00281" UPON CONSOLE
           DISPLAY "CX00281"  UPON CONSOLE                                                                 
000000     COMPUTE ＷＵＢＳ金額帯別売捌手数料 (ＣＮＴ金額帯) = ＷＫ−売捌手数料 * ＷＫＴパネル数 *                
000000     ＷＫＴ当初継続回号数 * ＷＫＴ口数 * ＷＫ−申込通り数                                        
000000     COMPUTE ＷＵＢＳ売捌手数料金額 = ＷＫ−売捌手数料 * ＷＫＴパネル数 * ＷＫＴ当初継続回号数 *              
000000     ＷＫＴ口数 * ＷＫ−申込通り数 .                                                   
000000     IF NOT(ＣＮＴ金額帯 > 1)GO TO CX00282.                                     
000000     IF NOT(Ｗ売捌売捌手数料 (ＩＤＸテーブル番号 ＣＮＴ販売Ｃ 1) NOT = 0                         
000000     )GO TO CX00283.                                                      
000000     COMPUTE ＷＵＢＳ手数料補正額 = (Ｗ売捌売捌手数料 (ＩＤＸテーブル番号 ＣＮＴ販売Ｃ 1) * ＷＫＴ口数          
000000     * ＷＫＴパネル数 * ＷＫＴ当初継続回号数 * ＷＫ−申込通り数) - (ＷＫ−売捌手数料 * ＷＫＴ口数 *             
000000     ＷＫＴパネル数 * ＷＫＴ当初継続回号数 * ＷＫ−申込通り数) .                                   
000000     GO TO CX00284.                                                       
000000 CX00283. 
           DISPLAY "CX00283" UPON CONSOLE
           DISPLAY "CX00283"  UPON CONSOLE                                                                
000000     COMPUTE ＷＵＢＳ手数料補正額 = (Ｗ売捌売捌手数料率 (ＩＤＸテーブル番号 ＣＮＴ販売Ｃ 1) / 100           
000000     * Ｗ回−単価 (ＩＤＸゲーム ＩＤＸ回号) * ＷＫＴ口数 * ＷＫＴパネル数 * ＷＫＴ当初継続回号数 *              
000000     ＷＫ−申込通り数) - (ＷＫ−売捌手数料 * ＷＫＴ口数 * ＷＫＴパネル数 * ＷＫＴ当初継続回号数 *               
000000     ＷＫ−申込通り数) .                                                          
000000 CX00284.                                                                 
           DISPLAY "CX00284" UPON CONSOLE
000000 CX00282.                                                                 
           DISPLAY "CX00282" UPON CONSOLE
000000 CX00279.                                                                 
           DISPLAY "CX00279" UPON CONSOLE
000000       WRITE 売場別精算表ＷＫＲ .                                                  
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00285.                  
000000         DISPLAY "HBHUN370-87 SQWURISS WRITE ERROR ",                     
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00285.                                                                 
           DISPLAY "CX00285" UPON CONSOLE
000000 CX00017. EXIT.                                                           
000000 KOSH-RTN .
           DISPLAY "KOSH-RTN"  UPON CONSOLE                                                                
000000       INITIALIZE  高額支払情報ＷＫＲ                                              
000000     MOVE ＷＫＴゲームタイプ TO ＫＳＭＴゲームタイプ                                         
000000     MOVE ＷＫＴブロックコード TO ＫＳＭＴブロックコード .                                     
000000     IF NOT(ＷＫＴ旧識別コード = LOW-VALUE)GO TO CX00286.                          
000000     MOVE ＷＫＴ発券識別コード上 TO ＫＳＭＴ発券識別コード上                                     
000000     MOVE ＷＫＴ発券識別コード中 TO ＫＳＭＴ発券識別コード中                                     
000000     MOVE ＷＫＴ発券識別コード下 TO ＫＳＭＴ発券識別コード下 .                                   
000000     GO TO CX00287.                                                       
000000 CX00286.
           DISPLAY "CX00286" UPON CONSOLE
           DISPLAY "CX00286"  UPON CONSOLE                                                                  
000000     MOVE ＷＫＴ旧識別コード上 TO ＫＳＭＴ発券識別コード上                                      
000000     MOVE ＷＫＴ旧識別コード下 TO ＫＳＭＴ発券識別コード中                                      
000000     MOVE SPACE TO ＫＳＭＴ発券識別コード (17:8) .                                   
000000 CX00287.
           DISPLAY "CX00287" UPON CONSOLE
           DISPLAY "CX00287"  UPON CONSOLE
      *20141028修正開始                                                                 
000000*       @ZDTDTCMP( TICKETNO = ＷＫＴ発券識別コード中  ,                               
000000*                  BASEDATE = ＵＮＫ１バッチ業務日付  ,                               
000000*                  YYYYMMDD = ＷＫ−発券日 );                                    
      *** 初期化 ***                                                  
           INITIALIZE     DTCP-PARAM.                                           
      *** パラメータ　チェック ***                                    
           IF  ＷＫＴ発券識別コード中  =  ZERO    THEN
                   DISPLAY "識別コードを指定して下さい"                           
                   STOP RUN.                                                         
           IF  ＵＮＫ１バッチ業務日付  =  LOW-VALUE    THEN                                           
                   DISPLAY "基準日を指定して下さい"                             
                   STOP RUN.                                                         
           IF  ＷＫ−発券日  =  LOW-VALUE    THEN                                           
                   DISPLAY "西暦年月日の受入項目を指定して下さい"               
                   STOP RUN.                                                         
      *** 入力パラメータ移送 ***
            MOVE ＷＫＴ発券識別コード中 TO  DTCP-TICKETNO
            MOVE ＵＮＫ１バッチ業務日付 TO  DTCP-BASEDATE
      *** 日付算出アクセスモジュール呼び出し ***                        
            CALL "HSAAL040" USING DTCP-PARAM
      *** 出力パラメータ移送 ***
            MOVE DTCP-YYYYMMDD TO ＷＫ−発券日
      *20141028修正終了
000000     MOVE ＷＫ−発券日 TO ＫＳＭＴ発券日                                               
000000     MOVE ＷＫＴ取消支払売場コード TO ＫＳＭＴ支払売場コード                                     
      *20141028修正開始
000000*       @ZDTDTCMP( TICKETNO = ＷＫＴ識別コード中      ,                             
000000*                  BASEDATE = ＵＮＫ１バッチ業務日付  ,                               
000000*                  YYYYMMDD = ＷＫ−支払日 );                                    
      *** 初期化 ***                                                  
           INITIALIZE     DTCP-PARAM.                                           
      *** パラメータ　チェック ***                                    
           IF  ＷＫＴ識別コード中  =  ZERO    THEN
                   DISPLAY "識別コードを指定して下さい"                           
                   STOP RUN.                                                         
           IF  ＵＮＫ１バッチ業務日付  =  LOW-VALUE    THEN                                           
                   DISPLAY "基準日を指定して下さい"                             
                   STOP RUN.                                                         
           IF  ＷＫ−支払日  =  LOW-VALUE    THEN                                           
                   DISPLAY "西暦年月日の受入項目を指定して下さい"               
                   STOP RUN.                                                         
      *** 入力パラメータ移送 ***
            MOVE ＷＫＴ識別コード中 TO  DTCP-TICKETNO
            MOVE ＵＮＫ１バッチ業務日付 TO  DTCP-BASEDATE
      *** 日付算出アクセスモジュール呼び出し ***                        
            CALL "HSAAL040" USING DTCP-PARAM
      *** 出力パラメータ移送 ***
            MOVE DTCP-YYYYMMDD TO ＷＫ−支払日
      *20141028修正終了
000000     MOVE ＷＫ−支払日 TO ＫＳＭＴ支払日                                               
000000     MOVE ＷＫＴ金額 TO ＫＳＭＴ支払金額 .                                             
000000     IF NOT( (ＷＫＴコンビ当せん口数 (1) = ZERO) AND (ＷＫＴコンビ当せん口数 (2) =              
000000     ZERO) AND (ＷＫＴコンビ当せん口数 (3) = ZERO) AND (ＷＫＴコンビ当せん口数 (4) =            
000000     ZERO) AND (ＷＫＴコンビ当せん口数 (5) = ZERO) AND (ＷＫＴコンビ当せん口数 (6) =            
000000     ZERO) AND (ＷＫＴコンビ当せん口数 (7) = ZERO) AND (ＷＫＴコンビ当せん口数 (8) =            
000000     ZERO) AND (ＷＫＴコンビ当せん口数 (9) = ZERO) AND (ＷＫＴコンビ当せん口数 (10) =           
000000     ZERO) AND (ＷＫＴコンビ当せん口数 (11) = ZERO))GO TO CX00288.                   
000000     MOVE ＷＫＴ口数 TO ＫＳＭＴ口数                                                 
000000     MOVE 1 TO ＣＮＴ当せん                                                     
000000     MOVE 1 TO ＩＤＸ当せん .                                                   
000000 CX00289. IF NOT(ＣＮＴ当せん <= 5)GO TO CX00290.
           DISPLAY "CX00289" UPON CONSOLE
           DISPLAY "CX00289"  UPON CONSOLE                               
000000     IF NOT(ＷＫＴ当初継続回号数 > 1)GO TO CX00291.                                 
000000     IF NOT(ＷＫＴ当せん等級 (ＣＮＴ当せん) NOT = ZERO)GO TO CX00292.                   
000000     COMPUTE ＫＳＭＴ回号 (ＩＤＸ当せん) = ＷＫＴ開始回号 + ＣＮＴ当せん - 1 .                     
000000 CX00292.                                                                 
           DISPLAY "CX00292" UPON CONSOLE
000000     GO TO CX00293.                                                       
000000 CX00291. 
           DISPLAY "CX00291" UPON CONSOLE
           DISPLAY "CX00291"  UPON CONSOLE                                                                 
000000     IF NOT(ＷＫＴ当せん等級 (ＣＮＴ当せん) NOT = ZERO)GO TO CX00294.                   
000000     MOVE ＷＫＴ開始回号 TO ＫＳＭＴ回号 (ＩＤＸ当せん) .                                    
000000 CX00294.                                                                 
           DISPLAY "CX00294" UPON CONSOLE
000000 CX00293. 
           DISPLAY "CX00293" UPON CONSOLE
           DISPLAY "CX00293"  UPON CONSOLE                                                                
000000     IF NOT(ＷＫＴ当せん等級 (ＣＮＴ当せん) NOT = ZERO)GO TO CX00295.                   
000000     IF NOT(ＷＫＴゲーム種別 = ナンバーズ)GO TO CX00296.                               
000000     MOVE ＷＫＴ当せん等級 (ＣＮＴ当せん) TO ＷＫ−等級                                      
000000     MOVE ＬＮＫＡ支払等級名称 (ＷＫ−等級) TO ＫＳＭＴ等級 (ＩＤＸ当せん) .                         
000000     GO TO CX00297.                                                       
000000 CX00296.
           DISPLAY "CX00296" UPON CONSOLE
           DISPLAY "CX00296"  UPON CONSOLE                                                                  
000000     MOVE ＷＫＴ当せん等級 (ＣＮＴ当せん) TO ＫＳＭＴ等級 (ＩＤＸ当せん) .                          
000000 CX00297. 
           DISPLAY "CX00297" UPON CONSOLE
           DISPLAY "CX00297"  UPON CONSOLE                                                                 
000000     COMPUTE ＩＤＸ当せん = ＩＤＸ当せん + 1 .                                        
000000 CX00295.
           DISPLAY "CX00295" UPON CONSOLE
           DISPLAY "CX00295"  UPON CONSOLE                                                                   
000000     COMPUTE ＣＮＴ当せん = ＣＮＴ当せん + 1 .                                        
000000     GO TO CX00289.                                                       
000000 CX00290.                                                                 
           DISPLAY "CX00290" UPON CONSOLE
000000     GO TO CX00298.                                                       
000000 CX00288.  
           DISPLAY "CX00288" UPON CONSOLE
           DISPLAY "CX00288"  UPON CONSOLE                                                                
000000     MOVE 0 TO ＫＳＭＴ口数                                                     
000000     MOVE ＷＫＴ開始回号 TO ＫＳＭＴコンビ回号                                            
000000     MOVE ＷＫＴコンビ当せん口数 (1) TO ＫＳＭＴ等級別口数１                                   
000000     MOVE ＷＫＴコンビ当せん口数 (2) TO ＫＳＭＴ等級別口数２                                   
000000     MOVE ＷＫＴコンビ当せん口数 (3) TO ＫＳＭＴ等級別口数３                                   
000000     MOVE ＷＫＴコンビ当せん口数 (4) TO ＫＳＭＴ等級別口数４                                   
000000     MOVE ＷＫＴコンビ当せん口数 (5) TO ＫＳＭＴ等級別口数５                                   
000000     MOVE ＷＫＴコンビ当せん口数 (6) TO ＫＳＭＴ等級別口数６                                   
000000     MOVE ＷＫＴコンビ当せん口数 (7) TO ＫＳＭＴ等級別口数７                                   
000000     MOVE ＷＫＴコンビ当せん口数 (8) TO ＫＳＭＴ等級別口数８                                   
000000     MOVE ＷＫＴコンビ当せん口数 (9) TO ＫＳＭＴ等級別口数９ .                                 
000000 CX00298.
           DISPLAY "CX00298" UPON CONSOLE
           DISPLAY "CX00298"  UPON CONSOLE                                                                 
000000       WRITE 高額支払情報ＷＫＲ .                                                  
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00299.                  
000000         DISPLAY "HBHUN370-88 SQWKGKSH WRITE ERROR ",                     
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00299.                                                                 
           DISPLAY "CX00299" UPON CONSOLE
000000 CX00018. EXIT.                                                           
000000 SFKEN-RTN . 
           DISPLAY "SFKEN-RTN"  UPON CONSOLE                                                               
000000     MOVE ＷＫＴ識別コード上 TO ＷＫ−ＴＲ識別コード上８桁                                      
000000     MOVE ＷＫＴ識別コード中 TO ＷＫ−ＴＲ識別コード中８桁                                      
000000     MOVE ＷＫＴ識別コード下 TO ＷＫ−ＴＲ識別コード下８桁                                      
000000     MOVE 1 TO ＣＮＴ電文通番取消 .                                                
000000 CX00300. IF NOT(ＣＮＴ電文通番取消 <= Ｗ障害−電文通番取消件数)GO TO CX00301. 
           DISPLAY "CX00300" UPON CONSOLE
           DISPLAY "CX00300"  UPON CONSOLE                 
000000     IF NOT( (Ｗ障害−売場コード (ＣＮＴ電文通番取消) = ＷＫＴ売場コード) AND (Ｗ障害−電文通番 (           
000000     ＣＮＴ電文通番取消) = ＷＫＴ電文通番))GO TO CX00302.                                 
000000     MOVE 電文通番取消 TO ＦＬＧ障害取消種別                                             
000000     PERFORM GHT2-RTN THRU CX00020                                        
000000     GO TO CX00019.                                                       
000000 CX00302. 
           DISPLAY "CX00302" UPON CONSOLE
           DISPLAY "CX00302"  UPON CONSOLE                                                                
000000     COMPUTE ＣＮＴ電文通番取消 = ＣＮＴ電文通番取消 + 1 .                                  
000000     GO TO CX00300.                                                       
000000 CX00301.  
           DISPLAY "CX00301" UPON CONSOLE
           DISPLAY "CX00301"  UPON CONSOLE                                                               
000000     MOVE 1 TO ＣＮＴ識別コード取消 .                                               
000000 CX00303. IF NOT(ＣＮＴ識別コード取消 <= Ｗ障害−識別コード取消件数)GO TO CX00304.               
           DISPLAY "CX00303" UPON CONSOLE
000000     IF NOT(Ｗ障害−識別コード (ＣＮＴ識別コード取消) (17:8) = ZERO)GO TO CX00305.           
           DISPLAY "CX00303"  UPON CONSOLE 
000000     MOVE Ｗ障害−識別コード (ＣＮＴ識別コード取消) (1:8) TO ＷＫ−１６識別コード上                     
000000     MOVE Ｗ障害−識別コード (ＣＮＴ識別コード取消) (9:8) TO ＷＫ−１６識別コード下                     
      *20141028修正開始
000000*           @ZMSSRLCV(MODE = 2 ,                                           
000000*                     SBCDBEFORE  = PTR_SBCDBEFORE  ,                      
000000*                     SBCDAFTER   = PTR_SBCDAFTER  ) .                     
      *** 初期化 ***                                                
           INITIALIZE     SRLC-PARAM.                                           
      *** パラメータ　チェック ***                                    
           IF  PTR_SBCDBEFORE  =  NULL   THEN                                         
                   DISPLAY "変換元識別コードを指定して下さい"                   
                   STOP RUN.
           IF  PTR_SBCDAFTER  =  NULL   THEN                                          
                   DISPLAY "変換先識別コードを指定して下さい"                   
                   STOP RUN.
      *** 入力パラメータ移送 ***                                      
            MOVE 2 TO SRLC-MODE                                             
            SET  SRLC-SBCDBEF  TO  PTR_SBCDBEFORE                                  
            SET  SRLC-SBCDAFT  TO  PTR_SBCDAFTER                                   
      *** 識別コード変換モジュール呼び出し ***                          
            CALL "HSAAL060" USING SRLC-PARAM.
      *20141028修正終了
000000     IF NOT(ＷＫ−２４識別コード = ＷＫ−ＴＲ識別コード)GO TO CX00306.                        
000000     MOVE 識別コード取消 TO ＦＬＧ障害取消種別                                            
000000     PERFORM GHT2-RTN THRU CX00020                                        
000000     GO TO CX00019.                                                       
000000 CX00306.                                                                 
           DISPLAY "CX00306" UPON CONSOLE
000000     GO TO CX00307.                                                       
000000 CX00305. 
           DISPLAY "CX00305" UPON CONSOLE
           DISPLAY "CX00305"  UPON CONSOLE                                                                 
000000     IF NOT(Ｗ障害−識別コード (ＣＮＴ識別コード取消) = ＷＫ−ＴＲ識別コード)GO TO CX00308.            
000000     MOVE 識別コード取消 TO ＦＬＧ障害取消種別                                            
000000     PERFORM GHT2-RTN THRU CX00020                                        
000000     GO TO CX00019.                                                       
000000 CX00308.                                                                 
           DISPLAY "CX00308" UPON CONSOLE
000000 CX00307.
           DISPLAY "CX00307" UPON CONSOLE
           DISPLAY "CX00307"  UPON CONSOLE                                                                 
000000     COMPUTE ＣＮＴ識別コード取消 = ＣＮＴ識別コード取消 + 1 .                                
000000     GO TO CX00303.                                                       
000000 CX00304.                                                                 
           DISPLAY "CX00304" UPON CONSOLE
000000 CX00019. EXIT.                                                           
000000 GHT2-RTN .
           DISPLAY "GHT2-RTN"  UPON CONSOLE                                                               
000000       INITIALIZE  外販用障害取消不可ＷＫＲ .                                         
000000     IF NOT(ＦＬＧ障害取消種別 = 電文通番取消)GO TO CX00309.                             
000000     IF NOT(ＷＫＴ旧識別コード = LOW-VALUE)GO TO CX00310.                          
000000     MOVE ＷＫ−ＴＲ識別コード TO ＷＧＴＦ識別コード .                                       
000000     GO TO CX00311.                                                       
000000 CX00310.
           DISPLAY "CX00310" UPON CONSOLE
           DISPLAY "CX00310"  UPON CONSOLE                                                                  
000000     MOVE ＷＫＴ旧識別コード上 TO ＷＧＴＦ識別コード上                                        
000000     MOVE ＷＫＴ旧識別コード下 TO ＷＧＴＦ識別コード中                                        
000000     MOVE ZERO TO ＷＧＴＦ識別コード下 .                                            
000000 CX00311.                                                                 
           DISPLAY "CX00311" UPON CONSOLE
000000     GO TO CX00312.                                                       
000000 CX00309.
           DISPLAY "CX00309" UPON CONSOLE
           DISPLAY "CX00309"  UPON CONSOLE                                                                 
000000     MOVE Ｗ障害−識別コード (ＣＮＴ識別コード取消) TO ＷＧＴＦ識別コード .                           
000000 CX00312.
           DISPLAY "CX00312" UPON CONSOLE
           DISPLAY "CX00312"  UPON CONSOLE                                                                 
000000     MOVE ＷＫＴゲームタイプ TO ＷＧＴＦゲームタイプ                                         
000000     MOVE ＷＫＴブロックコード TO ＷＧＴＦブロックコード                                       
000000     MOVE ＷＫＴ開始回号 TO ＷＧＴＦ回号                                               
000000     MOVE ＷＫＴ売場コード TO ＷＧＴＦ売場コード                                           
000000     MOVE ＷＫＴ取引時刻 TO ＷＧＴＦ取引時刻                                             
000000     MOVE ＷＫＴ電文通番 TO ＷＧＴＦ電文通番                                             
000000     MOVE ＷＫＴパネル数 TO ＷＧＴＦパネル数                                             
000000     MOVE ＷＫＴ口数 TO ＷＧＴＦ口数                                                 
000000     MOVE ＷＫＴ金額 TO ＷＧＴＦ金額                                                 
000000     MOVE 1 TO ＩＤＸパネル .                                                   
000000 CX00313. IF NOT(ＩＤＸパネル <= ＷＫＴパネル数)GO TO CX00314.
           DISPLAY "CX00313" UPON CONSOLE
           DISPLAY "CX00313"  UPON CONSOLE                          
000000     IF NOT(ＷＫＴゲーム種別 = ナンバーズ)GO TO CX00315.                               
000000     MOVE SPACE TO ＷＫ−申込数字変換 .                                            
000000     IF NOT(ＷＫＴ分子 = 分子ナンバーズ３)GO TO CX00316.                               
000000     IF NOT(ＷＫＴ申込タイプ (ＩＤＸパネル) = 1 OR 2 OR 3)GO TO CX00317.                
000000     MOVE ＷＫＴ申込数字 (ＩＤＸパネル) TO ＷＫ−申込数字変換Ｎ３３ .                              
000000     GO TO CX00318.                                                       
000000 CX00317.
           DISPLAY "CX00317" UPON CONSOLE
           DISPLAY "CX00317"  UPON CONSOLE                                                                 
000000     MOVE ＷＫＴ申込数字 (ＩＤＸパネル) TO ＷＫ−申込数字変換Ｎ３２ .                              
000000 CX00318.                                                                 
           DISPLAY "CX00318" UPON CONSOLE
000000     GO TO CX00319.                                                       
000000 CX00316.    
           DISPLAY "CX00316" UPON CONSOLE
           DISPLAY "CX00316"  UPON CONSOLE                                                              
000000     IF NOT(ＷＫＴ分子 = 分子ナンバーズ４)GO TO CX00320.                               
000000     MOVE SPACE TO ＷＫ−申込数字変換 .                                            
000000     IF NOT(ＷＫＴ申込タイプ (ＩＤＸパネル) = 1 OR 2 OR 3 OR 6)GO TO CX00321.           
000000     MOVE ＷＫＴ申込数字 (ＩＤＸパネル) TO ＷＫ−申込数字変換Ｎ４４ .                              
000000     GO TO CX00322.                                                       
000000 CX00321.
           DISPLAY "CX00321" UPON CONSOLE
           DISPLAY "CX00321"  UPON CONSOLE                                                                  
000000     MOVE ＷＫＴ申込数字 (ＩＤＸパネル) TO ＷＫ−申込数字変換Ｎ４２ .                              
000000 CX00322.                                                                 
           DISPLAY "CX00322" UPON CONSOLE
000000 CX00320.                                                                 
           DISPLAY "CX00320" UPON CONSOLE
000000 CX00319.                                                                 
           DISPLAY "CX00319" UPON CONSOLE
000000     GO TO CX00323.                                                       
000000 CX00315.                                                                 
           DISPLAY "CX00315" UPON CONSOLE
000000     IF NOT(ＷＫＴゲーム種別 = ロト)GO TO CX00324.  
           DISPLAY "CX00315"  UPON CONSOLE                                 
      *20141028修正開始
000000*             @ZTSIDXCG( BUNSI  =  ＷＫＴ分子                 ,                 
000000*                      BUNBO    =  ＷＫＴ分母                 ,                 
000000*                      IDXCODE  =  0                          ,            
000000*                      BITCODE  =  2                          ,            
000000*                      NUMCODE  =  1                          ,            
000000*                      TYPE     =  ＷＫＴ申込タイプ(ＩＤＸパネル),                       
000000*                      CGIDX    =  ＷＫＴ申込数字(ＩＤＸパネル) ,                       
000000*                      CGNUM    =  ＷＫ−申込数字変換);                             
      *** パラメータ　チェック ***                                  
           IF  ＷＫＴ分子  =  LOW-VALUE    THEN                                              
                   DISPLAY "分子を指定して下さい"                               
                   STOP RUN.                                                         
           IF  ＷＫＴ分母  =  LOW-VALUE    THEN                                              
                   DISPLAY "分母を指定して下さい"                               
                   STOP RUN.
           IF  ＷＫＴ申込タイプ(ＩＤＸパネル)  =  LOW-VALUE    THEN                                               
                   DISPLAY "申込タイプを指定して下さい"                         
                   STOP RUN.                                                         
           IF  ＷＫＴ申込数字(ＩＤＸパネル)  =  ZERO    THEN                                      
                   DISPLAY "変換インデクスを指定して下さい"             
                   STOP RUN.                                                                                              
           IF  ＷＫ−申込数字変換  =  LOW-VALUE    THEN                                      
                   DISPLAY "変換申込数字を指定して下さい"               
                   STOP RUN.
      *** 入力パラメータ移送 ***                                     
           MOVE ＷＫＴ分子   TO IDXC-BUNSI
           MOVE ＷＫＴ分母   TO IDXC-BUNBO
           MOVE 0 TO IDXC-IDXCODE
           MOVE 2 TO IDXC-BITCODE
           MOVE 1 TO IDXC-NUMCODE
           MOVE ＷＫＴ申込タイプ(ＩＤＸパネル)    TO IDXC-TYPE
           MOVE 2 TO IDXC-SEQ                                           
           MOVE ＷＫＴ申込数字(ＩＤＸパネル) TO IDXC-CGIDX
      *** ロトＩＤＸ変換モジュール呼び出し ***                         
           CALL "HRATS010" USING  IDXC-PARAM
      *** 出力パラメータ移送 ***                                       
           MOVE IDXC-CGNUM TO ＷＫ−申込数字変換.
      *20141028修正終了
000000     MOVE 1 TO ＣＮＴ申込数字 .                                                  
000000 CX00325. IF NOT(ＣＮＴ申込数字 <= 12)GO TO CX00326.
           DISPLAY "CX00325" UPON CONSOLE
           DISPLAY "CX00325"  UPON CONSOLE                               
000000     IF NOT(ＷＫ−申込数字変換ＬＴ (ＣＮＴ申込数字) = "00")GO TO CX00327.                   
000000     MOVE SPACE TO ＷＫ−申込数字変換ＬＴ (ＣＮＴ申込数字) .                                
000000 CX00327. 
           DISPLAY "CX00327" UPON CONSOLE
           DISPLAY "CX00327"  UPON CONSOLE                                                                
000000     COMPUTE ＣＮＴ申込数字 = ＣＮＴ申込数字 + 1 .                                      
000000     GO TO CX00325.                                                       
000000 CX00326.                                                                 
           DISPLAY "CX00326" UPON CONSOLE
000000 CX00324.                                                                 
           DISPLAY "CX00324" UPON CONSOLE
000000 CX00323.  
           DISPLAY "CX00323" UPON CONSOLE
           DISPLAY "CX00323"  UPON CONSOLE                                                                  
000000     MOVE ＷＫ−申込数字変換 TO ＷＧＴＦ申込数字 (ＩＤＸパネル)                                  
000000     MOVE ＷＫＴ申込タイプ (ＩＤＸパネル) TO ＷＧＴＦ申込タイプ (ＩＤＸパネル)                         
000000     MOVE ＷＫＴクイックピック区分 (ＩＤＸパネル) TO ＷＧＴＦクイックピック (ＩＤＸパネル)                   
000000     COMPUTE ＩＤＸパネル = ＩＤＸパネル + 1 .                                        
000000     GO TO CX00313.                                                       
000000 CX00314.    
           DISPLAY "CX00314" UPON CONSOLE
           DISPLAY "CX00314"  UPON CONSOLE                                                               
000000     IF NOT(ＦＬＧ障害取消種別 = 電文通番取消)GO TO CX00328.                             
000000     MOVE "1" TO ＷＧＴＦ理由コード .                                              
000000     GO TO CX00329.                                                       
000000 CX00328. IF NOT(ＦＬＧ障害取消種別 = 識別コード取消)GO TO CX00330.    
           DISPLAY "CX00328" UPON CONSOLE
           DISPLAY "CX00328"  UPON CONSOLE                      
000000     IF NOT(Ｗ障害−取消区分 (ＣＮＴ識別コード取消) = "3")GO TO CX00331.                    
000000     MOVE "2" TO ＷＧＴＦ理由コード .                                              
000000     GO TO CX00332.                                                       
000000 CX00331. 
           DISPLAY "CX00331" UPON CONSOLE
           DISPLAY "CX00331"  UPON CONSOLE                                                                  
000000     MOVE "1" TO ＷＧＴＦ理由コード .                                              
000000 CX00332.                                                                 
           DISPLAY "CX00332" UPON CONSOLE
000000 CX00330.                                                                 
           DISPLAY "CX00330" UPON CONSOLE
000000 CX00329. 
           DISPLAY "CX00329" UPON CONSOLE
           DISPLAY "CX00329"  UPON CONSOLE                                                                 
000000       WRITE 外販用障害取消不可ＷＫＲ .                                               
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00333.                  
000000         DISPLAY "HBHUN370-89 SQWGTOFK WRITE ERROR ",                     
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00333.                                                                 
           DISPLAY "CX00333" UPON CONSOLE
000000 CX00020. EXIT.                                                           
000000 IDX-GET-RTN . 
           DISPLAY "IDX-GET-RTN"  UPON CONSOLE                                                             
000000     MOVE ZERO TO ＩＤＸゲーム                                                  
000000     MOVE ＯＦＦ TO ＦＬＧゲーム .                                                 
000000 CX00334. IF NOT( (ＩＤＸゲーム < 30) AND (ＦＬＧゲーム = ＯＦＦ)                        
000000     )GO TO CX00335.  
           DISPLAY "CX00334" UPON CONSOLE
           DISPLAY "CX00334"  UPON CONSOLE                                                     
000000     COMPUTE ＩＤＸゲーム = ＩＤＸゲーム + 1 .                                        
000000     IF NOT( (Ｗ回−ゲームタイプ (ＩＤＸゲーム) = ＷＫＴゲームタイプ) AND (Ｗ回−ブロックコード (           
000000     ＩＤＸゲーム) = ＷＫＴブロックコード))GO TO CX00336.                                 
000000     MOVE ＯＮ TO ＦＬＧゲーム .                                                  
000000 CX00336.                                                                 
           DISPLAY "CX00336" UPON CONSOLE
000000     GO TO CX00334.                                                       
000000 CX00335.  
           DISPLAY "CX00335" UPON CONSOLE
           DISPLAY "CX00335"  UPON CONSOLE                                                               
000000     IF NOT(ＦＬＧゲーム = ＯＮ)GO TO CX00337.                                    
000000     MOVE ZERO TO ＩＤＸ回号                                                   
000000     MOVE ＯＦＦ TO ＦＬＧ回号 .                                                  
000000 CX00338. IF NOT( (ＩＤＸ回号 < 21) AND (ＦＬＧ回号 = ＯＦＦ))GO TO CX00339.           
           DISPLAY "CX00338" UPON CONSOLE
           DISPLAY "CX00338"  UPON CONSOLE   
000000     COMPUTE ＩＤＸ回号 = ＩＤＸ回号 + 1 .                                          
000000     IF NOT( (Ｗ回−回号 (ＩＤＸゲーム ＩＤＸ回号) = ＷＫＴ開始回号))GO TO CX00340.              
000000     MOVE ＯＮ TO ＦＬＧ回号 .                                                   
000000 CX00340.                                                                 
           DISPLAY "CX00340" UPON CONSOLE
000000     GO TO CX00338.                                                       
000000 CX00339.                                                                 
           DISPLAY "CX00339" UPON CONSOLE
000000 CX00337.                                                                 
           DISPLAY "CX00337" UPON CONSOLE
000000     IF NOT( (ＦＬＧゲーム = ＯＦＦ) OR (ＦＬＧ回号 = ＯＦＦ))GO TO CX00341.               
000000         DISPLAY "該当ゲームまたは回号なし"                                           
000000         STOP RUN .                                                     
000000 CX00341.    
           DISPLAY "CX00341" UPON CONSOLE
           DISPLAY "CX00341"  UPON CONSOLE                                                                
000000     MOVE ＩＤＸ回号 TO ＩＤＸ回号２ .                                               
000000 CX00021. EXIT.                                                           
000000 URISABAKI-GET-RTN .    
           DISPLAY "URISABAKI-GET-RTN"  UPON CONSOLE                                                   
000000     MOVE Ｗ回−売捌手数料ＴＢＬ番号 (ＩＤＸゲーム ＩＤＸ回号) TO ＩＤＸテーブル番号                       
000000     MOVE 1 TO ＣＮＴ大手業者                                                    
000000     MOVE 1 TO ＣＮＴゲーム                                                     
000000     MOVE 1 TO ＣＮＴ回号                                                      
000000     MOVE ＯＦＦ TO ＦＬＧ大手業者                                                  
000000     MOVE ＯＦＦ TO ＦＬＧゲーム                                                   
000000     MOVE ＯＦＦ TO ＦＬＧ回号                                                    
000000     MOVE ＷＫＴ販売チャネルコード TO ＣＮＴ販売Ｃ .                                        
000000     IF NOT(ＷＫ−販売チャネルコード = 01)GO TO CX00342.                              
000000 CX00343. IF NOT( (ＣＮＴゲーム < 30) AND (ＦＬＧゲーム = ＯＦＦ)                        
000000     )GO TO CX00344. 
           DISPLAY "CX00343" UPON CONSOLE
           DISPLAY "CX00343"  UPON CONSOLE                                                     
000000     IF NOT( (Ｗ−販Ｃ別ゲームタイプ (ＣＮＴ販売Ｃ ＣＮＴゲーム) = ＷＫＴゲームタイプ) AND (              
000000     Ｗ−販Ｃ別ブロックコード (ＣＮＴ販売Ｃ ＣＮＴゲーム) = ＷＫＴブロックコード))GO TO CX00345.            
000000     MOVE ＯＮ TO ＦＬＧゲーム .                                                  
000000 CX00345.  
           DISPLAY "CX00345" UPON CONSOLE
           DISPLAY "CX00345"  UPON CONSOLE                                                                
000000     IF NOT(ＦＬＧゲーム = ＯＦＦ)GO TO CX00346.                                   
000000     COMPUTE ＣＮＴゲーム = ＣＮＴゲーム + 1 .                                        
000000 CX00346.                                                                 
           DISPLAY "CX00346" UPON CONSOLE
000000     GO TO CX00343.                                                       
000000 CX00344.                                                                 
           DISPLAY "CX00344" UPON CONSOLE
000000     IF NOT(ＦＬＧゲーム = ＯＮ)GO TO CX00347.                                    
000000 CX00348. IF NOT( (ＣＮＴ回号 < 21) AND (ＦＬＧ回号 = ＯＦＦ))GO TO CX00349.           
           DISPLAY "CX00348" UPON CONSOLE
000000     IF NOT( (Ｗ−販Ｃ別回号 (ＣＮＴ販売Ｃ ＣＮＴゲーム ＣＮＴ回号) = ＷＫＴ開始回号)                    
000000     )GO TO CX00350.    
           DISPLAY "CX00348"  UPON CONSOLE                                                   
000000     MOVE Ｗ−販Ｃ別金額帯番号 (ＣＮＴ販売Ｃ ＣＮＴゲーム ＣＮＴ回号) TO ＣＮＴ金額帯                      
000000     MOVE ＯＮ TO ＦＬＧ回号 .                                                   
000000 CX00350.        
           DISPLAY "CX00350" UPON CONSOLE
           DISPLAY "CX00350"  UPON CONSOLE                                                            
000000     IF NOT(ＦＬＧ回号 = ＯＦＦ)GO TO CX00351.                                    
000000     COMPUTE ＣＮＴ回号 = ＣＮＴ回号 + 1 .                                          
000000 CX00351.                                                                 
           DISPLAY "CX00351" UPON CONSOLE
000000     GO TO CX00348.                                                       
000000 CX00349.                                                                 
           DISPLAY "CX00349" UPON CONSOLE
000000 CX00347.                                                                 
           DISPLAY "CX00347" UPON CONSOLE
000000     IF NOT( (ＦＬＧゲーム = ＯＦＦ) OR (ＦＬＧ回号 = ＯＦＦ))GO TO CX00352.               
000000     MOVE 1 TO ＣＮＴ金額帯 .                                                   
000000 CX00352.                                                                 
           DISPLAY "CX00352" UPON CONSOLE
000000 CX00342.     
           DISPLAY "CX00342" UPON CONSOLE
           DISPLAY "CX00342"  UPON CONSOLE                                                                   
000000     IF NOT(ＷＫ−販売チャネルコード = 02)GO TO CX00353.                              
000000 CX00354. IF NOT( (ＣＮＴ大手業者 < 999) AND (ＦＬＧ大手業者 = ＯＦＦ)                     
000000     )GO TO CX00355.                                                      
           DISPLAY "CX00354" UPON CONSOLE
000000     IF NOT( (Ｗ−機関別大手業者ＣＤ０２ (ＣＮＴ大手業者) = ＧＹＳＡ大手業者コード)                      
000000     )GO TO CX00356.                                                      
000000     MOVE ＯＮ TO ＦＬＧ大手業者 .                                                 
000000 CX00356.     
           DISPLAY "CX00356" UPON CONSOLE
           DISPLAY "CX00356"  UPON CONSOLE                                                               
000000     IF NOT(ＦＬＧ大手業者 = ＯＦＦ)GO TO CX00357.                                  
000000     COMPUTE ＣＮＴ大手業者 = ＣＮＴ大手業者 + 1 .                                      
000000 CX00357.                                                                 
           DISPLAY "CX00357" UPON CONSOLE
000000     GO TO CX00354.                                                       
000000 CX00355.                                                                 
           DISPLAY "CX00355" UPON CONSOLE
000000     IF NOT(ＦＬＧ大手業者 = ＯＮ)GO TO CX00358.                                   
000000 CX00359. IF NOT( (ＣＮＴゲーム < 30) AND (ＦＬＧゲーム = ＯＦＦ)                        
000000     )GO TO CX00360.    
           DISPLAY "CX00359" UPON CONSOLE
           DISPLAY "CX00359"  UPON CONSOLE                                                    
000000     IF NOT( (Ｗ−機関別ゲームタイプ０２ (ＣＮＴ大手業者 ＣＮＴゲーム) = ＷＫＴゲームタイプ) AND (           
000000     Ｗ−機関別ブロックＣＤ０２ (ＣＮＴ大手業者 ＣＮＴゲーム) = ＷＫＴブロックコード)                         
000000     )GO TO CX00361.                                                      
000000     MOVE ＯＮ TO ＦＬＧゲーム .                                                  
000000 CX00361.  
           DISPLAY "CX00361" UPON CONSOLE
           DISPLAY "CX00361"  UPON CONSOLE                                                                 
000000     IF NOT(ＦＬＧゲーム = ＯＦＦ)GO TO CX00362.                                   
000000     COMPUTE ＣＮＴゲーム = ＣＮＴゲーム + 1 .                                        
000000 CX00362.                                                                 
           DISPLAY "CX00362" UPON CONSOLE
000000     GO TO CX00359.                                                       
000000 CX00360.                                                                 
           DISPLAY "CX00360" UPON CONSOLE
000000 CX00358. 
           DISPLAY "CX00358" UPON CONSOLE
           DISPLAY "CX00358"  UPON CONSOLE                                                                  
000000     IF NOT(ＦＬＧゲーム = ＯＮ)GO TO CX00363.                                    
000000 CX00364. IF NOT( (ＣＮＴ回号 < 21) AND (ＦＬＧ回号 = ＯＦＦ))GO TO CX00365.           
           DISPLAY "CX00364" UPON CONSOLE
000000     IF NOT(Ｗ−機関別回号０２ (ＣＮＴ大手業者 ＣＮＴゲーム ＣＮＴ回号) = ＷＫＴ開始回号                    
000000     )GO TO CX00366.                                                      
000000     MOVE Ｗ−機関別金額帯番号０２ (ＣＮＴ大手業者 ＣＮＴゲーム ＣＮＴ回号) TO ＣＮＴ金額帯                   
000000     MOVE ＯＮ TO ＦＬＧ回号 .                                                   
000000 CX00366.       
           DISPLAY "CX00366" UPON CONSOLE
           DISPLAY "CX00366"  UPON CONSOLE                                                            
000000     IF NOT(ＦＬＧ回号 = ＯＦＦ)GO TO CX00367.                                    
000000     COMPUTE ＣＮＴ回号 = ＣＮＴ回号 + 1 .                                          
000000 CX00367.                                                                 
           DISPLAY "CX00367" UPON CONSOLE
000000     GO TO CX00364.                                                       
000000 CX00365.                                                                 
           DISPLAY "CX00365" UPON CONSOLE
000000 CX00363.      
           DISPLAY "CX00363" UPON CONSOLE
           DISPLAY "CX00363"  UPON CONSOLE                                                              
000000     IF NOT( (ＦＬＧ大手業者 = ＯＦＦ) OR (ＦＬＧゲーム = ＯＦＦ) OR (ＦＬＧ回号 = ＯＦＦ)           
000000     )GO TO CX00368.                                                      
000000     MOVE 1 TO ＣＮＴ金額帯 .                                                   
000000 CX00368.                                                                 
           DISPLAY "CX00368" UPON CONSOLE
000000 CX00353.                                                                 
           DISPLAY "CX00353" UPON CONSOLE
000000 CX00022. EXIT.                                                           
000000 WK-WRITE-RTN .
           DISPLAY "WK-WRITE-RTN"  UPON CONSOLE                                                              
000000     MOVE ＷＫ−精査 TO 売上金精査ＷＫＲ                                               
000000       WRITE 売上金精査ＷＫＲ .                                                   
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00369.                  
000000         DISPLAY "HBHUN370-90 SQWURISE WRITE ERROR ",                     
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00369.              
           DISPLAY "CX00369" UPON CONSOLE
           DISPLAY "CX00369"  UPON CONSOLE                                                    
000000     MOVE 1 TO ＩＤＸゲーム                                                     
000000       INITIALIZE  団体別精算表ＷＫＲ .                                            
000000 CX00370. IF NOT(ＩＤＸゲーム < 31 AND Ｗ団精ゲームタイプ (ＩＤＸゲーム) NOT = ZERO            
000000     )GO TO CX00371. 
           DISPLAY "CX00370" UPON CONSOLE
           DISPLAY "CX00370"  UPON CONSOLE                                                      
000000     MOVE Ｗ団精ゲームタイプ (ＩＤＸゲーム) TO ＷＤＮＳゲームタイプ                                
000000     MOVE Ｗ団精ブロックコード (ＩＤＸゲーム) TO ＷＤＮＳブロックコード                              
000000     MOVE 1 TO ＩＤＸ回号 .                                                    
000000 CX00372. IF NOT(ＩＤＸ回号 < 22 AND Ｗ団精回号 (ＩＤＸゲーム ＩＤＸ回号) NOT = ZERO           
000000     )GO TO CX00373. 
           DISPLAY "CX00372" UPON CONSOLE
           DISPLAY "CX00372"  UPON CONSOLE                                                      
000000     MOVE Ｗ団精回号 (ＩＤＸゲーム ＩＤＸ回号) TO ＷＤＮＳ回号                                  
000000     MOVE 1 TO ＩＤＸ団体 .                                                    
000000 CX00374. IF NOT(ＩＤＸ団体 < 81)GO TO CX00375.                                
           DISPLAY "CX00374" UPON CONSOLE
000000     IF NOT(Ｗ団精団体別売上 (ＩＤＸゲーム ＩＤＸ回号 ＩＤＸ団体) NOT = ZERO                      
000000     )GO TO CX00376. 
           DISPLAY "CX00374"  UPON CONSOLE                                                     
000000     MOVE ＩＤＸ団体 TO ＷＤＮＳ団体コード                                              
000000     MOVE Ｗ団精団体別売上 (ＩＤＸゲーム ＩＤＸ回号 ＩＤＸ団体) TO ＷＤＮＳ売上金額                       
000000     MOVE Ｗ団精販売チャネルコード (ＩＤＸゲーム ＩＤＸ回号 ＩＤＸ団体) TO ＷＤＮＳ販売チャネルコード              
000000               WRITE 団体別精算表ＷＫＲ .                                          
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00377.                  
000000                 DISPLAY "HBHUN370-91 SQWDNSSN WRITE ERROR ",             
000000                          STS-FILE1 " " STS-FILE2                         
000000                 STOP RUN .                                             
000000 CX00377.                                                                 
           DISPLAY "CX00377" UPON CONSOLE
000000 CX00376.                                                                  
           DISPLAY "CX00376" UPON CONSOLE
000000     COMPUTE ＩＤＸ団体 = ＩＤＸ団体 + 1 .                                          
000000     GO TO CX00374.                                                       
000000 CX00375.    
           DISPLAY "CX00375" UPON CONSOLE
           DISPLAY "CX00375"  UPON CONSOLE                                                             
000000     COMPUTE ＩＤＸ回号 = ＩＤＸ回号 + 1 .                                          
000000     GO TO CX00372.                                                       
000000 CX00373.           
           DISPLAY "CX00373" UPON CONSOLE
           DISPLAY "CX00373"  UPON CONSOLE                                                        
000000     COMPUTE ＩＤＸゲーム = ＩＤＸゲーム + 1 .                                        
000000     GO TO CX00370.                                                       
000000 CX00371.     
           DISPLAY "CX00371" UPON CONSOLE
           DISPLAY "CX00371"  UPON CONSOLE                                                               
000000     MOVE 1 TO ＩＤＸゲーム                                                     
000000       INITIALIZE  売捌手数料ＷＫＲ .
      *20141028修正開始                                             
000000* CX00378. IF NOT( (ＩＤＸゲーム < 31) AND (Ｗ売ワゲームタイプ (ＩＤＸゲーム) NOT =             
       CX00378. IF NOT( (ＷＫ−売捌手数料ＷＫＴＢＬ回数 < 11) AND (Ｗ売ワゲームタイプ (ＩＤＸゲーム) NOT =             
      *20141028修正終了
000000     ZERO))GO TO CX00379.  
           DISPLAY "CX00378"  UPON CONSOLE                                                  
000000     MOVE Ｗ売ワゲームタイプ (ＩＤＸゲーム) TO ＷＵＴＥゲームタイプ                                
000000     MOVE Ｗ売ワブロックコード (ＩＤＸゲーム) TO ＷＵＴＥブロックコード                              
000000     MOVE 1 TO ＩＤＸ回号 .                                                    
000000 CX00380. IF NOT( (ＩＤＸ回号 < 22) AND (Ｗ売ワ回号 (ＩＤＸゲーム ＩＤＸ回号) NOT =            
000000     ZERO))GO TO CX00381.
           DISPLAY "CX00380" UPON CONSOLE
           DISPLAY "CX00380"  UPON CONSOLE                                                 
000000     MOVE Ｗ売ワ回号 (ＩＤＸゲーム ＩＤＸ回号) TO ＷＵＴＥ回号                                  
000000     MOVE 1 TO ＩＤＸ販売Ｃ .                                                   
000000 CX00382. IF NOT(ＩＤＸ販売Ｃ <= ＳＧＪ１販売Ｃ数諸元値)GO TO CX00383.                     
           DISPLAY "CX00382" UPON CONSOLE
000000     IF NOT(Ｗ売ワ販売チャネルコード (ＩＤＸゲーム ＩＤＸ回号 ＩＤＸ販売Ｃ) NOT = ZERO                 
000000     )GO TO CX00384. 
           DISPLAY "CX00382"  UPON CONSOLE                                                       
000000     MOVE Ｗ売ワ販売チャネルコード (ＩＤＸゲーム ＩＤＸ回号 ＩＤＸ販売Ｃ) TO ＷＵＴＥ販売チャネルコード             
000000     MOVE Ｗ売ワ売上金額 (ＩＤＸゲーム ＩＤＸ回号 ＩＤＸ販売Ｃ) TO ＷＵＴＥ売上金額                       
000000     MOVE Ｗ売ワ手数料補正額 (ＩＤＸゲーム ＩＤＸ回号 ＩＤＸ販売Ｃ) TO ＷＵＴＥ手数料補正額                   
000000     MOVE 1 TO ＩＤＸ金額帯 .                                                   
000000 CX00385. IF NOT(ＩＤＸ金額帯 < 6)GO TO CX00386. 
           DISPLAY "CX00385" UPON CONSOLE
           DISPLAY "CX00385"  UPON CONSOLE                               
000000     MOVE Ｗ売ワ累計手数料 (ＩＤＸゲーム ＩＤＸ回号 ＩＤＸ販売Ｃ ＩＤＸ金額帯) TO ＷＵＴＥ金額帯別売捌手数料          
000000     (ＩＤＸ金額帯)                                                             
000000     COMPUTE ＩＤＸ金額帯 = ＩＤＸ金額帯 + 1 .                                        
000000     GO TO CX00385.                                                       
000000 CX00386.    
           DISPLAY "CX00386" UPON CONSOLE
           DISPLAY "CX00386"  UPON CONSOLE                                                             
000000               WRITE 売捌手数料ＷＫＲ INVALID CONTINUE .                          
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00387.                  
000000                 DISPLAY "HBHUN370-92 VIWURTES WRITE ERROR ",             
000000                          STS-FILE1 " " STS-FILE2                         
000000                 STOP RUN .                                             
000000 CX00387.                                                                 
           DISPLAY "CX00387" UPON CONSOLE
000000 CX00384.          
           DISPLAY "CX00384" UPON CONSOLE
           DISPLAY "CX00384"  UPON CONSOLE                                                          
000000     COMPUTE ＩＤＸ販売Ｃ = ＩＤＸ販売Ｃ + 1 .                                        
000000     GO TO CX00382.                                                       
000000 CX00383.     
           DISPLAY "CX00383" UPON CONSOLE
           DISPLAY "CX00383"  UPON CONSOLE                                                                
000000     COMPUTE ＩＤＸ回号 = ＩＤＸ回号 + 1 .                                          
000000     GO TO CX00380.                                                       
000000 CX00381. 
           DISPLAY "CX00381" UPON CONSOLE
           DISPLAY "CX00381"  UPON CONSOLE                                                                    
000000     COMPUTE ＩＤＸゲーム = ＩＤＸゲーム + 1 .                                        
      *20141028追加開始
           IF ＩＤＸゲーム > 4 
               MOVE 1 TO ＩＤＸゲーム
               INITIALIZE ＷＫ−売捌手数料ＷＫＴＢＬ
               COMPUTE ＷＫ−売捌手数料ＷＫＴＢＬ回数 = ＷＫ−売捌手数料ＷＫＴＢＬ回数 + 1
           ELSE
      *20141028追加終了
000000     GO TO CX00378.                                                       
000000 CX00379. 
           DISPLAY "CX00379" UPON CONSOLE
           DISPLAY "CX00379"  UPON CONSOLE                                                                
000000 CX00023. EXIT.                                                           
000000 ERWK-RTN .   
           DISPLAY "ERWK-RTN"  UPON CONSOLE                                                             
000000     MOVE ＷＫＴ個別情報 TO ＥＲＷＫ個別情報                                             
000000       WRITE エラーＷＫＲ .                                                     
000000     IF NOT(STS-FILE1 NOT = ZERO AND "02")GO TO CX00388.                  
000000         DISPLAY "HBHUN370-93 SQTRONRI WRITE ERROR ",                     
000000                  STS-FILE1 " " STS-FILE2                                 
000000         STOP RUN .                                                     
000000 CX00388.                                                                 
           DISPLAY "CX00388" UPON CONSOLE
000000 CX00024. EXIT.                                                           
000000 ERR-REC-RTN .                                                            
000000     IF NOT(ＦＬＧエラー = ＯＮ)GO TO CX00389.                                    
      *20141027修正開始
000000*         @ZCTMSGOT(MSGID = #BH201                                         
000000*                   PROGID = HBHUN370); .                                  
      *20141027修正終了
000000 CX00389.                                                                 
000000 CX00025. EXIT.                                                           

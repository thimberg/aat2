000000 IDENTIFICATION DIVISION.                                                 
000000 PROGRAM-ID. HBHSS020 .                                                   
000000 DATE-WRITTEN.                                                            
000000 DATE-COMPILED.                                                           
000000 ENVIRONMENT DIVISION.                                                    
000000 CONFIGURATION SECTION.                                                   
000000 SOURCE-COMPUTER.        ACOS.                                            
000000 OBJECT-COMPUTER.        ACOS.                                            
      *20141117修正開始
000000* SPECIAL-NAMES.                                                           
000000*     ITG002   IS SPCHANEL.                                                
      *20141117修正終了
000000 INPUT-OUTPUT SECTION.                                                     
000000 FILE-CONTROL.                                                            
000000     SELECT  運用管理Ｆ                                                        
000000             ASSIGN               VRUNYKAN-MSD                                
000000             ORGANIZATION         IS  RELATIVE                          
000000             ACCESS               RANDOM                                  
000000             RELATIVE             UNK-RKEY                                
000000*             FILE STATUS          FL-STS1  FL-STS2.                       
                   FILE STATUS          FL-STS1.
000000     SELECT  バッチ起動管理Ｆ                                                     
000000             ASSIGN               VRBCHKID-MSD                                
000000             ORGANIZATION         IS  RELATIVE                          
000000             ACCESS               RANDOM                                  
000000             RELATIVE             BCH-RKEY                                
000000*             FILE STATUS          FL-STS1  FL-STS2.                       
                   FILE STATUS          FL-STS1.
000000     SELECT  回収済チケットＷＫＦ                                                   
000000             ASSIGN            SQWKSZTK-MSD                                   
000000*             FILE STATUS          FL-STS1  FL-STS2.                       
                   FILE STATUS          FL-STS1.
000000     SELECT 有効表                                                           
000000            ASSIGN             RQYUKOU-MSD                                
000000            ORGANIZATION       INDEXED                                    
000000            ACCESS  MODE       DYNAMIC                                    
000000            RECORD   KEY       ＹＵＫＯ識別コード                                  
000000*             FILE STATUS          FL-STS1  FL-STS2.                       
                   FILE STATUS          FL-STS1.
000000     SELECT 回収済表                                                          
000000            ASSIGN             RQKAISYU-MSD                               
000000            ORGANIZATION       INDEXED                                    
000000            ACCESS  MODE       DYNAMIC                                    
000000            RECORD   KEY       ＫＡＩＳ識別コード                                  
000000*             FILE STATUS          FL-STS1  FL-STS2.                       
                   FILE STATUS          FL-STS1.
000000     SELECT  ゲームＦ                                                         
000000             ASSIGN               VIGAME-MSD                                  
000000             ORGANIZATION         IS  INDEXED                           
000000             ACCESS               DYNAMIC                                 
000000             RECORD               ＧＡＭＥゲームＩＤ                               
000000*             FILE STATUS          FL-STS1  FL-STS2.                       
                   FILE STATUS          FL-STS1.
000000     SELECT  ゲーム状況Ｆ                                                       
000000             ASSIGN            VIGAMJYO-MSD                                   
000000             ORGANIZATION      IS  INDEXED                              
000000             ACCESS            RANDOM                                     
000000             RECORD            ＧＭＪＹゲームＩＤ                                  
000000*             FILE STATUS          FL-STS1  FL-STS2.                       
                   FILE STATUS          FL-STS1.
000000     SELECT  ゲームタイプＦ                                                      
000000             ASSIGN            VIGMTYPE-MSD                                   
000000             ORGANIZATION      IS  INDEXED                              
000000             ACCESS            RANDOM                                     
000000             RECORD            ＧＭＴＹゲームタイプＸ                                 
000000*             FILE STATUS          FL-STS1  FL-STS2.                       
                   FILE STATUS          FL-STS1.
000000     SELECT  ブロックＦ                                                        
000000             ASSIGN            VIBLOCK-MSD                                    
000000             ORGANIZATION      IS  INDEXED                              
000000             ACCESS            DYNAMIC                                    
000000             RECORD            ＢＬＫ１レコードキー                                 
000000*             FILE STATUS          FL-STS1  FL-STS2.                       
                   FILE STATUS          FL-STS1.
000000     SELECT  抽せん結果Ｆ                                                       
000000             ASSIGN            VITYUKEK-MSD                                   
000000             ORGANIZATION      IS  INDEXED                              
000000             ACCESS            RANDOM                                     
000000             RECORD            ＴＹＫＥゲームＩＤ                                  
000000*             FILE STATUS          FL-STS1  FL-STS2.                       
                   FILE STATUS          FL-STS1.
000000     SELECT  正常回収チケットＦ                                                    
000000             ASSIGN            SQWSZKST-MSD                                   
000000*             FILE STATUS          FL-STS1  FL-STS2.                       
                   FILE STATUS          FL-STS1.
000000     SELECT  回収確認済チケットＷＫＦ                                                 
000000             ASSIGN            SQWKSKKN-MSD                                   
000000*             FILE STATUS          FL-STS1  FL-STS2.                       
                   FILE STATUS          FL-STS1.
000000     SELECT  継続申込複数当せんＷＫＦ                                                 
000000             ASSIGN            SQWKZFKT-MSD                                   
000000*             FILE STATUS          FL-STS1  FL-STS2.                       
                   FILE STATUS          FL-STS1.
000000     SELECT  支払回収突合結果一覧ＷＫＦ                                                
000000             ASSIGN            SQWSIKSK-MSD                                   
000000*             FILE STATUS          FL-STS1  FL-STS2.                       
                   FILE STATUS          FL-STS1.
000000     SELECT  支払回収突合結果合計ＷＫＦ                                                
000000             ASSIGN            SQWSIKGK-MSD                                   
000000*             FILE STATUS          FL-STS1  FL-STS2.                       
                   FILE STATUS          FL-STS1.
000000     SELECT  取消回収突合結果一覧ＷＫＦ                                                
000000             ASSIGN            SQWTOKSK-MSD                                   
000000*             FILE STATUS          FL-STS1  FL-STS2.                       
                   FILE STATUS          FL-STS1.
000000     SELECT  回収済データＷＫＦ                                                    
000000             ASSIGN            SQWKSZDT-MSD                                   
000000*             FILE STATUS          FL-STS1  FL-STS2.                       
                   FILE STATUS          FL-STS1.
      *20141117追加開始
000000     SELECT 変数販売チャネルコードＦ                                                        
000000                  ASSIGN             NEWFILE-MSD                             
000000             FILE STATUS          FL-STS1.                   
      *20141117追加終了
000000 DATA DIVISION.                                                           
000000 FILE SECTION.                                                            
000000 FD  運用管理Ｆ                                                                
      *20141117修正開始
000000*     RECORD  IS  VARYING  IN  SIZE                                        
000000     LABEL  RECORD  STANDARD                                             
      *20141117追加開始
           VALUE  OF IDENTIFICATION IS "VRUNYKAN".
      *20141117追加終了
      *20141117修正終了
000000* 01  運用管理Ｒ２.                                                              
000000*     COPY CFUNK2 .                                                        
000000 01  運用管理Ｒ１.                                                              
000000     COPY CFUNK1 .                                                        
000000* 01  運用管理Ｒ３.                                                              
000000*     COPY CFUNK3 .                                                        
000000 FD  バッチ起動管理Ｆ                                                             
000000     LABEL  RECORD  STANDARD                                             
      *20141117追加開始
           VALUE  OF IDENTIFICATION IS "VRBCHKID".
      *20141117追加終了
000000 01  バッチ起動管理Ｒ.                                                            
000000     COPY CFBCHK .                                                        
000000 FD  回収済チケットＷＫＦ                                                           
000000     LABEL  RECORD  STANDARD                                             
      *20141117追加開始
           VALUE  OF IDENTIFICATION IS "SQWKSZTK".
      *20141117追加終了
000000 01  回収済チケットＷＫＲ.                                                          
000000     COPY CFKZMT REPLACING                                                
000000             //ＫＺＭＴ// BY //ＡＫＺＭ// .                                       
000000 FD  有効表                                                                  
000000     LABEL  RECORD  STANDARD                                             
      *20141117追加開始
           VALUE  OF IDENTIFICATION IS "RQYUKOU".
      *20141117追加終了
000000 01  有効表Ｒ.                                                                
000000     COPY CFYUKO .                                                        
000000 FD  回収済表                                                                 
000000     LABEL  RECORD  STANDARD                                             
      *20141117追加開始
           VALUE  OF IDENTIFICATION IS "RQKAISYU".
      *20141117追加終了
000000 01  回収済表Ｒ.                                                               
000000     COPY CFYUKO REPLACING                                                
000000             //ＹＵＫＯ// BY //ＫＡＩＳ// .                                       
000000 FD  ゲームＦ                                                                 
000000     LABEL  RECORD  STANDARD                                             
      *20141117追加開始
           VALUE  OF IDENTIFICATION IS "VIGAME".
      *20141117追加終了
000000 01  ゲームＲ.                                                                
000000     COPY CFGAME .                                                        
000000 FD  ゲーム状況Ｆ                                                               
000000     LABEL  RECORD  STANDARD                                             
      *20141117追加開始
           VALUE  OF IDENTIFICATION IS "VIGAMJYO".
      *20141117追加終了
000000 01  ゲーム状況Ｒ.                                                              
000000     COPY CFGMJY .                                                        
000000 FD  ゲームタイプＦ                                                              
000000     LABEL  RECORD  STANDARD                                             
      *20141117追加開始
           VALUE  OF IDENTIFICATION IS "VIGMTYPE".
      *20141117追加終了
000000 01  ゲームタイプＲ.                                                             
000000     COPY CFGMTY .                                                        
000000 FD  ブロックＦ                                                                
000000     LABEL  RECORD  STANDARD                                             
      *20141117追加開始
           VALUE  OF IDENTIFICATION IS "VIBLOCK".
      *20141117追加終了
      *20141126修正開始
000000* 01  ブロック管理Ｒ.                                                             
000000*     COPY CFBLK1 .                                                        
000000* 01  ブロック明細Ｒ.                                                             
000000*     COPY CFBLK2 .
       01  ブロックＦレコード.
000000  02  ブロック管理Ｒ.                                                             
000000     COPY CFBLK1 .                                                        
000000  02  ブロック明細Ｒ.                                                             
000000     COPY CFBLK2 .
      *20141126修正終了                                                        
000000 FD  抽せん結果Ｆ                                                               
000000     LABEL  RECORD  STANDARD                                             
      *20141117追加開始
           VALUE  OF IDENTIFICATION IS "VITYUKEK".
      *20141117追加終了
000000 01  抽せん結果Ｒ.                                                              
000000     COPY CFTYKE .                                                        
000000 FD  正常回収チケットＦ                                                            
000000     LABEL  RECORD  STANDARD                                             
      *20141117追加開始
           VALUE  OF IDENTIFICATION IS "SQWSZKST".
      *20141117追加終了
000000 01  正常回収チケットＲ.                                                           
000000     COPY CFWSKS .                                                        
000000 FD  回収確認済チケットＷＫＦ                                                         
000000     LABEL  RECORD  STANDARD                                             
      *20141117追加開始
           VALUE  OF IDENTIFICATION IS "SQWKSKKN".
      *20141117追加終了
000000 01  回収確認済チケットＷＫＲ.                                                        
000000     COPY CFKNMT .                                                        
000000 FD  継続申込複数当せんＷＫＦ                                                         
000000     LABEL  RECORD  STANDARD                                             
      *20141117追加開始
           VALUE  OF IDENTIFICATION IS "SQWKZFKT".
      *20141117追加終了
000000 01  継続申込複数当せんＷＫＲ.                                                        
000000     COPY CFWKZF .                                                        
000000 FD  回収済データＷＫＦ                                                            
000000     LABEL  RECORD  STANDARD                                             
      *20141117追加開始
           VALUE  OF IDENTIFICATION IS "SQWKSZDT".
      *20141117追加終了
000000 01  回収済データＷＫＲ.                                                           
000000     COPY CFYUKO REPLACING                                                
000000             //ＹＵＫＯ// BY //ＫＡＩＷ// .                                       
000000 FD  支払回収突合結果一覧ＷＫＦ                                                        
000000     LABEL  RECORD  STANDARD                                             
      *20141117追加開始
           VALUE  OF IDENTIFICATION IS "SQWSIKSK".
      *20141117追加終了
000000 01  支払回収突合結果一覧ＷＫＲ.                                                       
000000     COPY CFWSTK .                                                        
000000 FD  支払回収突合結果合計ＷＫＦ                                                        
000000     LABEL  RECORD  STANDARD                                             
      *20141117追加開始
           VALUE  OF IDENTIFICATION IS "SQWSIKGK".
      *20141117追加終了
000000 01  支払回収突合結果合計ＷＫＲ.                                                       
000000     COPY CFWSGK .                                                        
000000 FD  取消回収突合結果一覧ＷＫＦ                                                        
000000     LABEL  RECORD  STANDARD                                             
      *20141117追加開始
           VALUE  OF IDENTIFICATION IS "SQWTOKSK".
      *20141117追加終了
000000 01  取消回収突合結果一覧ＷＫＲ.                                                       
000000     COPY CFWTOK .                                                        
      *20141117追加開始
000000 FD  変数販売チャネルコードＦ
           LABEL  RECORD  STANDARD                                                        
           VALUE  OF IDENTIFICATION IS "NEWFILE".
       01  SPCHANEL                            PIC X(02).
      *20141117追加終了      
000000 WORKING-STORAGE SECTION.                                                 
000000 01  利用者制御変数エリア.                                                          
000000   03  変数販売チャネル      PIC  9(02).                                          
000000 01  一時作業エリア.                                                             
000000   03  発行日                PIC 9(08).                                      
000000   03  FILLER                REDEFINES 発行日.                               
000000     05  発行日（年）        PIC 9(04).                                         
000000     05  発行日（月）        PIC 9(02).                                         
000000     05  発行日（日）        PIC 9(02).                                         
000000   03  ＷＫ−支払日          PIC 9(08).                                         
000000   03  ＷＫ−取りまとめ日    PIC 9(08).                                            
000000   03  ＷＫ−ゲームＩＤ.                                                          
000000     05  ＷＫ−ゲームタイプ  PIC  9(02).                                           
000000     05  ＷＫ−ブロックコード     USAGE  COMP-1.                                    
000000     05  ＷＫ−回号               USAGE  COMP-1.                               
000000   03  ＷＧＪＹＯ最終整理完了回号 USAGE  COMP-1.                                       
000000   03  整理完了フラグ        PIC  9(01).                                         
000000   03  ＷＫ−不正ステータス  PIC  9(02).                                            
000000   03  ＷＫ−抽せん当せんＳＴＳ  PIC  9(02).                                          
000000   03  ＷＫ−金額                      PIC  9(14) COMP-3.                      
000000   03  ＷＫ−当せんテーブル.                                                        
000000     05  ＷＫ−当せん明細              OCCURS 5.                                  
000000       07  ＷＫ−当せん回号            USAGE COMP-1.                              
000000       07  ＷＫ−支払金                PIC  9(14) COMP-3.                       
      *20141117修正開始
000000*       07  ＷＫ−当せん等級            PIC  1(16) USAGE BIT.                      
             07  ＷＫ−当せん等級            PIC X(02).
      *20141117修正終了
000000       07  ＷＫ−整理完了フラグ        PIC  9(01).                                  
      *20141117修正開始
         03  ＷＫ−等級ビット列              PIC  X(02).
000000*   03  ＷＫ−等級ビット列.                                                         
000000*     05  ＷＫ−等級１Ｂ                 PIC  1(01) USAGE BIT.                    
000000*     05  ＷＫ−等級２Ｂ                 PIC  1(01) USAGE BIT.                    
000000*     05  ＷＫ−等級３Ｂ                 PIC  1(01) USAGE BIT.                    
000000*     05  ＷＫ−等級４Ｂ                 PIC  1(01) USAGE BIT.                    
000000*     05  ＷＫ−等級５Ｂ                 PIC  1(01) USAGE BIT.                    
000000*     05  ＷＫ−等級６Ｂ                 PIC  1(01) USAGE BIT.                    
000000*     05  ＷＫ−等級７Ｂ                 PIC  1(01) USAGE BIT.                    
000000*     05  ＷＫ−等級８Ｂ                 PIC  1(01) USAGE BIT.                    
000000*     05  ＷＫ−等級９Ｂ                 PIC  1(01) USAGE BIT.                    
000000*     05  ＷＫ−等級１０Ｂ               PIC  1(01) USAGE BIT.                     
000000*     05  ＷＫ−等級１１Ｂ               PIC  1(01) USAGE BIT.                     
000000*     05  ＷＫ−等級１２Ｂ               PIC  1(01) USAGE BIT.                     
000000*     05  ＷＫ−等級１３Ｂ               PIC  1(01) USAGE BIT.                     
000000*     05  ＷＫ−等級１４Ｂ               PIC  1(01) USAGE BIT.                     
000000*     05  ＷＫ−等級１５Ｂ               PIC  1(01) USAGE BIT.                     
000000*     05  ＷＫ−等級１６Ｂ               PIC  1(01) USAGE BIT.                     
      *20141117修正終了
000000   03  ＷＫ−等級ビット列Ｒ   REDEFINES  ＷＫ−等級ビット列.                                 
      *20141117修正開始
000000*     05  ＷＫ−等級ビットＲ             PIC  1(16) USAGE BIT.                      
           05  ＷＫ−等級ビットＲ             PIC  X(02).
      *20141117修正終了
000000   03  ＷＫ−等級数列.                                                           
000000     05  ＷＫ−等級数        PIC  9(01)  OCCURS 16.                             
000000   03  ＷＫ−支払正常枚数              PIC  9(09).                                 
000000   03  ＷＫ−支払不正枚数              PIC  9(09).                                 
000000   03  ＷＫ−継続枚数                  PIC  9(09).                               
000000   03  ＷＫ−総当せん金                PIC  9(14) COMP-3.                         
000000   03  ＷＫ−総継続当せん金            PIC  9(14) COMP-3.                           
000000   03  ＷＫ−取消正常枚数              PIC  9(09).                                 
000000   03  ＷＫ−取消不正枚数              PIC  9(09).                                 
000000   03  ＷＫ−総取消金                  PIC  9(14) COMP-3.                        
      *20141117修正開始
000000*   03  UNK-RKEY              USAGE COMP-2.                                
000000*   03  BCH-RKEY              USAGE COMP-2.                                
000000   03  UNK-RKEY              PIC  9(08).                              
000000   03  BCH-RKEY              PIC  9(08).                               
      *20141117修正終了
000000   03  SW-READEND            PIC  9(01).                                  
000000   03  SW-WHILEEND           PIC  9(01).                                  
000000   03  ＳＷ−判定            PIC  9(01).                                       
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
000000   03  継続ＣＮＴ              USAGE  COMP-1.                                  
000000   03  当せんＣＮＴ            USAGE  COMP-1.                                   
000000   03  抽せんＣＮＴ            USAGE  COMP-1.                                   
000000   03  ＷＫ−識別コード上.                                                         
000000     05  ＷＫ−識別Ｇ               PIC  9(02).                                 
000000     05  ＷＫ−識別ＢＫ             PIC  9(03).                                  
000000     05  FILLER                     PIC  9(03).                           
000000   03  ＷＫ−ＧＭＢＬＫ.                                                          
000000     05  ＷＫ−ＧＢゲーム           PIC  9(02).                                   
000000     05  ＷＫ−ＧＢブロック         PIC  9(03).                                    
000000   03  ＷＫ−不正回収合計ＴＢＬ.                                                      
000000     05  ＷＫ−不正回収合計−ＧＢ   OCCURS  50.                                       
000000       07  ＷＫ−不回ＧＭＢＬ.                                                     
000000         09  ＷＫ−不回ゲーム       PIC  9(02).                                   
000000         09  ＷＫ−不回ブロック     PIC  9(03).                                    
000000       07  ＷＫ−不回合計−発券年月 OCCURS  18.                                       
000000         09  ＷＫ−不正回収合計枚数 PIC  9(07).                                      
000000   03  ＷＫ−識別コード変換.                                                        
000000     05  PTR_SBCDBEFORE             USAGE POINTER.                        
000000     05  PTR_SBCDAFTER              USAGE POINTER.                        
000000     05  ＷＫ−１６識別コード.                                                      
000000       07  ＷＫ−１６識別コード上   PIC  9(08).                                      
000000       07  ＷＫ−１６識別コード下   PIC  9(08).                                      
000000     05  ＷＫ−２４識別コード.                                                      
000000       07  ＷＫ−２４識別コード上   PIC  9(08).                                      
000000       07  ＷＫ−２４識別コード中   PIC  9(08).                                      
000000       07  ＷＫ−２４識別コード下   PIC  9(08).                                      
000000   03  ＷＫ−ＫＺＭＴ識別コード.                                                      
000000     05  ＷＫ−ＫＺＭＴ識別コード上 PIC  9(08).                                        
000000     05  ＷＫ−ＫＺＭＴ識別コード中 PIC  9(08).                                        
000000     05  ＷＫ−ＫＺＭＴ識別コード下 PIC  9(08).                                        
000000   03  ＷＫ−読込障害入力連番       PIC  9(07).                                      
000000 01 ＷＫ−前件回収データ                                                            
000000     COPY CFKZMT .                                                        
000000 01 ＷＫ−前々件回収データ                                                           
000000     COPY CFKZMT REPLACING                                                
000000              //ＫＺＭＴ// BY //ＢＫＺＭ// .                                      
      *20141117修正開始
000000* 01  ＮＵＬＬ PIC 1(16) USAGE IS BIT VALUE B"0000000000000000".               
       01  ＮＵＬＬ PIC X(02)  VALUE ""0000"".
      *20141117修正終了
000000 01  抽せん当せんＳＴＳ.                                                           
000000    03  未抽せん・当せん有り  PIC 9(02) VALUE 1.                                    
000000    03  未抽せん・当せん無し  PIC 9(02) VALUE 2.                                    
000000    03  抽せん済・当せん有り  PIC 9(02) VALUE 3.                                    
000000    03  抽せん済・当せん無し  PIC 9(02) VALUE 4.                                    
      *20141117追加開始
       01  SHIFT                    PIC X(1).
       01  DTCP-PARAM.                                                          
           COPY CLDTCP.
       01  SRLC-PARAM.                                                          
           COPY CLSRLC.
      *20141117追加終了
000000 PROCEDURE DIVISION .                                                     
000000 MAIN-RTN .                                                               
000000     PERFORM S000-RTN THRU CX00002 .                                      
000000     IF NOT(ＢＣＨＫ稼働フラグ = 1) GO TO CX00020.                                  
000000     PERFORM P000-RTN THRU CX00003 .                                      
000000 CX00020.                                                                 
           DISPLAY "CX00020" UPON CONSOLE
000000     PERFORM E000-RTN THRU CX00004 .                                      
000000 CX00001. STOP RUN.                                                       
           DISPLAY "CX00001" UPON CONSOLE
000000 S000-RTN .                                                               
000000       OPEN  INPUT  運用管理Ｆ .                                               
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00021.                             
000000           DISPLAY "HBHSS020-01 VRUNYKAN OPEN ERROR " ,                   
000000                                FL-STS1 " " FL-STS2                       
000000           STOP RUN .                                                   
000000 CX00021.                                                                 
           DISPLAY "CX00021" UPON CONSOLE
000000       OPEN  INPUT  バッチ起動管理Ｆ .                                            
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00022.                             
000000           DISPLAY "HBHSS020-02 VRBCHKID OPEN ERROR " ,                   
000000                                FL-STS1 " " FL-STS2                       
000000           STOP RUN .                                                   
000000 CX00022.                                                                 
           DISPLAY "CX00022" UPON CONSOLE
000000       OPEN  INPUT  回収済チケットＷＫＦ .                                          
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00023.                             
000000           DISPLAY "HBHSS020-03 SQWKSZTK OPEN ERROR " ,                   
000000                                FL-STS1 " " FL-STS2                       
000000           STOP RUN .                                                   
000000 CX00023.                                                                 
           DISPLAY "CX00023" UPON CONSOLE
000000       OPEN INPUT   有効表 .                                                 
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00024.                             
000000          DISPLAY "HBHSS020-04 RQYUKOU  OPEN ERROR " ,                    
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00024.                                                                 
           DISPLAY "CX00024" UPON CONSOLE
000000       OPEN INPUT   回収済表 .                                                
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00025.                             
000000          DISPLAY "HBHSS020-05 RQKAISYU OPEN ERROR " ,                    
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00025.                                                                 
           DISPLAY "CX00025" UPON CONSOLE
000000       OPEN  INPUT  ゲームＦ .                                                
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00026.                             
000000          DISPLAY "HBHSS020-06 VIGAME OPEN ERROR " ,                      
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00026.                                                                 
           DISPLAY "CX00026" UPON CONSOLE
000000       OPEN  INPUT  ゲーム状況Ｆ .                                              
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00027.                             
000000           DISPLAY "HBHSS020-07 VIGAMJYO OPEN ERROR " ,                   
000000                                FL-STS1 " " FL-STS2                       
000000           STOP RUN .                                                   
000000 CX00027.                                                                 
           DISPLAY "CX00027" UPON CONSOLE
000000       OPEN  INPUT  ゲームタイプＦ .                                             
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00028.                             
000000          DISPLAY "HBHSS020-08 VIGMTYPE OPEN ERROR " ,                    
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00028.                                                                 
           DISPLAY "CX00028" UPON CONSOLE
000000       OPEN  INPUT  ブロックＦ .                                               
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00029.                             
000000          DISPLAY "HBHSS020-09 VIBLOCK OPEN ERROR " ,                     
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00029.                                                                 
           DISPLAY "CX00029" UPON CONSOLE
000000       OPEN  INPUT  抽せん結果Ｆ .                                              
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00030.                             
000000          DISPLAY "HBHSS020-10 VITYUKEK OPEN ERROR " ,                    
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00030.                                                                 
           DISPLAY "CX00030" UPON CONSOLE
000000       OPEN  OUTPUT  正常回収チケットＦ .                                          
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00031.                             
000000          DISPLAY "HBHSS020-11 SQWSZKST OPEN ERROR " ,                    
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00031.                                                                 
           DISPLAY "CX00031" UPON CONSOLE
000000       OPEN  OUTPUT  回収確認済チケットＷＫＦ .                                       
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00032.                             
000000          DISPLAY "HBHSS020-12 SQWKSKKN OPEN ERROR " ,                    
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00032.                                                                 
           DISPLAY "CX00032" UPON CONSOLE
000000       OPEN  OUTPUT  継続申込複数当せんＷＫＦ .                                       
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00033.                             
000000          DISPLAY "HBHSS020-13 SQWKZFKT OPEN ERROR " ,                    
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00033.                                                                 
           DISPLAY "CX00033" UPON CONSOLE
000000       OPEN  OUTPUT  支払回収突合結果一覧ＷＫＦ .                                      
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00034.                             
000000          DISPLAY "HBHSS020-14 SQWSIKSK OPEN ERROR " ,                    
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00034.                                                                 
           DISPLAY "CX00034" UPON CONSOLE
000000       OPEN  OUTPUT  支払回収突合結果合計ＷＫＦ .                                      
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00035.                             
000000          DISPLAY "HBHSS020-56 SQWSIKGK OPEN ERROR " ,                    
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00035.                                                                 
           DISPLAY "CX00035" UPON CONSOLE
000000       OPEN  OUTPUT  取消回収突合結果一覧ＷＫＦ .                                      
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00036.                             
000000          DISPLAY "HBHSS020-15 SQWTOKSK OPEN ERROR " ,                    
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00036.                                                                 
           DISPLAY "CX00036" UPON CONSOLE
000000       OPEN  OUTPUT  回収済データＷＫＦ .                                          
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00037.                             
000000          DISPLAY "HBHSS020-16 SQWKSZDT OPEN ERROR " ,                    
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00037.                                                                 
           DISPLAY "CX00037" UPON CONSOLE
000000       INITIALIZE    一時作業エリア                                              
000000       SET PTR_SBCDBEFORE TO ADDRESS OF ＷＫ−１６識別コード.                       
000000       SET PTR_SBCDAFTER  TO ADDRESS OF ＷＫ−２４識別コード.                       
000000     MOVE 1 TO BCH-RKEY                                                   
000000       READ  バッチ起動管理Ｆ  INVALID CONTINUE.                                  
000000     IF NOT(FL-STS1 NOT = "00" AND "02") GO TO CX00038.                    
000000            DISPLAY "HBHSS020-17 VRBCHKID READ ERROR " ,                  
000000                     FL-STS1 "-" FL-STS2                                  
000000            STOP RUN .                                                  
000000 CX00038.                                                                 
           DISPLAY "CX00038" UPON CONSOLE
000000     MOVE 1 TO UNK-RKEY                                                   
000000       READ  運用管理Ｆ  INVALID CONTINUE.                                     
000000     IF NOT(FL-STS1 NOT = "00" AND "02") GO TO CX00039.                    
000000            DISPLAY "HBHSS020-18 VRUNYKAN READ ERROR " ,                  
000000                     FL-STS1 "-" FL-STS2                                  
000000            STOP RUN .                                                  
000000 CX00039.                                                                 
           DISPLAY "CX00039" UPON CONSOLE
      *20141105修正開始                                                                 
000000*       ACCEPT  変数販売チャネル      FROM  SPCHANEL.                              
000000         OPEN  INPUT  変数販売チャネルコードＦ .                                          
000000     IF FL-STS1 NOT = ZERO                           
000000           DISPLAY "HBHSS020-99 NEWFILE OPEN  ERROR ",                   
000000                   FL-STS1 " " FL-STS2                                
000000           STOP RUN .
           READ 変数販売チャネルコードＦ AT END CONTINUE. 
           MOVE SPCHANEL TO 変数販売チャネル
000000         CLOSE 変数販売チャネルコードＦ .                                                 
000000     IF FL-STS1 NOT = ZERO                           
000000           DISPLAY "HBHSS020-99 NEWFILE CLOSE ERROR ",                   
000000           STOP RUN . 
      *20141105修正終了
000000       INITIALIZE    支払回収突合結果一覧ＷＫＲ                                        
000000       INITIALIZE    支払回収突合結果合計ＷＫＲ                                        
000000       INITIALIZE    取消回収突合結果一覧ＷＫＲ                                        
000000       INITIALIZE    継続申込複数当せんＷＫＲ                                         
000000     MOVE ＵＮＫ１バッチ業務日付 TO ＷＳＴＫ突き合わせ処理日                                     
000000     MOVE 変数販売チャネル TO ＷＳＴＫ販売チャネルコード                                       
000000     MOVE ＵＮＫ１バッチ業務日付 TO ＷＳＧＫ突き合わせ処理日                                     
000000     MOVE ＵＮＫ１バッチ業務日付 TO ＷＴＯＫ突き合わせ処理日                                     
000000     MOVE 変数販売チャネル TO ＷＴＯＫ販売チャネルコード                                       
000000     MOVE ＵＮＫ１バッチ業務日付 TO ＷＫＺＦ突き合わせ処理日 .                                   
000000 CX00002. EXIT.                                                           
000000 P000-RTN .                                                               
000000     MOVE 1 TO ＷＫ−不回ゲーム (1)                                               
000000     MOVE ZERO TO ＷＫ−不回ブロック (1)                                           
000000     MOVE 2 TO ＷＫ−不回ゲーム (2)                                               
000000     MOVE ZERO TO ＷＫ−不回ブロック (2)                                           
000000     MOVE 4 TO ＷＫ−不回ゲーム (3)                                               
000000     MOVE 1 TO ＷＫ−不回ブロック (3)                                              
000000     MOVE 5 TO ＷＫ−不回ゲーム (4)                                               
000000     MOVE ZERO TO ＷＫ−不回ブロック (4)                                           
000000     MOVE 6 TO ＷＫ−不回ゲーム (5)                                               
000000     MOVE ZERO TO ＷＫ−不回ブロック (5)                                           
000000     MOVE LOW-VALUE TO ＷＫ−前々件回収データ                                        
000000     MOVE LOW-VALUE TO ＷＫ−前件回収データ                                         
000000     MOVE ZERO TO SW-READEND                                              
000000     MOVE ZERO TO SW-WHILEEND                                             
000000       READ  回収済チケットＷＫＦ  NEXT  AT  END  CONTINUE .                        
000000     IF NOT(FL-STS1 = "00" OR "02") GO TO CX00040.                         
000000     MOVE 回収済チケットＷＫＲ TO ＷＫ−前件回収データ .                                      
000000     IF NOT(ＫＺＭＴ識別コード (17:8) = SPACE) GO TO CX00041.                       
000000     PERFORM ZMSSRLCV-RTN THRU CX00017                                    
000000     MOVE ＫＺＭＴ識別コード TO ＷＫ−ＫＺＭＴ識別コード                                       
000000     MOVE ZERO TO ＷＫ−ＫＺＭＴ識別コード下 .                                         
000000     GO TO CX00042.                                                       
000000 CX00041.                                                                 
           DISPLAY "CX00041" UPON CONSOLE
000000     MOVE ＫＺＭＴ識別コード上 TO ＷＫ−２４識別コード上                                       
000000     MOVE ＫＺＭＴ識別コード中 TO ＷＫ−２４識別コード中                                       
000000     MOVE ＫＺＭＴ識別コード下 TO ＷＫ−２４識別コード下                                       
000000     MOVE ＫＺＭＴ識別コード TO ＷＫ−ＫＺＭＴ識別コード .                                     
000000 CX00042.                                                                 
           DISPLAY "CX00042" UPON CONSOLE
000000     MOVE ＫＺＭＴ取りまとめ日 TO ＷＳＴＫ取りまとめ日                                        
000000     MOVE ＫＺＭＴ取りまとめ日 TO ＷＳＧＫ取りまとめ日                                        
000000     MOVE ＫＺＭＴ取りまとめ日 TO ＷＴＯＫ取りまとめ日                                        
000000     MOVE ＫＺＭＴ取りまとめ日 TO ＷＫＺＦ取りまとめ日 .                                      
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
000000         READ  回収済チケットＷＫＦ  NEXT  AT  END  CONTINUE.                       
000000     IF NOT(FL-STS1 = "00" OR "02") GO TO CX00046.                         
000000     GO TO CX00047.                                                       
000000 CX00046. IF NOT(FL-STS1 = "10") GO TO CX00048.                            
           DISPLAY "CX00046" UPON CONSOLE
000000     MOVE HIGH-VALUE TO 回収済チケットＷＫＲ                                        
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
000000     IF NOT(ＫＺＭＴ識別コード = ＢＫＺＭ識別コード OR 
              ＫＺＭＴ識別コード = ＡＫＺＭ識別コード ) GO TO CX00051.                                                      
000000     IF NOT(ＫＺＭＴ識別コード = ＢＫＺＭ識別コード) GO TO CX00052.                          
000000     PERFORM P500-RTN THRU CX00009 .                                      
000000     IF NOT(ＫＺＭＴ識別コード NOT = 
           ＡＫＺＭ識別コード) GO TO CX00053.                      
000000     MOVE 0 TO ＷＫ−読込障害入力連番 .                                              
000000 CX00053.                                                                 
           DISPLAY "CX00053" UPON CONSOLE
000000     GO TO CX00054.                                                       
000000 CX00052.                                                                 
           DISPLAY "CX00052" UPON CONSOLE
000000     IF NOT(ＫＺＭＴ識別コード NOT = 
             ＢＫＺＭ識別コード) GO TO CX00055.                      
000000     MOVE ＫＺＭＴ入力連番号 TO ＷＫ−読込障害入力連番 .                                      
000000 CX00055.                                                                 
           DISPLAY "CX00055" UPON CONSOLE
000000     PERFORM P500-RTN THRU CX00009 .                                      
000000 CX00054.                                                                 
           DISPLAY "CX00054" UPON CONSOLE
000000     GO TO CX00056.                                                       
000000 CX00051.                                                                 
           DISPLAY "CX00051" UPON CONSOLE
000000     MOVE ZERO TO 整理完了フラグ                                                 
000000     MOVE ZERO TO ＳＷ−判定                                                   
000000     MOVE ＷＫ−２４識別コード上 TO ＹＵＫＯ識別コード上                                       
000000     MOVE ＷＫ−２４識別コード中 TO ＹＵＫＯ識別コード中                                       
000000     MOVE ＷＫ−２４識別コード下 TO ＹＵＫＯ識別コード下                                       
000000         READ 有効表     INVALID KEY CONTINUE.                               
000000     IF NOT(FL-STS1 = "00" OR "02") GO TO CX00057.                         
000000     MOVE 1 TO ＳＷ−判定 .                                                    
000000     GO TO CX00058.                                                       
000000 CX00057. IF NOT(FL-STS1 = "23") GO TO CX00059.                            
           DISPLAY "CX00057" UPON CONSOLE
000000     MOVE ＷＫ−２４識別コード上 TO ＫＡＩＳ識別コード上                                       
000000     MOVE ＷＫ−２４識別コード中 TO ＫＡＩＳ識別コード中                                       
000000     MOVE ＷＫ−２４識別コード下 TO ＫＡＩＳ識別コード下                                       
000000           READ 回収済表   INVALID KEY CONTINUE.                              
000000     IF NOT(FL-STS1 = "00" OR "02") GO TO CX00060.                         
000000     MOVE 2 TO ＳＷ−判定 .                                                    
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
000000     IF NOT(ＫＺＭＴチケット区分 = 1) GO TO CX00063.                                 
000000     IF NOT(ＳＷ−判定 = 1) GO TO CX00064.                                      
000000     IF NOT(ＹＵＫＯ支払識別コード上 = ZERO) GO TO CX00065.                            
000000     IF NOT(ＹＵＫＯ取消識別コード上 NOT = ZERO) GO TO CX00066.                        
000000     MOVE 2 TO ＷＫ−不正ステータス .                                               
000000     GO TO CX00067.                                                       
000000 CX00066.                                                                 
           DISPLAY "CX00066" UPON CONSOLE
000000     PERFORM P100-RTN THRU CX00005 .                                      
000000     IF NOT(ＹＵＫＯレコードＩＤ = 7 OR 9) GO TO CX00068.                            
000000     IF NOT(ＷＫ−抽せん当せんＳＴＳ = 
                  未抽せん・当せん有り) GO TO CX00069.                      
000000     MOVE 3 TO ＷＫ−不正ステータス .                                               
000000     GO TO CX00070.                                                       
000000 CX00069. IF NOT(ＷＫ−抽せん当せんＳＴＳ = 
                  未抽せん・当せん無し) GO TO CX00071.                 
           DISPLAY "CX00069" UPON CONSOLE
000000     MOVE 4 TO ＷＫ−不正ステータス .                                               
000000     GO TO CX00070.                                                       
000000 CX00071. IF NOT(ＷＫ−抽せん当せんＳＴＳ = 
                   抽せん済・当せん有り) GO TO CX00072.                 
           DISPLAY "CX00071" UPON CONSOLE
000000     MOVE 5 TO ＷＫ−不正ステータス .                                               
000000     GO TO CX00070.                                                       
000000 CX00072. IF NOT(ＷＫ−抽せん当せんＳＴＳ = 
                抽せん済・当せん無し) GO TO CX00073.                 
           DISPLAY "CX00072" UPON CONSOLE
000000     MOVE 1 TO ＷＫ−不正ステータス .                                               
000000 CX00073.                                                                 
           DISPLAY "CX00073" UPON CONSOLE
000000 CX00070.                                                                 
           DISPLAY "CX00070" UPON CONSOLE
000000     GO TO CX00074.                                                       
000000 CX00068.                                                                 
           DISPLAY "CX00068" UPON CONSOLE
000000     IF NOT(ＷＫ−抽せん当せんＳＴＳ = 
                  未抽せん・当せん有り) GO TO CX00075.                      
000000     MOVE 6 TO ＷＫ−不正ステータス .                                               
000000     GO TO CX00076.                                                       
000000 CX00075. IF NOT(ＷＫ−抽せん当せんＳＴＳ = 
                  未抽せん・当せん無し) GO TO CX00077.                 
           DISPLAY "CX00075" UPON CONSOLE
000000     MOVE 7 TO ＷＫ−不正ステータス .                                               
000000     GO TO CX00076.                                                       
000000 CX00077. IF NOT(ＷＫ−抽せん当せんＳＴＳ = 
                 抽せん済・当せん有り) GO TO CX00078.                 
           DISPLAY "CX00077" UPON CONSOLE
000000     MOVE 8 TO ＷＫ−不正ステータス .                                               
000000     GO TO CX00076.                                                       
000000 CX00078. IF NOT(ＷＫ−抽せん当せんＳＴＳ = 
                 抽せん済・当せん無し) GO TO CX00079.                 
           DISPLAY "CX00078" UPON CONSOLE
000000     MOVE 1 TO ＷＫ−不正ステータス .                                               
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
000000     IF NOT(ＹＵＫＯ回収日 = ZERO) GO TO CX00081.                                 
000000     IF NOT( (ＹＵＫＯ当初継続回号数 NOT = 
              ＹＵＫＯ実質継続回号数) AND (ＹＵＫＯ代替識別コード上 =          
000000     ZERO)) GO TO CX00082.                                                 
000000     MOVE 12 TO ＷＫ−不正ステータス                                                
000000     PERFORM P200-RTN THRU CX00006 .                                      
000000     GO TO CX00083.                                                       
000000 CX00082.                                                                 
           DISPLAY "CX00082" UPON CONSOLE
000000     PERFORM P300-RTN THRU CX00007 .                                      
000000     IF NOT(整理完了フラグ = 1) GO TO CX00084.                                    
000000     MOVE 10 TO ＷＫ−不正ステータス                                                
000000     PERFORM P200-RTN THRU CX00006 .                                      
000000     GO TO CX00085.                                                       
000000 CX00084. IF NOT(整理完了フラグ = 9) GO TO CX00086.                               
           DISPLAY "CX00084" UPON CONSOLE
000000     MOVE 1 TO ＷＫ−不正ステータス                                                 
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
000000     MOVE 9 TO ＷＫ−不正ステータス                                                 
000000     PERFORM P200-RTN THRU CX00006 .                                      
000000 CX00087.                                                                 
           DISPLAY "CX00087" UPON CONSOLE
000000 CX00080.                                                                 
           DISPLAY "CX00080" UPON CONSOLE
000000     GO TO CX00088.                                                       
000000 CX00064. IF NOT(ＳＷ−判定 = 2) GO TO CX00089.                                 
           DISPLAY "CX00064" UPON CONSOLE
000000     MOVE 9 TO ＷＫ−不正ステータス                                                 
000000     PERFORM P200-RTN THRU CX00006 .                                      
000000     GO TO CX00088.                                                       
000000 CX00089. IF NOT(ＳＷ−判定 = ZERO) GO TO CX00090.                              
           DISPLAY "CX00089" UPON CONSOLE
000000     MOVE 1 TO ＷＫ−不正ステータス                                                 
000000     PERFORM P200-RTN THRU CX00006 .                                      
000000 CX00090.                                                                 
           DISPLAY "CX00090" UPON CONSOLE
000000 CX00088.                                                                 
           DISPLAY "CX00088" UPON CONSOLE
000000     GO TO CX00091.                                                       
000000 CX00063. IF NOT(ＫＺＭＴチケット区分 = 2) GO TO CX00092.                            
           DISPLAY "CX00063" UPON CONSOLE
000000     IF NOT(ＳＷ−判定 = 1) GO TO CX00093.                                      
000000     IF NOT(ＹＵＫＯ取消識別コード上 = ZERO) GO TO CX00094.                            
000000     IF NOT(ＹＵＫＯ支払識別コード上 NOT = ZERO) GO TO CX00095.                        
000000     MOVE 2 TO ＷＫ−不正ステータス .                                               
000000     GO TO CX00096.                                                       
000000 CX00095.                                                                 
           DISPLAY "CX00095" UPON CONSOLE
000000     PERFORM P100-RTN THRU CX00005 .                                      
000000     IF NOT(ＹＵＫＯレコードＩＤ = 7 OR 9) GO TO CX00097.                            
000000     IF NOT(ＷＫ−抽せん当せんＳＴＳ = 
                    未抽せん・当せん有り) GO TO CX00098.                      
000000     MOVE 3 TO ＷＫ−不正ステータス .                                               
000000     GO TO CX00099.                                                       
000000 CX00098. IF NOT(ＷＫ−抽せん当せんＳＴＳ = 
                   未抽せん・当せん無し) GO TO CX00100.                 
           DISPLAY "CX00098" UPON CONSOLE
000000     MOVE 4 TO ＷＫ−不正ステータス .                                               
000000     GO TO CX00099.                                                       
000000 CX00100. IF NOT(ＷＫ−抽せん当せんＳＴＳ = 
                  抽せん済・当せん有り) GO TO CX00101.                 
           DISPLAY "CX00100" UPON CONSOLE
000000     MOVE 5 TO ＷＫ−不正ステータス .                                               
000000     GO TO CX00099.                                                       
000000 CX00101. IF NOT(ＷＫ−抽せん当せんＳＴＳ = 
                   抽せん済・当せん無し) GO TO CX00102.                 
           DISPLAY "CX00101" UPON CONSOLE
000000     MOVE 1 TO ＷＫ−不正ステータス .                                               
000000 CX00102.                                                                 
           DISPLAY "CX00102" UPON CONSOLE
000000 CX00099.                                                                 
           DISPLAY "CX00099" UPON CONSOLE
000000     GO TO CX00103.                                                       
000000 CX00097.                                                                 
           DISPLAY "CX00097" UPON CONSOLE
000000     IF NOT(ＷＫ−抽せん当せんＳＴＳ = 
                  未抽せん・当せん有り) GO TO CX00104.                      
000000     MOVE 6 TO ＷＫ−不正ステータス .                                               
000000     GO TO CX00105.                                                       
000000 CX00104. IF NOT(ＷＫ−抽せん当せんＳＴＳ = 
                   未抽せん・当せん無し) GO TO CX00106.                 
           DISPLAY "CX00104" UPON CONSOLE
000000     MOVE 7 TO ＷＫ−不正ステータス .                                               
000000     GO TO CX00105.                                                       
000000 CX00106. IF NOT(ＷＫ−抽せん当せんＳＴＳ = 
               抽せん済・当せん有り) GO TO CX00107.                 
           DISPLAY "CX00106" UPON CONSOLE
000000     MOVE 8 TO ＷＫ−不正ステータス .                                               
000000     GO TO CX00105.                                                       
000000 CX00107. IF NOT(ＷＫ−抽せん当せんＳＴＳ = 
                 抽せん済・当せん無し) GO TO CX00108.                 
           DISPLAY "CX00107" UPON CONSOLE
000000     MOVE 1 TO ＷＫ−不正ステータス .                                               
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
000000     IF NOT(ＹＵＫＯ回収日 = ZERO) GO TO CX00110.                                 
000000     IF NOT(ＹＵＫＯ取消区分 = ZERO) GO TO CX00111.                                
000000     PERFORM P400-RTN THRU CX00008 .                                      
000000     IF NOT(整理完了フラグ = 1) GO TO CX00112.                                    
000000     MOVE 10 TO ＷＫ−不正ステータス                                                
000000     PERFORM P200-RTN THRU CX00006 .                                      
000000     GO TO CX00113.                                                       
000000 CX00112. IF NOT(整理完了フラグ = 9) GO TO CX00114.                               
           DISPLAY "CX00112" UPON CONSOLE
000000     MOVE 1 TO ＷＫ−不正ステータス                                                 
000000     PERFORM P200-RTN THRU CX00006 .                                      
000000 CX00114.                                                                 
           DISPLAY "CX00114" UPON CONSOLE
000000 CX00113.                                                                 
           DISPLAY "CX00113" UPON CONSOLE
000000     GO TO CX00115.                                                       
000000 CX00111.                                                                 
           DISPLAY "CX00111" UPON CONSOLE
000000     MOVE 1 TO ＷＫ−不正ステータス                                                 
000000     PERFORM P200-RTN THRU CX00006 .                                      
000000 CX00115.                                                                 
           DISPLAY "CX00115" UPON CONSOLE
000000     GO TO CX00116.                                                       
000000 CX00110.                                                                 
           DISPLAY "CX00110" UPON CONSOLE
000000     MOVE 9 TO ＷＫ−不正ステータス                                                 
000000     PERFORM P200-RTN THRU CX00006 .                                      
000000 CX00116.                                                                 
           DISPLAY "CX00116" UPON CONSOLE
000000 CX00109.                                                                 
           DISPLAY "CX00109" UPON CONSOLE
000000     GO TO CX00117.                                                       
000000 CX00093. IF NOT(ＳＷ−判定 = 2) GO TO CX00118.                                 
           DISPLAY "CX00093" UPON CONSOLE
000000     MOVE 9 TO ＷＫ−不正ステータス                                                 
000000     PERFORM P200-RTN THRU CX00006 .                                      
000000     GO TO CX00117.                                                       
000000 CX00118. IF NOT(ＳＷ−判定 = ZERO) GO TO CX00119.                              
           DISPLAY "CX00118" UPON CONSOLE
000000     MOVE 1 TO ＷＫ−不正ステータス                                                 
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
000000     MOVE ＷＫ−前件回収データ TO ＷＫ−前々件回収データ                                       
000000     MOVE 回収済チケットＷＫＲ TO ＷＫ−前件回収データ .                                      
000000     IF NOT(ＫＺＭＴ識別コード (17:8) = SPACE) GO TO CX00120.                       
000000     PERFORM ZMSSRLCV-RTN THRU CX00017                                    
000000     MOVE ＫＺＭＴ識別コード TO ＷＫ−ＫＺＭＴ識別コード                                       
000000     MOVE ZERO TO ＷＫ−ＫＺＭＴ識別コード下 .                                         
000000     GO TO CX00121.                                                       
000000 CX00120.                                                                 
           DISPLAY "CX00120" UPON CONSOLE
000000     MOVE ＫＺＭＴ識別コード上 TO ＷＫ−２４識別コード上                                       
000000     MOVE ＫＺＭＴ識別コード中 TO ＷＫ−２４識別コード中                                       
000000     MOVE ＫＺＭＴ識別コード下 TO ＷＫ−２４識別コード下                                       
000000     MOVE ＫＺＭＴ識別コード TO ＷＫ−ＫＺＭＴ識別コード .                                     
000000 CX00121.                                                                 
           DISPLAY "CX00121" UPON CONSOLE
000000     IF NOT(SW-READEND = 0) GO TO CX00122.                                 
000000           READ  回収済チケットＷＫＦ  NEXT  AT  END  CONTINUE .                    
000000     IF NOT(FL-STS1 = "00" OR "02") GO TO CX00123.                         
000000     GO TO CX00124.                                                       
000000 CX00123. IF NOT(FL-STS1 = "10") GO TO CX00125.                            
           DISPLAY "CX00123" UPON CONSOLE
000000     MOVE 1 TO SW-READEND                                                 
000000     MOVE HIGH-VALUE TO 回収済チケットＷＫＲ .                                      
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
000000       INITIALIZE    ＷＳＴＫ不正回収明細                                           
000000     MOVE ＷＫ−支払正常枚数 TO ＷＳＴＫ正常枚数                                           
000000     MOVE ＷＫ−総当せん金 TO ＷＳＴＫ総当せん金                                           
000000     MOVE ＷＫ−継続枚数 TO ＷＳＴＫ継続枚数                                             
000000     MOVE ＷＫ−総継続当せん金 TO ＷＳＴＫ総継続当せん金                                       
000000     MOVE ＷＫ−支払不正枚数 TO ＷＳＴＫ不正枚数                                           
000000     COMPUTE ＷＳＴＫ総枚数 = ＷＫ−支払正常枚数 + 
                  ＷＫ−支払不正枚数                              
000000       WRITE         支払回収突合結果一覧ＷＫＲ .                                      
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00127.                             
000000          DISPLAY "HBHSS020-23 SQWSIKSK WRITE ERROR " ,                   
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00127.                                                                 
           DISPLAY "CX00127" UPON CONSOLE
000000       INITIALIZE    ＷＴＯＫ不正回収明細                                           
000000     MOVE ＷＫ−取消正常枚数 TO ＷＴＯＫ正常枚数                                           
000000     MOVE ＷＫ−総取消金 TO ＷＴＯＫ総取消金                                             
000000     MOVE ＷＫ−取消不正枚数 TO ＷＴＯＫ不正枚数                                           
000000     COMPUTE ＷＴＯＫ総枚数 = ＷＫ−取消正常枚数 + 
             ＷＫ−取消不正枚数                              
000000       WRITE         取消回収突合結果一覧ＷＫＲ .                                      
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00128.                             
000000          DISPLAY "HBHSS020-24 SQWTOKSK WRITE ERROR " ,                   
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00128.                                                                 
           DISPLAY "CX00128" UPON CONSOLE
000000     IF NOT(SW-WKZF-OUT = ZERO) GO TO CX00129.                             
000000     MOVE ZERO TO ＷＫＺＦバッチＮＯ                                               
000000     MOVE ZERO TO ＷＫＺＦ入力連番号                                               
000000     MOVE ZERO TO ＷＫＺＦ識別コード上                                              
000000     MOVE ZERO TO ＷＫＺＦ識別コード中                                              
000000     MOVE ZERO TO ＷＫＺＦ識別コード下                                              
000000          WRITE  継続申込複数当せんＷＫＲ .                                           
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
000000     IF NOT(ＢＣＨＫ稼働フラグ = 1) GO TO CX00131.                                  
000000     PERFORM E100-RTN THRU CX00010 .                                      
000000 CX00131.                                                                 
           DISPLAY "CX00131" UPON CONSOLE
000000       COMMIT.                                                            
000000       CLOSE        運用管理Ｆ .                                               
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00132.                             
000000           DISPLAY "HBHSS020-27 VRUNYKAN CLOSE ERROR " ,                  
000000                                FL-STS1 " " FL-STS2                       
000000           STOP RUN .                                                   
000000 CX00132.                                                                 
           DISPLAY "CX00132" UPON CONSOLE
000000       CLOSE        バッチ起動管理Ｆ .                                            
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00133.                             
000000           DISPLAY "HBHSS020-28 VRBCHKID CLOSE ERROR " ,                  
000000                                FL-STS1 " " FL-STS2                       
000000           STOP RUN .                                                   
000000 CX00133.                                                                 
           DISPLAY "CX00133" UPON CONSOLE
000000       CLOSE        回収済チケットＷＫＦ .                                          
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00134.                             
000000           DISPLAY "HBHSS020-29 SQWKSZTK CLOSE ERROR " ,                  
000000                                FL-STS1 " " FL-STS2                       
000000           STOP RUN .                                                   
000000 CX00134.                                                                 
           DISPLAY "CX00134" UPON CONSOLE
000000       CLOSE        有効表 .                                                 
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00135.                             
000000          DISPLAY "HBHSS020-30 RQYUKOU  CLOSE ERROR " ,                   
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00135.                                                                 
           DISPLAY "CX00135" UPON CONSOLE
000000       CLOSE        回収済表 .                                                
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00136.                             
000000          DISPLAY "HBHSS020-31 RQKAISYU CLOSE ERROR " ,                   
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00136.                                                                 
           DISPLAY "CX00136" UPON CONSOLE
000000       CLOSE        ゲームＦ .                                                
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00137.                             
000000          DISPLAY "HBHSS020-32 VIGAME CLOSE ERROR " ,                     
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00137.                                                                 
           DISPLAY "CX00137" UPON CONSOLE
000000       CLOSE        ゲーム状況Ｆ .                                              
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00138.                             
000000           DISPLAY "HBHSS020-33 VIGAMJYO CLOSE ERROR " ,                  
000000                                FL-STS1 " " FL-STS2                       
000000           STOP RUN .                                                   
000000 CX00138.                                                                 
           DISPLAY "CX00138" UPON CONSOLE
000000       CLOSE        ゲームタイプＦ .                                             
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00139.                             
000000          DISPLAY "HBHSS020-34 VIGMTYPE CLOSE ERROR " ,                   
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00139.                                                                 
           DISPLAY "CX00139" UPON CONSOLE
000000       CLOSE        ブロックＦ .                                               
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00140.                             
000000          DISPLAY "HBHSS020-35 VIBLOCK CLOSE ERROR " ,                    
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00140.                                                                 
           DISPLAY "CX00140" UPON CONSOLE
000000       CLOSE        抽せん結果Ｆ .                                              
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00141.                             
000000          DISPLAY "HBHSS020-36 VITYUKEK CLOSE ERROR " ,                   
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00141.                                                                 
           DISPLAY "CX00141" UPON CONSOLE
000000       CLOSE         正常回収チケットＦ .                                          
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00142.                             
000000          DISPLAY "HBHSS020-37 SQWSZKST CLOSE ERROR " ,                   
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00142.                                                                 
           DISPLAY "CX00142" UPON CONSOLE
000000       CLOSE         回収確認済チケットＷＫＦ .                                       
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00143.                             
000000          DISPLAY "HBHSS020-38 SQWKSKKN CLOSE ERROR " ,                   
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00143.                                                                 
           DISPLAY "CX00143" UPON CONSOLE
000000       CLOSE         継続申込複数当せんＷＫＦ .                                       
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00144.                             
000000          DISPLAY "HBHSS020-39 SQWKZFKT CLOSE ERROR " ,                   
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00144.                                                                 
           DISPLAY "CX00144" UPON CONSOLE
000000       CLOSE         支払回収突合結果一覧ＷＫＦ .                                      
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00145.                             
000000          DISPLAY "HBHSS020-40 SQWSIKSK CLOSE ERROR " ,                   
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00145.                                                                 
           DISPLAY "CX00145" UPON CONSOLE
000000       CLOSE         支払回収突合結果合計ＷＫＦ .                                      
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00146.                             
000000          DISPLAY "HBHSS020-59 SQWSIKGK CLOSE ERROR " ,                   
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00146.                                                                 
           DISPLAY "CX00146" UPON CONSOLE
000000       CLOSE         取消回収突合結果一覧ＷＫＦ .                                      
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00147.                             
000000          DISPLAY "HBHSS020-41 SQWTOKSK CLOSE ERROR " ,                   
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00147.                                                                 
           DISPLAY "CX00147" UPON CONSOLE
000000       CLOSE         回収済データＷＫＦ .                                          
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00148.                             
000000          DISPLAY "HBHSS020-42 SQWKSZDT CLOSE ERROR " ,                   
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00148.                                                                 
           DISPLAY "CX00148" UPON CONSOLE
      *20141117修正開始
000000*       @ZCTMSGOT(MSGID=#BH001,                                            
000000*                 PROGID=HBHSS020); .                                      
      *20141117修正終了
000000 CX00004. EXIT.                                                           
000000 P100-RTN .                                                               
000000     MOVE ZERO TO ＷＫ−抽せん当せんＳＴＳ .                                          
000000     IF NOT( (ＹＵＫＯゲーム種別 = 1) OR (ＹＵＫＯゲーム種別 = 2 
              AND ＹＵＫＯ申込タイプ (1)  = 2)) GO TO CX00149.                                                  
000000     MOVE ZERO TO 抽せんＣＮＴ                                                  
000000     MOVE ZERO TO 当せんＣＮＴ                                                  
000000     MOVE 1 TO I .                                                        
000000     IF NOT(ＹＵＫＯ実質継続回号数 > 1) GO TO CX00150.                                
000000     MOVE ＹＵＫＯ実質継続回号数 TO J .                                              
000000     GO TO CX00151.                                                       
000000 CX00150.                                                                 
           DISPLAY "CX00150" UPON CONSOLE
000000     MOVE ＹＵＫＯパネル数 TO J .                                                 
000000 CX00151.                                                                 
           DISPLAY "CX00151" UPON CONSOLE
000000 CX00152. IF NOT(I <= J) GO TO CX00153.                                    
           DISPLAY "CX00152" UPON CONSOLE
000000     IF NOT(ＹＵＫＯ当せん判定区分 (I) NOT = ZERO) GO TO CX00154.                     
000000     COMPUTE 抽せんＣＮＴ = 抽せんＣＮＴ + 1 .                                        
000000     IF NOT(ＹＵＫＯ当せん判定区分 (I) = 1 OR 2) GO TO CX00155.                       
000000     COMPUTE 当せんＣＮＴ = 当せんＣＮＴ + 1 .                                        
000000 CX00155.                                                                 
           DISPLAY "CX00155" UPON CONSOLE
000000 CX00154.                                                                 
           DISPLAY "CX00154" UPON CONSOLE
000000     COMPUTE I = I + 1 .                                                  
000000     GO TO CX00152.                                                       
000000 CX00153.                                                                 
           DISPLAY "CX00153" UPON CONSOLE
000000     IF NOT(抽せんＣＮＴ = J) GO TO CX00156.                                     
000000     IF NOT(当せんＣＮＴ > ZERO) GO TO CX00157.                                  
000000     MOVE 抽せん済・当せん有り TO ＷＫ−抽せん当せんＳＴＳ .                                    
000000     GO TO CX00158.                                                       
000000 CX00157.                                                                 
           DISPLAY "CX00157" UPON CONSOLE
000000     MOVE 抽せん済・当せん無し TO ＷＫ−抽せん当せんＳＴＳ .                                    
000000 CX00158.                                                                 
           DISPLAY "CX00158" UPON CONSOLE
000000     GO TO CX00159.                                                       
000000 CX00156.                                                                 
           DISPLAY "CX00156" UPON CONSOLE
000000     IF NOT(当せんＣＮＴ > ZERO) GO TO CX00160.                                  
000000     MOVE 未抽せん・当せん有り TO ＷＫ−抽せん当せんＳＴＳ .                                    
000000     GO TO CX00161.                                                       
000000 CX00160.                                                                 
           DISPLAY "CX00160" UPON CONSOLE
000000     MOVE 未抽せん・当せん無し TO ＷＫ−抽せん当せんＳＴＳ .                                    
000000 CX00161.                                                                 
           DISPLAY "CX00161" UPON CONSOLE
000000 CX00159.                                                                 
           DISPLAY "CX00159" UPON CONSOLE
000000     GO TO CX00162.                                                       
000000 CX00149.                                                                 
           DISPLAY "CX00149" UPON CONSOLE
000000     MOVE ZERO TO 抽せんＣＮＴ                                                  
000000     MOVE ZERO TO 当せんＣＮＴ                                                  
000000     MOVE 1 TO I .                                                        
000000 CX00163. IF NOT(I <= 11) GO TO CX00164.                                   
           DISPLAY "CX00163" UPON CONSOLE
000000     IF NOT(ＹＵＫＯコンビ当判定区分 (I) NOT = ZERO) GO TO CX00165.                    
000000     COMPUTE 抽せんＣＮＴ = 抽せんＣＮＴ + 1 .                                        
000000     IF NOT(ＹＵＫＯコンビ当判定区分 (I) = 1 OR 2) GO TO CX00166.                      
000000     COMPUTE 当せんＣＮＴ = 当せんＣＮＴ + 1 .                                        
000000 CX00166.                                                                 
           DISPLAY "CX00166" UPON CONSOLE
000000 CX00165.                                                                 
           DISPLAY "CX00165" UPON CONSOLE
000000     COMPUTE I = I + 1 .                                                  
000000     GO TO CX00163.                                                       
000000 CX00164.                                                                 
           DISPLAY "CX00164" UPON CONSOLE
000000     IF NOT(抽せんＣＮＴ = 11) GO TO CX00167.                                    
000000     IF NOT(当せんＣＮＴ > ZERO) GO TO CX00168.                                  
000000     MOVE 抽せん済・当せん有り TO ＷＫ−抽せん当せんＳＴＳ .                                    
000000     GO TO CX00169.                                                       
000000 CX00168.                                                                 
           DISPLAY "CX00168" UPON CONSOLE
000000     MOVE 抽せん済・当せん無し TO ＷＫ−抽せん当せんＳＴＳ .                                    
000000 CX00169.                                                                 
           DISPLAY "CX00169" UPON CONSOLE
000000     GO TO CX00170.                                                       
000000 CX00167.                                                                 
           DISPLAY "CX00167" UPON CONSOLE
000000     IF NOT(当せんＣＮＴ > ZERO) GO TO CX00171.                                  
000000     MOVE 未抽せん・当せん有り TO ＷＫ−抽せん当せんＳＴＳ .                                    
000000     GO TO CX00172.                                                       
000000 CX00171.                                                                 
           DISPLAY "CX00171" UPON CONSOLE
000000     MOVE 未抽せん・当せん無し TO ＷＫ−抽せん当せんＳＴＳ .                                    
000000 CX00172.                                                                 
           DISPLAY "CX00172" UPON CONSOLE
000000 CX00170.                                                                 
           DISPLAY "CX00170" UPON CONSOLE
000000 CX00162.                                                                 
           DISPLAY "CX00162" UPON CONSOLE
000000 CX00005. EXIT.                                                           
000000 P200-RTN .                                                               
000000     IF NOT(ＫＺＭＴチケット区分 = 1) GO TO CX00173.                                 
000000     MOVE ＫＺＭＴバッチＮＯ TO ＷＳＴＫバッチＮＯ                                          
000000     MOVE ＫＺＭＴ入力連番号 TO ＷＳＴＫ入力連番号                                          
000000     MOVE ＷＫ−ＫＺＭＴ識別コード上 TO ＷＳＴＫ識別コード上                                     
000000     MOVE ＷＫ−ＫＺＭＴ識別コード中 TO ＷＳＴＫ識別コード中                                     
000000     MOVE ＷＫ−ＫＺＭＴ識別コード下 TO ＷＳＴＫ識別コード下                                     
      *20141117修正開始
000000*         @ZDTDTCMP(TICKETNO = ＷＫ−２４識別コード中 ,                               
000000*                   BASEDATE = ＵＮＫ１バッチ業務日付 ,                               
000000*                   YYYYMMDD = 発行日)                                        
      *** 初期化 ***                                                  
           INITIALIZE     DTCP-PARAM.                                           
      *** パラメータ　チェック ***                                    
           IF  ＷＫ−２４識別コード中  =  ZERO    THEN
                   DISPLAY "識別コードを指定して下さい"                           
                   STOP RUN.                                                         
           IF  ＵＮＫ１バッチ業務日付  =  LOW-VALUE    THEN                                           
                   DISPLAY "基準日を指定して下さい"                             
                   STOP RUN.                                                         
           IF  発行日  =  LOW-VALUE    THEN                                           
                   DISPLAY "西暦年月日の受入項目を指定して下さい"               
                   STOP RUN.                                                         
      *** 入力パラメータ移送 ***
            MOVE ＷＫ−２４識別コード中 TO  DTCP-TICKETNO
            MOVE ＵＮＫ１バッチ業務日付 TO  DTCP-BASEDATE
      *** 日付算出アクセスモジュール呼び出し ***                        
            CALL "HSAAL040" USING DTCP-PARAM
      *** 出力パラメータ移送 ***
            MOVE DTCP-YYYYMMDD TO 発行日
      *20141117修正終了
000000     MOVE 発行日（年） TO ＷＳＴＫ発券年                                               
000000     MOVE 発行日（月） TO ＷＳＴＫ発券月 .                                             
000000     IF NOT(整理完了フラグ = 0 OR 9) GO TO CX00174.                               
000000     COMPUTE ＷＫ−支払不正枚数 = ＷＫ−支払不正枚数 + 1 .                                  
000000 CX00174.                                                                 
           DISPLAY "CX00174" UPON CONSOLE
000000     MOVE ZERO TO ＷＳＴＫ読込障害入力通番                                            
000000     MOVE ＷＫ−不正ステータス TO ＷＳＴＫ不正ステータス                                       
000000     MOVE ＵＮＫ１バッチ業務日付 TO ＷＳＴＫ突き合わせ処理日                                     
000000     MOVE ＫＺＭＴ取りまとめ日 TO ＷＳＴＫ取りまとめ日                                        
000000         WRITE       支払回収突合結果一覧ＷＫＲ .                                      
000000     IF NOT(FL-STS1 NOT = "00" AND "02") GO TO CX00175.                    
000000           DISPLAY "HBHSS020-43 SQWSIKSK WRITE ERROR " ,                  
000000           FL-STS1 "-" FL-STS2                                            
000000           STOP RUN .                                                   
000000 CX00175.                                                                 
           DISPLAY "CX00175" UPON CONSOLE
000000     IF NOT(整理完了フラグ NOT = 1) GO TO CX00176.                                
000000     PERFORM P210-RTN THRU CX00011 .                                      
000000 CX00176.                                                                 
           DISPLAY "CX00176" UPON CONSOLE
000000     GO TO CX00177.                                                       
000000 CX00173. IF NOT(ＫＺＭＴチケット区分 = 2) GO TO CX00178.                            
           DISPLAY "CX00173" UPON CONSOLE
000000     MOVE ＫＺＭＴバッチＮＯ TO ＷＴＯＫバッチＮＯ                                          
000000     MOVE ＫＺＭＴ入力連番号 TO ＷＴＯＫ入力連番号                                          
000000     MOVE ＷＫ−ＫＺＭＴ識別コード上 TO ＷＴＯＫ識別コード上                                     
000000     MOVE ＷＫ−ＫＺＭＴ識別コード中 TO ＷＴＯＫ識別コード中                                     
000000     MOVE ＷＫ−ＫＺＭＴ識別コード下 TO ＷＴＯＫ識別コード下 .                                   
000000     IF NOT(整理完了フラグ = 0 OR 9) GO TO CX00179.                               
000000     COMPUTE ＷＫ−取消不正枚数 = ＷＫ−取消不正枚数 + 1 .                                  
000000 CX00179.                                                                 
           DISPLAY "CX00179" UPON CONSOLE
000000     MOVE ZERO TO ＷＴＯＫ読込障害入力連番                                            
000000     MOVE ＷＫ−不正ステータス TO ＷＴＯＫ不正ステータス                                       
000000     MOVE ＵＮＫ１バッチ業務日付 TO ＷＴＯＫ突き合わせ処理日                                     
000000     MOVE ＫＺＭＴ取りまとめ日 TO ＷＴＯＫ取りまとめ日                                        
000000         WRITE       取消回収突合結果一覧ＷＫＲ .                                      
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
000000     IF NOT(ＹＵＫＯ持込認定日 = ZERO) GO TO CX00181.                               
      *20141117修正開始
000000*         @ZDTDTCMP(TICKETNO = ＹＵＫＯ支払識別コード中 ,                              
000000*                   BASEDATE = ＵＮＫ１バッチ業務日付  ,                              
000000*                   YYYYMMDD = ＷＫ−支払日); .                                  
      *** 初期化 ***                                                  
           INITIALIZE     DTCP-PARAM.                                           
      *** パラメータ　チェック ***                                    
           IF  ＹＵＫＯ支払識別コード中  =  ZERO    THEN
                   DISPLAY "識別コードを指定して下さい"                           
                   STOP RUN.                                                         
           IF  ＵＮＫ１バッチ業務日付  =  LOW-VALUE    THEN                                           
                   DISPLAY "基準日を指定して下さい"                             
                   STOP RUN.                                                         
           IF  ＷＫ−支払日  =  LOW-VALUE    THEN                                           
                   DISPLAY "西暦年月日の受入項目を指定して下さい"               
                   STOP RUN.                                                         
      *** 入力パラメータ移送 ***
            MOVE ＹＵＫＯ支払識別コード中 TO  DTCP-TICKETNO
            MOVE ＵＮＫ１バッチ業務日付 TO  DTCP-BASEDATE
      *** 日付算出アクセスモジュール呼び出し ***                        
            CALL "HSAAL040" USING DTCP-PARAM
      *** 出力パラメータ移送 ***
            MOVE DTCP-YYYYMMDD TO ＷＫ−支払日
      *20141117修正終了
000000     GO TO CX00182.                                                       
000000 CX00181.                                                                 
           DISPLAY "CX00181" UPON CONSOLE
000000     MOVE ＹＵＫＯ持込認定日 TO ＷＫ−支払日 .                                           
000000 CX00182.                                                                 
           DISPLAY "CX00182" UPON CONSOLE
000000       INITIALIZE  ＷＫ−当せんテーブル.                                            
000000     IF NOT( (ＹＵＫＯゲーム種別 = 1) OR 
             ( (ＹＵＫＯゲーム種別 = 2) AND 
             (ＹＵＫＯ申込タイプ (1) = 2) )) GO TO CX00183.                                            
000000     MOVE 1 TO 継続ＣＮＴ                                                      
000000     MOVE ZERO TO 当せんＣＮＴ                                                  
000000     MOVE ＹＵＫＯゲームタイプ TO ＷＫ−ゲームタイプ                                         
000000     MOVE ＹＵＫＯブロックコード TO ＷＫ−ブロックコード .                                     
000000 CX00184. IF NOT(継続ＣＮＴ <= 
                  ＹＵＫＯ実質継続回号数) GO TO CX00185.                      
           DISPLAY "CX00184" UPON CONSOLE
000000     COMPUTE ＷＫ−回号 = ＹＵＫＯ開始回号 + 継続ＣＮＴ - 1                                 
000000     PERFORM GAME-SERCH-RTN THRU CX00013 .                                
000000     IF NOT(ＧＡＭＥ実質支払終了日 >= ＷＫ−支払日) GO TO CX00186.                          
000000     IF NOT(ＹＵＫＯ実質継続回号数 > 1) GO TO CX00187.                                
000000     MOVE 継続ＣＮＴ TO I                                                      
000000     PERFORM SHKIN-RTN THRU CX00014 .                                     
000000     IF NOT(ＷＫ−等級ビットＲ NOT = ＮＵＬＬ) GO TO CX00188.                           
000000     COMPUTE 当せんＣＮＴ = 当せんＣＮＴ + 1                                          
000000     MOVE ＷＫ−回号 TO ＷＫ−当せん回号 (当せんＣＮＴ)                                      
000000     MOVE ＷＫ−等級ビットＲ TO ＷＫ−当せん等級 (当せんＣＮＴ)                                  
000000     MOVE ＷＫ−金額 TO ＷＫ−支払金 (当せんＣＮＴ) .                                      
000000     IF NOT(ＷＫ−回号 <= ＧＭＪＹ最終整理完了回号) GO TO CX00189.                          
000000     MOVE 1 TO ＷＫ−整理完了フラグ (当せんＣＮＴ)                                        
000000     MOVE 1 TO 整理完了フラグ .                                                  
000000     GO TO CX00190.                                                       
000000 CX00189.                                                                 
           DISPLAY "CX00189" UPON CONSOLE
000000     MOVE ZERO TO ＷＫ−整理完了フラグ (当せんＣＮＴ) .                                   
000000 CX00190.                                                                 
           DISPLAY "CX00190" UPON CONSOLE
000000 CX00188.                                                                 
           DISPLAY "CX00188" UPON CONSOLE
000000     GO TO CX00191.                                                       
000000 CX00187.                                                                 
           DISPLAY "CX00187" UPON CONSOLE
000000     MOVE 1 TO I .                                                        
000000 CX00192. IF NOT(I <= ＹＵＫＯパネル数) GO TO CX00193.                             
           DISPLAY "CX00192" UPON CONSOLE
000000     PERFORM SHKIN-RTN THRU CX00014 .                                     
000000     IF NOT(ＷＫ−等級ビットＲ NOT = ＮＵＬＬ) GO TO CX00194.                           
000000     COMPUTE 当せんＣＮＴ = 当せんＣＮＴ + 1                                          
000000     MOVE ＷＫ−回号 TO ＷＫ−当せん回号 (当せんＣＮＴ)                                      
000000     MOVE ＷＫ−等級ビットＲ TO ＷＫ−当せん等級 (当せんＣＮＴ)                                  
000000     MOVE ＷＫ−金額 TO ＷＫ−支払金 (当せんＣＮＴ) .                                      
000000     IF NOT(ＷＫ−回号 <= ＧＭＪＹ最終整理完了回号) GO TO CX00195.                          
000000     MOVE 1 TO ＷＫ−整理完了フラグ (当せんＣＮＴ)                                        
000000     MOVE 1 TO 整理完了フラグ .                                                  
000000     GO TO CX00196.                                                       
000000 CX00195.                                                                 
           DISPLAY "CX00195" UPON CONSOLE
000000     MOVE ZERO TO ＷＫ−整理完了フラグ (当せんＣＮＴ) .                                   
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
000000     COMPUTE 継続ＣＮＴ = 継続ＣＮＴ + 1 .                                          
000000     GO TO CX00184.                                                       
000000 CX00185.                                                                 
           DISPLAY "CX00185" UPON CONSOLE
000000     IF NOT( (当せんＣＮＴ > 0) AND 
               (ＷＫ−整理完了フラグ (当せんＣＮＴ) = 1) ) GO TO CX00197.                                                      
000000     MOVE 9 TO 整理完了フラグ                                                    
000000     GO TO CX00007.                                                       
000000 CX00198. GO TO CX00199.                                                  
           DISPLAY "CX00198" UPON CONSOLE
000000 CX00197.                                                                 
           DISPLAY "CX00197" UPON CONSOLE
000000           INITIALIZE 正常回収チケットＲ                                           
000000     MOVE ＹＵＫＯゲームタイプ TO ＷＳＫＳゲームタイプ                                        
000000     MOVE ＹＵＫＯブロックコード TO ＷＳＫＳブロックコード                                      
000000     MOVE ＹＵＫＯ取消支払売場コード TO ＷＳＫＳ支払売場                                       
000000     MOVE ＹＵＫＯ販売チャネルコード TO ＷＳＫＳ販売チャネルコード                                  
000000     MOVE ＹＵＫＯ口数 TO ＷＳＫＳ支払口数                                              
000000           INITIALIZE 回収確認済チケットＷＫＲ                                        
000000     MOVE 1 TO ＫＮＭＴチケット区分                                                 
000000     MOVE ＫＺＭＴ取りまとめ日 TO ＫＮＭＴ取りまとめ日                                        
000000     MOVE ＫＺＭＴバッチＮＯ TO ＫＮＭＴバッチＮＯ                                          
000000     MOVE ＫＺＭＴ入力連番号 TO ＫＮＭＴ入力連番号                                          
000000     MOVE ＫＺＭＴ識別コード TO ＫＮＭＴ識別コード                                          
000000     MOVE ＹＵＫＯブロックコード TO ＫＮＭＴブロックコード                                      
000000     MOVE ＹＵＫＯ取消支払売場コード TO ＫＮＭＴ支払売場コード                                    
000000     MOVE ＹＵＫＯ口数 TO ＫＮＭＴ口数 .                                              
000000     IF NOT( (ＹＵＫＯ実質継続回号数 > 1) AND 
                (当せんＣＮＴ > 1)) GO TO CX00200.            
000000             INITIALIZE 継続申込複数当せんＷＫＲ                                      
000000     COMPUTE ＷＫ−継続枚数 = ＷＫ−継続枚数 + 1                                        
000000     MOVE ＵＮＫ１バッチ業務日付 TO ＷＫＺＦ突き合わせ処理日                                     
000000     MOVE ＫＺＭＴバッチＮＯ TO ＷＫＺＦバッチＮＯ                                          
000000     MOVE ＫＺＭＴ入力連番号 TO ＷＫＺＦ入力連番号                                          
000000     MOVE ＷＫ−ＫＺＭＴ識別コード上 TO ＷＫＺＦ識別コード上                                     
000000     MOVE ＷＫ−ＫＺＭＴ識別コード中 TO ＷＫＺＦ識別コード中                                     
000000     MOVE ＷＫ−ＫＺＭＴ識別コード下 TO ＷＫＺＦ識別コード下                                     
000000     MOVE ＫＺＭＴ取りまとめ日 TO ＷＫＺＦ取りまとめ日                                        
000000     MOVE ＹＵＫＯゲームタイプ TO ＧＭＴＹゲームタイプ                                        
000000             READ   ゲームタイプＦ  INVALID  CONTINUE.                           
000000     IF NOT(FL-STS1 NOT = "00" AND "02") GO TO CX00201.                    
000000                DISPLAY "HBHSS020-45 VIGMTYPE READ ERROR " ,              
000000                         FL-STS1 "-" FL-STS2                              
000000                STOP RUN.                                               
000000 CX00201.                                                                 
           DISPLAY "CX00201" UPON CONSOLE
000000     MOVE ＧＭＴＹＧタイプ名称Ｎ TO ＷＫＺＦゲームタイプ名                                      
000000     MOVE ＢＬＫ２ブロック名称 TO ＷＫＺＦブロック名称                                        
000000     MOVE 0 TO I                                                          
000000     MOVE 1 TO J .                                                        
000000 CX00202. IF NOT(J <= 当せんＣＮＴ) GO TO CX00203.                               
           DISPLAY "CX00202" UPON CONSOLE
000000     MOVE ＷＫ−当せん回号 (J) TO ＷＫＺＦ回号 (J)                                      
000000     MOVE ＷＫ−支払金 (J) TO ＷＫＺＦ当せん金 (J) .                                    
000000     IF NOT(ＷＫ−整理完了フラグ (J) = 1) GO TO CX00204.                             
000000     MOVE 1 TO ＷＫＺＦ整理完了フラグ (J) .                                          
000000     GO TO CX00205.                                                       
000000 CX00204.                                                                 
           DISPLAY "CX00204" UPON CONSOLE
000000     COMPUTE I = I + 1                                                    
000000     MOVE ＷＫ−当せん回号 (J) TO ＷＳＫＳ支払回号 (I)                                    
000000     MOVE ＷＫ−当せん等級 (J) TO ＷＳＫＳ支払等級 (I)                                    
000000     COMPUTE ＷＳＫＳ支払金額 = ＷＳＫＳ支払金額 + 
                 ＷＫ−支払金 (J)                             
000000     MOVE ＷＫ−当せん回号 (J) TO ＫＮＭＴ回号 (I)                                      
000000     PERFORM P310-RTN THRU CX00012 .                                      
000000 CX00205.                                                                 
           DISPLAY "CX00205" UPON CONSOLE
000000     COMPUTE J = J + 1 .                                                  
000000     GO TO CX00202.                                                       
000000 CX00203.                                                                 
           DISPLAY "CX00203" UPON CONSOLE
000000             WRITE         継続申込複数当せんＷＫＲ .                                 
000000     IF NOT(FL-STS1 NOT = "00" AND "02") GO TO CX00206.                    
000000                  DISPLAY "HBHSS020-46 SQWKZFKT WRITE ERROR " ,           
000000                  FL-STS1 "-" FL-STS2                                     
000000                  STOP RUN .                                            
000000 CX00206.                                                                 
           DISPLAY "CX00206" UPON CONSOLE
000000     MOVE 1 TO SW-WKZF-OUT                                                
000000     COMPUTE ＷＫ−総継続当せん金 = ＷＫ−総継続当せん金 + 
                   ＷＳＫＳ支払金額 .                         
000000     GO TO CX00207.                                                       
000000 CX00200.                                                                 
           DISPLAY "CX00200" UPON CONSOLE
000000     MOVE 1 TO I                                                          
000000     MOVE 1 TO J .                                                        
000000 CX00208. IF NOT(I <= 当せんＣＮＴ) GO TO CX00209.                               
           DISPLAY "CX00208" UPON CONSOLE
000000     MOVE ＷＫ−当せん回号 (J) TO ＷＳＫＳ支払回号 (I)                                    
000000     MOVE ＷＫ−当せん等級 (J) TO ＷＳＫＳ支払等級 (I)                                    
000000     COMPUTE ＷＳＫＳ支払金額 = 
                    ＷＳＫＳ支払金額 + ＷＫ−支払金 (J)                             
000000     MOVE ＷＫ−当せん回号 (J) TO ＫＮＭＴ回号 (I)                                      
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
000000     COMPUTE ＷＫ−総当せん金 = ＷＫ−総当せん金 + 
                   ＷＳＫＳ支払金額 .                             
000000     GO TO CX00210.                                                       
000000 CX00183.                                                                 
           DISPLAY "CX00183" UPON CONSOLE
000000     MOVE ＹＵＫＯゲームタイプ TO ＷＫ−ゲームタイプ                                         
000000     MOVE ＹＵＫＯブロックコード TO ＷＫ−ブロックコード                                       
000000     MOVE ＹＵＫＯ開始回号 TO ＷＫ−回号                                               
000000     PERFORM GAME-SERCH-RTN THRU CX00013 .                                
000000     IF NOT(ＹＵＫＯ開始回号 <= 
                 ＧＭＪＹ最終整理完了回号) GO TO CX00211.                       
000000     MOVE 9 TO 整理完了フラグ                                                    
000000     GO TO CX00007.                                                       
000000 CX00211.                                                                 
           DISPLAY "CX00211" UPON CONSOLE
000000         INITIALIZE 正常回収チケットＲ                                             
000000     MOVE ＹＵＫＯゲームタイプ TO ＷＳＫＳゲームタイプ                                        
000000     MOVE ＹＵＫＯブロックコード TO ＷＳＫＳブロックコード                                      
000000     MOVE ＹＵＫＯ取消支払売場コード TO ＷＳＫＳ支払売場                                       
000000     MOVE 1 TO ＷＳＫＳロトコンビフラグ                                               
000000     MOVE ＹＵＫＯ開始回号 TO ＷＳＫＳコンビ支払回号                                         
000000     MOVE ＹＵＫＯ開始回号 TO ＷＳＫＳ支払回号 (1)                                        
000000     MOVE ＹＵＫＯ支払金額 TO ＷＳＫＳコンビ支払金額                                         
000000     MOVE ＹＵＫＯコンビ当せん口数 (1) TO ＷＳＫＳコンビ口数１                                  
000000     MOVE ＹＵＫＯコンビ当せん口数 (2) TO ＷＳＫＳコンビ口数２                                  
000000     MOVE ＹＵＫＯコンビ当せん口数 (3) TO ＷＳＫＳコンビ口数３                                  
000000     MOVE ＹＵＫＯコンビ当せん口数 (4) TO ＷＳＫＳコンビ口数４                                  
000000     MOVE ＹＵＫＯコンビ当せん口数 (5) TO ＷＳＫＳコンビ口数５                                  
000000     MOVE ＹＵＫＯコンビ当せん口数 (6) TO ＷＳＫＳコンビ口数６                                  
000000     MOVE ＹＵＫＯコンビ当せん口数 (7) TO ＷＳＫＳコンビ口数７                                  
000000     MOVE ＹＵＫＯコンビ当せん口数 (8) TO ＷＳＫＳコンビ口数８                                  
000000     MOVE ＹＵＫＯコンビ当せん口数 (9) TO ＷＳＫＳコンビ口数９                                  
000000     MOVE ＹＵＫＯコンビ当せん口数 (10) TO ＷＳＫＳコンビ口数１０                                
000000     MOVE ＹＵＫＯコンビ当せん口数 (11) TO ＷＳＫＳコンビ口数１１                                
000000     MOVE ＹＵＫＯ販売チャネルコード TO ＷＳＫＳ販売チャネルコード                                  
000000         INITIALIZE 回収確認済チケットＷＫＲ                                          
000000     MOVE 1 TO ＫＮＭＴチケット区分                                                 
000000     MOVE ＫＺＭＴ取りまとめ日 TO ＫＮＭＴ取りまとめ日                                        
000000     MOVE ＫＺＭＴバッチＮＯ TO ＫＮＭＴバッチＮＯ                                          
000000     MOVE ＫＺＭＴ入力連番号 TO ＫＮＭＴ入力連番号                                          
000000     MOVE ＫＺＭＴ識別コード TO ＫＮＭＴ識別コード                                          
000000     MOVE ＹＵＫＯブロックコード TO ＫＮＭＴブロックコード                                      
000000     MOVE ＹＵＫＯ取消支払売場コード TO ＫＮＭＴ支払売場コード                                    
000000     MOVE ＹＵＫＯ口数 TO ＫＮＭＴ口数                                                
000000     MOVE ＹＵＫＯ開始回号 TO ＫＮＭＴ回号 (1)                                          
000000     MOVE 1 TO I                                                          
000000     PERFORM SHKIN-RTN THRU CX00014                                       
000000     MOVE ＷＫ−等級ビットＲ TO ＷＫ−当せん等級 (1)                                       
000000     MOVE 1 TO J                                                          
000000     PERFORM P310-RTN THRU CX00012                                        
000000     COMPUTE ＷＫ−総当せん金 = ＷＫ−総当せん金 + 
                   ＷＳＫＳコンビ支払金額 .                          
000000 CX00210.                                                                 
           DISPLAY "CX00210" UPON CONSOLE
000000     COMPUTE ＷＫ−支払正常枚数 = ＷＫ−支払正常枚数 + 1                                    
000000       WRITE         正常回収チケットＲ .                                          
000000     IF NOT(FL-STS1 NOT = "00" AND "02") GO TO CX00212.                    
000000          DISPLAY "HBHSS020-47 SQWSZKST WRITE ERROR " ,                   
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00212.                                                                 
           DISPLAY "CX00212" UPON CONSOLE
000000       WRITE         回収確認済チケットＷＫＲ .                                       
000000     IF NOT(FL-STS1 NOT = "00" AND "02") GO TO CX00213.                    
000000          DISPLAY "HBHSS020-48 SQWKSKKN WRITE ERROR " ,                   
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00213.                                                                 
           DISPLAY "CX00213" UPON CONSOLE
000000     MOVE ＵＮＫ１バッチ業務日付 TO ＹＵＫＯ回収日                                          
000000     MOVE 有効表Ｒ TO 回収済データＷＫＲ                                               
000000       WRITE         回収済データＷＫＲ .                                          
000000     IF NOT(FL-STS1 NOT = "00" AND "02") GO TO CX00214.                    
000000          DISPLAY "HBHSS020-49 SQWKSZDT WRITE ERROR " ,                   
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN .                                                    
000000 CX00214.                                                                 
           DISPLAY "CX00214" UPON CONSOLE
000000 CX00007. EXIT.                                                           
000000 P400-RTN .                                                               
000000     MOVE ＹＵＫＯゲームタイプ TO ＷＫ−ゲームタイプ                                         
000000     MOVE ＹＵＫＯブロックコード TO ＷＫ−ブロックコード                                       
000000     COMPUTE ＷＫ−回号 = ＹＵＫＯ開始回号 + 
                   ＹＵＫＯ実質継続回号数 - 1                           
000000     PERFORM GAME-SERCH-RTN THRU CX00013 .                                
000000 CX00215. IF NOT( (ＷＫ−回号 >= ＹＵＫＯ開始回号) AND 
                (整理完了フラグ = 0)) GO TO CX00216.                                                      
           DISPLAY "CX00215" UPON CONSOLE
000000     IF NOT(ＷＫ−回号 <= ＧＭＪＹ最終整理完了回号) GO TO CX00217.                          
000000     MOVE 1 TO 整理完了フラグ .                                                  
000000     GO TO CX00218.                                                       
000000 CX00217.                                                                 
           DISPLAY "CX00217" UPON CONSOLE
000000     COMPUTE ＷＫ−回号 = ＷＫ−回号 - 1 .                                          
000000 CX00218.                                                                 
           DISPLAY "CX00218" UPON CONSOLE
000000     GO TO CX00215.                                                       
000000 CX00216.                                                                 
           DISPLAY "CX00216" UPON CONSOLE
000000     IF NOT( (整理完了フラグ > 0) AND (ＷＫ−回号 = 
      *20141117修正開始
            ＹＵＫＯ開始回号 + ＹＵＫＯ実質継続回号数 - 1)) GO TO CX00219.                                                    
      *20141117修正終了
000000     MOVE 9 TO 整理完了フラグ .                                                  
000000     GO TO CX00220.                                                       
000000 CX00219.                                                                 
           DISPLAY "CX00219" UPON CONSOLE
000000     COMPUTE ＷＫ−取消正常枚数 = ＷＫ−取消正常枚数 + 1                                    
000000     COMPUTE ＷＫ−総取消金 = ＷＫ−総取消金 + ＹＵＫＯ金額                                   
000000     MOVE ＵＮＫ１バッチ業務日付 TO ＹＵＫＯ回収日                                          
000000     MOVE 有効表Ｒ TO 回収済データＷＫＲ                                               
000000         WRITE         回収済データＷＫＲ .                                        
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
000000     IF NOT(ＫＺＭＴチケット区分 = 1) GO TO CX00222.                                 
000000     MOVE ＫＺＭＴバッチＮＯ TO ＷＳＴＫバッチＮＯ                                          
000000     MOVE ＫＺＭＴ入力連番号 TO ＷＳＴＫ入力連番号                                          
000000     MOVE ＷＫ−ＫＺＭＴ識別コード上 TO ＷＳＴＫ識別コード上                                     
000000     MOVE ＷＫ−ＫＺＭＴ識別コード中 TO ＷＳＴＫ識別コード中                                     
000000     MOVE ＷＫ−ＫＺＭＴ識別コード下 TO ＷＳＴＫ識別コード下                                     
      *20141117修正開始
000000*         @ZDTDTCMP(TICKETNO = ＷＫ−２４識別コード中 ,                               
000000*                   BASEDATE = ＵＮＫ１バッチ業務日付 ,                               
000000*                   YYYYMMDD = 発行日)                                        
      *** 初期化 ***                                                  
           INITIALIZE     DTCP-PARAM.                                           
      *** パラメータ　チェック ***                                    
           IF  ＷＫ−２４識別コード中  =  ZERO    THEN
                   DISPLAY "識別コードを指定して下さい"                           
                   STOP RUN.                                                         
           IF  ＵＮＫ１バッチ業務日付  =  LOW-VALUE    THEN                                           
                   DISPLAY "基準日を指定して下さい"                             
                   STOP RUN.                                                         
           IF  発行日  =  LOW-VALUE    THEN                                           
                   DISPLAY "西暦年月日の受入項目を指定して下さい"               
                   STOP RUN.                                                         
      *** 入力パラメータ移送 ***
            MOVE ＷＫ−２４識別コード中 TO  DTCP-TICKETNO
            MOVE ＵＮＫ１バッチ業務日付 TO  DTCP-BASEDATE
      *** 日付算出アクセスモジュール呼び出し ***                        
            CALL "HSAAL040" USING DTCP-PARAM
      *** 出力パラメータ移送 ***
            MOVE DTCP-YYYYMMDD TO 発行日
      *20141117修正終了
000000     MOVE 発行日（年） TO ＷＳＴＫ発券年                                               
000000     MOVE 発行日（月） TO ＷＳＴＫ発券月                                               
000000     MOVE 11 TO ＷＳＴＫ不正ステータス                                               
000000     MOVE ＷＫ−読込障害入力連番 TO ＷＳＴＫ読込障害入力通番                                     
000000     MOVE ＵＮＫ１バッチ業務日付 TO ＷＳＴＫ突き合わせ処理日                                     
000000     MOVE ＫＺＭＴ取りまとめ日 TO ＷＳＴＫ取りまとめ日                                        
000000     COMPUTE ＷＫ−支払不正枚数 = ＷＫ−支払不正枚数 + 1                                    
000000         WRITE       支払回収突合結果一覧ＷＫＲ .                                      
000000     IF NOT(FL-STS1 NOT = "00" AND "02") GO TO CX00223.                    
000000           DISPLAY "HBHSS020-XX SQWSIKSK WRITE ERROR " ,                  
000000           FL-STS1 "-" FL-STS2                                            
000000           STOP RUN .                                                   
000000 CX00223.                                                                 
           DISPLAY "CX00223" UPON CONSOLE
000000     PERFORM P210-RTN THRU CX00011 .                                      
000000     GO TO CX00224.                                                       
000000 CX00222. IF NOT(ＫＺＭＴチケット区分 = 2) GO TO CX00225.                            
           DISPLAY "CX00222" UPON CONSOLE
000000     MOVE ＫＺＭＴバッチＮＯ TO ＷＴＯＫバッチＮＯ                                          
000000     MOVE ＫＺＭＴ入力連番号 TO ＷＴＯＫ入力連番号                                          
000000     MOVE ＷＫ−ＫＺＭＴ識別コード上 TO ＷＴＯＫ識別コード上                                     
000000     MOVE ＷＫ−ＫＺＭＴ識別コード中 TO ＷＴＯＫ識別コード中                                     
000000     MOVE ＷＫ−ＫＺＭＴ識別コード下 TO ＷＴＯＫ識別コード下                                     
000000     MOVE 11 TO ＷＴＯＫ不正ステータス                                               
000000     MOVE ＷＫ−読込障害入力連番 TO ＷＴＯＫ読込障害入力連番                                     
000000     MOVE ＵＮＫ１バッチ業務日付 TO ＷＴＯＫ突き合わせ処理日                                     
000000     MOVE ＫＺＭＴ取りまとめ日 TO ＷＴＯＫ取りまとめ日                                        
000000     COMPUTE ＷＫ−取消不正枚数 = ＷＫ−取消不正枚数 + 1                                    
000000         WRITE       取消回収突合結果一覧ＷＫＲ .                                      
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
000000 CX00227. IF NOT( (IX1 <= 50) AND (ＷＫ−不回ＧＭＢＬ (IX1) NOT =
                  ZERO) ) GO TO CX00228.                                                      
           DISPLAY "CX00227" UPON CONSOLE
000000     MOVE ＷＫ−不回ゲーム (IX1) TO ＷＳＧＫゲームタイプ                                    
000000     MOVE ＷＫ−不回ブロック (IX1) TO ＷＳＧＫブロックコード .                                
000000     MOVE 1 TO IX2 GO TO CX00229.                                         
000000 CX00230. ADD 1 TO IX2.                                                   
           DISPLAY "CX00230" UPON CONSOLE
000000 CX00229. IF (IX2 > 18) GO TO CX00231.                                      
           DISPLAY "CX00229" UPON CONSOLE
000000     MOVE ＷＫ−不正回収合計枚数 (IX1 IX2) TO 
                ＷＳＧＫ不正回収合計枚数 (IX2) .                   
000000     GO TO CX00230.                                                       
000000 CX00231.                                                                 
           DISPLAY "CX00231" UPON CONSOLE
000000          WRITE  支払回収突合結果合計ＷＫＲ.                                           
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
000000     MOVE ＷＫ−２４識別コード上 TO ＷＫ−識別コード上                                        
000000     MOVE ＷＫ−識別Ｇ TO ＷＫ−ＧＢゲーム .                                            
000000     IF NOT(ＳＷ−判定 = 1) GO TO CX00233.                                      
000000     MOVE ＹＵＫＯブロックコード TO ＷＫ−ＧＢブロック .                                      
000000     GO TO CX00234.                                                       
000000 CX00233. IF NOT(ＳＷ−判定 = 2) GO TO CX00235.                                 
           DISPLAY "CX00233" UPON CONSOLE
000000     MOVE ＫＡＩＳブロックコード TO ＷＫ−ＧＢブロック .                                      
000000     GO TO CX00234.                                                       
000000 CX00235.                                                                 
           DISPLAY "CX00235" UPON CONSOLE
000000     MOVE ＷＫ−識別ＢＫ TO ＷＫ−ＧＢブロック .                                          
000000 CX00234.                                                                 
           DISPLAY "CX00234" UPON CONSOLE
000000     COMPUTE M = (ＷＳＴＫ処理年 - ＷＳＴＫ発券年) * 12 + 
                   (ＷＳＴＫ処理月 - ＷＳＴＫ発券月) + 1 .                                                                
000000     IF NOT(M > 17) GO TO CX00236.                                         
000000     MOVE 17 TO M .                                                       
000000 CX00236.                                                                 
           DISPLAY "CX00236" UPON CONSOLE
000000     MOVE 1 TO IX1 .                                                      
000000 CX00237. IF NOT(IX1 <= 50) GO TO CX00238.                                 
           DISPLAY "CX00237" UPON CONSOLE
000000     IF NOT(ＷＫ−不回ＧＭＢＬ (IX1) = 
              ＷＫ−ＧＭＢＬＫ) GO TO CX00239.                     
000000     COMPUTE ＷＫ−不正回収合計枚数 (IX1 M) = 
                   ＷＫ−不正回収合計枚数 (IX1 M) + 1                
000000     COMPUTE ＷＫ−不正回収合計枚数 (IX1 18) = 
                   ＷＫ−不正回収合計枚数 (IX1 18) + 1              
000000     MOVE 99 TO IX1 .                                                     
000000     GO TO CX00240.                                                       
000000 CX00239. IF NOT(ＷＫ−不回ＧＭＢＬ (IX1) = ZERO) GO TO CX00241.                    
           DISPLAY "CX00239" UPON CONSOLE
000000     MOVE ＷＫ−ＧＭＢＬＫ TO ＷＫ−不回ＧＭＢＬ (IX1)                                     
000000     COMPUTE ＷＫ−不正回収合計枚数 (IX1 M) = 
                   ＷＫ−不正回収合計枚数 (IX1 M) + 1                
000000     COMPUTE ＷＫ−不正回収合計枚数 (IX1 18) = 
                   ＷＫ−不正回収合計枚数 (IX1 18) + 1              
000000     MOVE 99 TO IX1 .                                                     
000000     GO TO CX00240.                                                       
000000 CX00241.                                                                 
           DISPLAY "CX00241" UPON CONSOLE
000000     COMPUTE IX1 = IX1 + 1 .                                              
000000     IF NOT(IX1 > 50) GO TO CX00242.                                       
000000              DISPLAY "HBHSS020-57 不正回収合計テーブルオーバー"                        
000000              DISPLAY "登録可能ゲーム数は５０までです"                                   
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
000000     MOVE ZERO TO ＷＫ−等級数列                                                 
000000     MOVE ＷＫ−当せん等級 (J) TO ＷＫ−等級ビットＲ .                                     
      *20141117修正開始
000000*     IF NOT(ＷＫ−等級１Ｂ = B"1") GO TO CX00243.                                 
           COMBINE SHIFT = ＷＫ−等級ビットＲ  AND ""8000""
           IF NOT(SHIFT > 0) GO TO CX00243. 
      *20141117修正終了
000000     MOVE 1 TO ＷＫ−等級数 (1) .                                               
000000 CX00243.                                                                 
           DISPLAY "CX00243" UPON CONSOLE
      *20141117修正開始
000000*     IF NOT(ＷＫ−等級２Ｂ = B"1") GO TO CX00244.                                 
           COMBINE SHIFT = ＷＫ−等級ビットＲ  AND ""4000""
           IF NOT(SHIFT > 0) GO TO CX00244.
      *20141117修正終了
000000     MOVE 1 TO ＷＫ−等級数 (2) .                                               
000000 CX00244.                                                                 
           DISPLAY "CX00244" UPON CONSOLE
      *20141117修正開始
000000*     IF NOT(ＷＫ−等級３Ｂ = B"1") GO TO CX00245.                                 
           COMBINE SHIFT = ＷＫ−等級ビットＲ  AND ""2000""
           IF NOT(SHIFT > 0) GO TO CX00245.
      *20141117修正終了
000000     MOVE 1 TO ＷＫ−等級数 (3) .                                               
000000 CX00245.                                                                 
           DISPLAY "CX00245" UPON CONSOLE
      *20141117修正開始
000000*     IF NOT(ＷＫ−等級４Ｂ = B"1") GO TO CX00246.                                 
           COMBINE SHIFT = ＷＫ−等級ビットＲ  AND ""1000""
           IF NOT(SHIFT > 0) GO TO CX00246.
      *20141117修正終了
000000     MOVE 1 TO ＷＫ−等級数 (4) .                                               
000000 CX00246.                                                                 
           DISPLAY "CX00246" UPON CONSOLE
      *20141117修正開始
000000*     IF NOT(ＷＫ−等級５Ｂ = B"1") GO TO CX00247.                                 
           COMBINE SHIFT = ＷＫ−等級ビットＲ  AND ""0800""
           IF NOT(SHIFT > 0) GO TO CX00247.
      *20141117修正終了
000000     MOVE 1 TO ＷＫ−等級数 (5) .                                               
000000 CX00247.                                                                 
           DISPLAY "CX00247" UPON CONSOLE
      *20141117修正開始
000000*     IF NOT(ＷＫ−等級６Ｂ = B"1") GO TO CX00248.                                 
           COMBINE SHIFT = ＷＫ−等級ビットＲ  AND ""0400""
           IF NOT(SHIFT > 0) GO TO CX00248.
      *20141117修正終了
000000     MOVE 1 TO ＷＫ−等級数 (6) .                                               
000000 CX00248.                                                                 
           DISPLAY "CX00248" UPON CONSOLE
      *20141117修正開始
000000*     IF NOT(ＷＫ−等級７Ｂ = B"1") GO TO CX00249.                                 
           COMBINE SHIFT = ＷＫ−等級ビットＲ  AND ""0200""
           IF NOT(SHIFT > 0) GO TO CX00249.
      *20141117修正終了
000000     MOVE 1 TO ＷＫ−等級数 (7) .                                               
000000 CX00249.                                                                 
           DISPLAY "CX00249" UPON CONSOLE
      *20141117修正開始
000000*     IF NOT(ＷＫ−等級８Ｂ = B"1") GO TO CX00250.                                 
           COMBINE SHIFT = ＷＫ−等級ビットＲ  AND ""0100""
           IF NOT(SHIFT > 0) GO TO CX00250.
      *20141117修正終了
000000     MOVE 1 TO ＷＫ−等級数 (8) .                                               
000000 CX00250.                                                                 
           DISPLAY "CX00250" UPON CONSOLE
      *20141117修正開始
000000*     IF NOT(ＷＫ−等級９Ｂ = B"1") GO TO CX00251.                                 
           COMBINE SHIFT = ＷＫ−等級ビットＲ  AND ""0080""
           IF NOT(SHIFT > 0) GO TO CX00251.
      *20141117修正終了
000000     MOVE 1 TO ＷＫ−等級数 (9) .                                               
000000 CX00251.                                                                 
           DISPLAY "CX00251" UPON CONSOLE
      *20141117修正開始
000000*     IF NOT(ＷＫ−等級１０Ｂ = B"1") GO TO CX00252.                                
           COMBINE SHIFT = ＷＫ−等級ビットＲ  AND ""0040""
           IF NOT(SHIFT > 0) GO TO CX00252.
      *20141117修正終了
000000     MOVE 1 TO ＷＫ−等級数 (10) .                                              
000000 CX00252.                                                                 
           DISPLAY "CX00252" UPON CONSOLE
      *20141117修正開始
000000*     IF NOT(ＷＫ−等級１１Ｂ = B"1") GO TO CX00253.                                
           COMBINE SHIFT = ＷＫ−等級ビットＲ  AND ""0020""
           IF NOT(SHIFT > 0) GO TO CX00253.
      *20141117修正終了
000000     MOVE 1 TO ＷＫ−等級数 (11) .                                              
000000 CX00253.                                                                 
           DISPLAY "CX00253" UPON CONSOLE
      *20141117修正開始
000000*     IF NOT(ＷＫ−等級１２Ｂ = B"1") GO TO CX00254.                                
           COMBINE SHIFT = ＷＫ−等級ビットＲ  AND ""0010""
           IF NOT(SHIFT > 0) GO TO CX00254.
      *20141117修正終了
000000     MOVE 1 TO ＷＫ−等級数 (12) .                                              
000000 CX00254.                                                                 
           DISPLAY "CX00254" UPON CONSOLE
      *20141117修正開始
000000*     IF NOT(ＷＫ−等級１３Ｂ = B"1") GO TO CX00255.                                
           COMBINE SHIFT = ＷＫ−等級ビットＲ  AND ""0008""
           IF NOT(SHIFT > 0) GO TO CX00255.
      *20141117修正終了
000000     MOVE 1 TO ＷＫ−等級数 (13) .                                              
000000 CX00255.                                                                 
           DISPLAY "CX00255" UPON CONSOLE
      *20141117修正開始
000000*     IF NOT(ＷＫ−等級１４Ｂ = B"1") GO TO CX00256.                                
           COMBINE SHIFT = ＷＫ−等級ビットＲ  AND ""0004""
           IF NOT(SHIFT > 0) GO TO CX00256.
      *20141117修正終了
000000     MOVE 1 TO ＷＫ−等級数 (14) .                                              
000000 CX00256.                                                                 
           DISPLAY "CX00256" UPON CONSOLE
      *20141117修正開始
000000*     IF NOT(ＷＫ−等級１５Ｂ = B"1") GO TO CX00257.                                
           COMBINE SHIFT = ＷＫ−等級ビットＲ  AND ""0002""
           IF NOT(SHIFT > 0) GO TO CX00257.
      *20141117修正終了
000000     MOVE 1 TO ＷＫ−等級数 (15) .                                              
000000 CX00257.                                                                 
           DISPLAY "CX00257" UPON CONSOLE
      *20141117修正開始
000000*     IF NOT(ＷＫ−等級１６Ｂ = B"1") GO TO CX00258.                                
           COMBINE SHIFT = ＷＫ−等級ビットＲ  AND ""0001""
           IF NOT(SHIFT > 0) GO TO CX00258.
      *20141117修正終了
000000     MOVE 1 TO ＷＫ−等級数 (16) .                                              
000000 CX00258.                                                                 
           DISPLAY "CX00258" UPON CONSOLE
000000     MOVE ＷＫ−等級数列 TO ＫＮＭＴ等級 (I) .                                         
000000 CX00012. EXIT.                                                           
000000 GAME-SERCH-RTN .                                                         
000000     MOVE ＷＫ−ゲームタイプ TO ＧＡＭＥゲームタイプ                                         
000000     MOVE ＷＫ−ブロックコード TO ＧＡＭＥブロックコード                                       
000000     MOVE ＷＫ−回号 TO ＧＡＭＥ回号                                                 
000000       READ   ゲームＦ  INVALID  CONTINUE.                                    
000000     IF NOT(FL-STS1 NOT = "00" AND "02") GO TO CX00259.                    
000000          DISPLAY "HBHSS020-51 VIGAME READ ERROR " ,                      
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN.                                                     
000000 CX00259.                                                                 
           DISPLAY "CX00259" UPON CONSOLE
000000     MOVE ＷＫ−ゲームタイプ TO ＧＭＪＹゲームタイプ                                         
000000     MOVE ＷＫ−ブロックコード TO ＧＭＪＹブロックコード                                       
000000       READ   ゲーム状況Ｆ  INVALID  CONTINUE.                                  
000000     IF NOT(FL-STS1 NOT = "00" AND "02") GO TO CX00260.                    
000000          DISPLAY "HBHSS020-52 VIGAMJYO READ ERROR " ,                    
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN.                                                     
000000 CX00260.                                                                 
           DISPLAY "CX00260" UPON CONSOLE
000000     MOVE ＷＫ−ゲームタイプ TO ＴＹＫＥゲームタイプ                                         
000000     MOVE ＷＫ−ブロックコード TO ＴＹＫＥブロックコード                                       
000000     MOVE ＷＫ−回号 TO ＴＹＫＥ回号                                                 
000000       READ   抽せん結果Ｆ  INVALID  CONTINUE.                                  
000000     IF NOT(FL-STS1 NOT = "00" AND "02") GO TO CX00261.                    
000000          DISPLAY "HBHSS020-53 VITYUKEK READ ERROR " ,                    
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN.                                                     
000000 CX00261.                                                                 
           DISPLAY "CX00261" UPON CONSOLE
000000     MOVE ＷＫ−ブロックコード TO ＢＬＫ１ブロックコード                                       
000000     MOVE ZERO TO ＢＬＫ１ブロック枝番                                              
000000     MOVE ZERO TO ＢＬＫ１販売チャネルコード                                           
000000       START ブロックＦ  KEY >=  ＢＬＫ１レコードキー ,                                  
000000             INVALID CONTINUE.                                            
000000     IF NOT(FL-STS1 NOT = "00") GO TO CX00262.                             
000000          DISPLAY "HBHSS020-54 VIBLOCK START ERROR " ,                    
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN.                                                     
000000 CX00262.                                                                 
           DISPLAY "CX00262" UPON CONSOLE
000000       READ  ブロックＦ  NEXT  AT  END  CONTINUE.                              
000000     IF NOT(FL-STS1 NOT = "00" AND "02") GO TO CX00263.                    
000000          DISPLAY "HBHSS020-55 VIBLOCK READ ERROR " ,                     
000000                   FL-STS1 "-" FL-STS2                                    
000000          STOP RUN.                                                     
000000 CX00263.                                                                 
           DISPLAY "CX00263" UPON CONSOLE
000000 CX00013. EXIT.                                                           
000000 SHKIN-RTN .                                                              
000000     MOVE ZERO TO ＷＫ−金額                                                   
000000     MOVE ＮＵＬＬ TO ＷＫ−等級ビットＲ .                                             
000000     IF NOT( (ＹＵＫＯゲーム種別 = 1) OR (ＹＵＫＯゲーム種別 = 2 
              AND ＹＵＫＯ申込タイプ (1) = 2)) GO TO CX00264.                                                  
000000     PERFORM NORMAL-TOSENKIN-RTN THRU CX00015 .                           
000000     GO TO CX00265.                                                       
000000 CX00264.                                                                 
           DISPLAY "CX00264" UPON CONSOLE
000000     PERFORM COMBI-TOSENKIN-RTN THRU CX00016 .                            
000000 CX00265.                                                                 
           DISPLAY "CX00265" UPON CONSOLE
000000     COMPUTE ＷＫ−金額 = ＷＫ−金額 * ＹＵＫＯ口数 .                                     
000000 CX00014. EXIT.                                                           
000000 NORMAL-TOSENKIN-RTN .                                                    
000000     IF NOT(ＹＵＫＯ当せん判定区分 (I) = 1 OR 2) GO TO CX00266.                       
000000     MOVE ＹＵＫＯ当せん等級 (I) TO L                                              
000000     PERFORM TOKYUBIT-SET-RTN THRU CX00018                                
000000     MOVE ＴＹＫＥ実当せん金 (L) TO ＷＫ−金額 .                                        
000000 CX00266.                                                                 
           DISPLAY "CX00266" UPON CONSOLE
000000 CX00015. EXIT.                                                           
000000 COMBI-TOSENKIN-RTN .                                                     
000000     MOVE 1 TO K .                                                        
000000 CX00267. IF NOT(K <= 11) GO TO CX00268.                                   
           DISPLAY "CX00267" UPON CONSOLE
000000     IF NOT(ＹＵＫＯコンビ当判定区分 (K) = 1 OR 2) GO TO CX00269.                      
000000     MOVE K TO L                                                          
000000     PERFORM TOKYUBIT-SET-RTN THRU CX00018                                
000000     COMPUTE ＷＫ−金額 = ＷＫ−金額 + ＴＹＫＥ実当せん金 (K) * 
                   ＹＵＫＯコンビ当せん口数 (K) .           
000000 CX00269.                                                                 
           DISPLAY "CX00269" UPON CONSOLE
000000     COMPUTE K = K + 1 .                                                  
000000     GO TO CX00267.                                                       
000000 CX00268.                                                                 
           DISPLAY "CX00268" UPON CONSOLE
000000 CX00016. EXIT.                                                           
000000 ZMSSRLCV-RTN .                                                           
000000     MOVE ＫＺＭＴ識別コード上 TO ＷＫ−１６識別コード上                                       
000000     MOVE ＫＺＭＴ識別コード中 TO ＷＫ−１６識別コード下                                       
      *20141117修正開始
000000*       @ZMSSRLCV(MODE = 2 ,                                               
000000*                 SBCDBEFORE  = PTR_SBCDBEFORE  ,                          
000000*                 SBCDAFTER   = PTR_SBCDAFTER  ) .                         
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
      *20141117修正終了
000000 CX00017. EXIT.                                                           
000000 TOKYUBIT-SET-RTN .                                                       
000000     IF NOT(L = 1) GO TO CX00270.                                          
      *20141117修正開始
000000*     MOVE B"1" TO ＷＫ−等級１Ｂ .                                               
           COMBINE ＷＫ−等級ビット列 = ＷＫ−等級ビット列  OR ""8000""
      *20141117修正終了
000000     GO TO CX00271.                                                       
000000 CX00270. IF NOT(L = 2) GO TO CX00272.                                     
           DISPLAY "CX00270" UPON CONSOLE
      *20141117修正開始
000000*     MOVE B"1" TO ＷＫ−等級２Ｂ .                                               
           COMBINE ＷＫ−等級ビット列 = ＷＫ−等級ビット列  OR ""4000""
      *20141117修正終了
000000     GO TO CX00271.                                                       
000000 CX00272. IF NOT(L = 3) GO TO CX00273.                                     
           DISPLAY "CX00272" UPON CONSOLE
      *20141117修正開始
000000*     MOVE B"1" TO ＷＫ−等級３Ｂ .                                               
           COMBINE ＷＫ−等級ビット列 = ＷＫ−等級ビット列  OR ""2000""
      *20141117修正終了
000000     GO TO CX00271.                                                       
000000 CX00273. IF NOT(L = 4) GO TO CX00274.                                     
           DISPLAY "CX00273" UPON CONSOLE
      *20141117修正開始
000000*     MOVE B"1" TO ＷＫ−等級４Ｂ .                                               
           COMBINE ＷＫ−等級ビット列 = ＷＫ−等級ビット列  OR ""1000""
      *20141117修正終了
000000     GO TO CX00271.                                                       
000000 CX00274. IF NOT(L = 5) GO TO CX00275.                                     
           DISPLAY "CX00274" UPON CONSOLE
      *20141117修正開始
000000*     MOVE B"1" TO ＷＫ−等級５Ｂ .                                               
           COMBINE ＷＫ−等級ビット列 = ＷＫ−等級ビット列  OR ""0800""
      *20141117修正終了
000000     GO TO CX00271.                                                       
000000 CX00275. IF NOT(L = 6) GO TO CX00276.                                     
           DISPLAY "CX00275" UPON CONSOLE
      *20141117修正開始
000000*     MOVE B"1" TO ＷＫ−等級６Ｂ .                                               
           COMBINE ＷＫ−等級ビット列 = ＷＫ−等級ビット列  OR ""0400""
      *20141117修正終了
000000     GO TO CX00271.                                                       
000000 CX00276. IF NOT(L = 7) GO TO CX00277.                                     
           DISPLAY "CX00276" UPON CONSOLE
      *20141117修正開始
000000*     MOVE B"1" TO ＷＫ−等級７Ｂ .                                               
           COMBINE ＷＫ−等級ビット列 = ＷＫ−等級ビット列  OR ""0200""
      *20141117修正終了
000000     GO TO CX00271.                                                       
000000 CX00277. IF NOT(L = 8) GO TO CX00278.                                     
           DISPLAY "CX00277" UPON CONSOLE
      *20141117修正開始
000000*     MOVE B"1" TO ＷＫ−等級８Ｂ .                                               
           COMBINE ＷＫ−等級ビット列 = ＷＫ−等級ビット列  OR ""0100""
      *20141117修正終了
000000     GO TO CX00271.                                                       
000000 CX00278. IF NOT(L = 9) GO TO CX00279.                                     
           DISPLAY "CX00278" UPON CONSOLE
      *20141117修正開始
000000*     MOVE B"1" TO ＷＫ−等級９Ｂ .                                               
           COMBINE ＷＫ−等級ビット列 = ＷＫ−等級ビット列  OR ""0080""
      *20141117修正終了
000000     GO TO CX00271.                                                       
000000 CX00279. IF NOT(L = 10) GO TO CX00280.                                    
           DISPLAY "CX00279" UPON CONSOLE
      *20141117修正開始
000000*     MOVE B"1" TO ＷＫ−等級１０Ｂ .                                              
           COMBINE ＷＫ−等級ビット列 = ＷＫ−等級ビット列  OR ""0040""
      *20141117修正終了
000000     GO TO CX00271.                                                       
000000 CX00280. IF NOT(L = 11) GO TO CX00281.                                    
           DISPLAY "CX00280" UPON CONSOLE
      *20141117修正開始
000000*     MOVE B"1" TO ＷＫ−等級１１Ｂ .                                              
           COMBINE ＷＫ−等級ビット列 = ＷＫ−等級ビット列  OR ""0020""
      *20141117修正終了
000000     GO TO CX00271.                                                       
000000 CX00281. IF NOT(L = 12) GO TO CX00282.                                    
           DISPLAY "CX00281" UPON CONSOLE
      *20141117修正開始
000000*     MOVE B"1" TO ＷＫ−等級１２Ｂ .                                              
           COMBINE ＷＫ−等級ビット列 = ＷＫ−等級ビット列  OR ""0010""
      *20141117修正終了
000000     GO TO CX00271.                                                       
000000 CX00282. IF NOT(L = 13) GO TO CX00283.                                    
           DISPLAY "CX00282" UPON CONSOLE
      *20141117修正開始
000000*     MOVE B"1" TO ＷＫ−等級１３Ｂ .                                              
           COMBINE ＷＫ−等級ビット列 = ＷＫ−等級ビット列  OR ""0008""
      *20141117修正終了
000000     GO TO CX00271.                                                       
000000 CX00283. IF NOT(L = 14) GO TO CX00284.                                    
           DISPLAY "CX00283" UPON CONSOLE
      *20141117修正開始
000000*     MOVE B"1" TO ＷＫ−等級１４Ｂ .                                              
           COMBINE ＷＫ−等級ビット列 = ＷＫ−等級ビット列  OR ""0004""
      *20141117修正終了
000000     GO TO CX00271.                                                       
000000 CX00284. IF NOT(L = 15) GO TO CX00285.                                    
           DISPLAY "CX00284" UPON CONSOLE
      *20141117修正開始
000000*     MOVE B"1" TO ＷＫ−等級１５Ｂ .                                              
           COMBINE ＷＫ−等級ビット列 = ＷＫ−等級ビット列  OR ""0002""
      *20141117修正終了
000000     GO TO CX00271.                                                       
000000 CX00285. IF NOT(L = 16) GO TO CX00286.                                    
           DISPLAY "CX00285" UPON CONSOLE
      *20141117修正開始
000000*     MOVE B"1" TO ＷＫ−等級１６Ｂ .                                              
           COMBINE ＷＫ−等級ビット列 = ＷＫ−等級ビット列  OR ""0001""
      *20141117修正終了
000000 CX00286.                                                                 
000000 CX00271.                                                                 
           DISPLAY "CX00271" UPON CONSOLE
000000 CX00018. EXIT.                                                           

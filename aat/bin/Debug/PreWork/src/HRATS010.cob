000000 IDENTIFICATION DIVISION.                                                 
000000 PROGRAM-ID. HRATS010 .                                                   
000000 DATE-WRITTEN.                                                            
000000 DATE-COMPILED.                                                           
000000 ENVIRONMENT DIVISION.                                                    
000000 CONFIGURATION SECTION.                                                   
000000 SOURCE-COMPUTER.        ACOS.                                            
000000 OBJECT-COMPUTER.        ACOS.                                            
000000 DATA DIVISION.
      *20141029�ǉ��J�n
       WORKING-STORAGE SECTION.
      *20141029�ǉ��I��                                                           
000000 01  �C���f�b�N�X�萔�e�[�u��.                                                        
000000     03  �ݒ�l�O�P�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�Q�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       1.             
000000     03  �ݒ�l�O�R�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       2.             
000000     03  �ݒ�l�O�S�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       3.             
000000     03  �ݒ�l�O�T�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       4.             
000000     03  �ݒ�l�O�U�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       5.             
000000     03  �ݒ�l�O�V�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       6.             
000000     03  �ݒ�l�O�W�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       7.             
000000     03  �ݒ�l�O�X�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       8.             
000000     03  �ݒ�l�P�O�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       9.             
000000     03  �ݒ�l�P�P�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      10.             
000000     03  �ݒ�l�P�Q�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      11.             
000000     03  �ݒ�l�P�R�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      12.             
000000     03  �ݒ�l�P�S�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      13.             
000000     03  �ݒ�l�P�T�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      14.             
000000     03  �ݒ�l�P�U�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      15.             
000000     03  �ݒ�l�P�V�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      16.             
000000     03  �ݒ�l�P�W�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      17.             
000000     03  �ݒ�l�P�X�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      18.             
000000     03  �ݒ�l�Q�O�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      19.             
000000     03  �ݒ�l�Q�P�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      20.             
000000     03  �ݒ�l�Q�Q�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      21.             
000000     03  �ݒ�l�Q�R�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      22.             
000000     03  �ݒ�l�Q�S�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      23.             
000000     03  �ݒ�l�Q�T�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      24.             
000000     03  �ݒ�l�Q�U�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      25.             
000000     03  �ݒ�l�Q�V�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      26.             
000000     03  �ݒ�l�Q�W�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      27.             
000000     03  �ݒ�l�Q�X�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      28.             
000000     03  �ݒ�l�R�O�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      29.             
000000     03  �ݒ�l�R�P�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      30.             
000000     03  �ݒ�l�R�Q�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      31.             
000000     03  �ݒ�l�R�R�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      32.             
000000     03  �ݒ�l�R�S�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      33.             
000000     03  �ݒ�l�R�T�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      34.             
000000     03  �ݒ�l�R�U�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      35.             
000000     03  �ݒ�l�R�V�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      36.             
000000     03  �ݒ�l�R�W�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      37.             
000000     03  �ݒ�l�R�X�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      38.             
000000     03  �ݒ�l�S�O�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      39.             
000000     03  �ݒ�l�S�P�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      40.             
000000     03  �ݒ�l�S�Q�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      41.             
000000     03  �ݒ�l�S�R�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      42.             
000000     03  �ݒ�l�S�S�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      43.             
000000     03  �ݒ�l�S�T�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      44.             
000000     03  �ݒ�l�S�U�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      45.             
000000     03  �ݒ�l�S�V�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      46.             
000000     03  �ݒ�l�S�W�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      47.             
000000     03  �ݒ�l�S�X�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      48.             
000000     03  �ݒ�l�T�O�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      49.             
000000     03  �ݒ�l�T�P�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      50.             
000000     03  �ݒ�l�T�Q�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      51.             
000000     03  �ݒ�l�T�R�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      52.             
000000     03  �ݒ�l�T�S�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      53.             
000000     03  �ݒ�l�T�T�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      54.             
000000     03  �ݒ�l�T�U�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      55.             
000000     03  �ݒ�l�T�V�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      56.             
000000     03  �ݒ�l�T�W�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      57.             
000000     03  �ݒ�l�T�X�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      58.             
000000     03  �ݒ�l�U�O�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      59.             
000000     03  �ݒ�l�U�P�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      60.             
000000     03  �ݒ�l�U�Q�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      61.             
000000     03  �ݒ�l�U�R�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      62.             
000000     03  �ݒ�l�U�S�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      63.             
000000     03  �ݒ�l�U�T�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      64.             
000000     03  �ݒ�l�U�U�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      65.             
000000     03  �ݒ�l�U�V�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      66.             
000000     03  �ݒ�l�U�W�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      67.             
000000     03  �ݒ�l�U�X�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      68.             
000000     03  �ݒ�l�V�O�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      69.             
000000     03  �ݒ�l�V�P�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      70.             
000000     03  �ݒ�l�V�Q�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      71.             
000000     03  �ݒ�l�V�R�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      72.             
000000     03  �ݒ�l�V�S�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      73.             
000000     03  �ݒ�l�V�T�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      74.             
000000     03  �ݒ�l�V�U�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      75.             
000000     03  �ݒ�l�V�V�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      76.             
000000     03  �ݒ�l�V�W�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      77.             
000000     03  �ݒ�l�V�X�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      78.             
000000     03  �ݒ�l�W�O�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      79.             
000000     03  �ݒ�l�W�P�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      80.             
000000     03  �ݒ�l�W�Q�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      81.             
000000     03  �ݒ�l�W�R�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      82.             
000000     03  �ݒ�l�W�S�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      83.             
000000     03  �ݒ�l�W�T�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      84.             
000000     03  �ݒ�l�W�U�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      85.             
000000     03  �ݒ�l�W�V�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      86.             
000000     03  �ݒ�l�W�W�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      87.             
000000     03  �ݒ�l�W�X�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      88.             
000000     03  �ݒ�l�X�O�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      89.             
000000     03  �ݒ�l�X�P�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      90.             
000000     03  �ݒ�l�X�Q�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      91.             
000000     03  �ݒ�l�X�R�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      92.             
000000     03  �ݒ�l�X�S�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      93.             
000000     03  �ݒ�l�X�T�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      94.             
000000     03  �ݒ�l�X�U�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      95.             
000000     03  �ݒ�l�X�V�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      96.             
000000     03  �ݒ�l�X�W�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      97.             
000000     03  �ݒ�l�X�X�^�O�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      98.             
000000     03  �ݒ�l�O�P�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�Q�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�R�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       1.             
000000     03  �ݒ�l�O�S�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       3.             
000000     03  �ݒ�l�O�T�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       6.             
000000     03  �ݒ�l�O�U�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      10.             
000000     03  �ݒ�l�O�V�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      15.             
000000     03  �ݒ�l�O�W�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      21.             
000000     03  �ݒ�l�O�X�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      28.             
000000     03  �ݒ�l�P�O�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      36.             
000000     03  �ݒ�l�P�P�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      45.             
000000     03  �ݒ�l�P�Q�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      55.             
000000     03  �ݒ�l�P�R�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      66.             
000000     03  �ݒ�l�P�S�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      78.             
000000     03  �ݒ�l�P�T�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      91.             
000000     03  �ݒ�l�P�U�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     105.             
000000     03  �ݒ�l�P�V�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     120.             
000000     03  �ݒ�l�P�W�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     136.             
000000     03  �ݒ�l�P�X�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     153.             
000000     03  �ݒ�l�Q�O�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     171.             
000000     03  �ݒ�l�Q�P�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     190.             
000000     03  �ݒ�l�Q�Q�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     210.             
000000     03  �ݒ�l�Q�R�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     231.             
000000     03  �ݒ�l�Q�S�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     253.             
000000     03  �ݒ�l�Q�T�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     276.             
000000     03  �ݒ�l�Q�U�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     300.             
000000     03  �ݒ�l�Q�V�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     325.             
000000     03  �ݒ�l�Q�W�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     351.             
000000     03  �ݒ�l�Q�X�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     378.             
000000     03  �ݒ�l�R�O�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     406.             
000000     03  �ݒ�l�R�P�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     435.             
000000     03  �ݒ�l�R�Q�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     465.             
000000     03  �ݒ�l�R�R�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     496.             
000000     03  �ݒ�l�R�S�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     528.             
000000     03  �ݒ�l�R�T�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     561.             
000000     03  �ݒ�l�R�U�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     595.             
000000     03  �ݒ�l�R�V�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     630.             
000000     03  �ݒ�l�R�W�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     666.             
000000     03  �ݒ�l�R�X�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     703.             
000000     03  �ݒ�l�S�O�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     741.             
000000     03  �ݒ�l�S�P�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     780.             
000000     03  �ݒ�l�S�Q�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     820.             
000000     03  �ݒ�l�S�R�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     861.             
000000     03  �ݒ�l�S�S�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     903.             
000000     03  �ݒ�l�S�T�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     946.             
000000     03  �ݒ�l�S�U�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     990.             
000000     03  �ݒ�l�S�V�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1035.             
000000     03  �ݒ�l�S�W�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1081.             
000000     03  �ݒ�l�S�X�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1128.             
000000     03  �ݒ�l�T�O�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1176.             
000000     03  �ݒ�l�T�P�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1225.             
000000     03  �ݒ�l�T�Q�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1275.             
000000     03  �ݒ�l�T�R�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1326.             
000000     03  �ݒ�l�T�S�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1378.             
000000     03  �ݒ�l�T�T�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1431.             
000000     03  �ݒ�l�T�U�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1485.             
000000     03  �ݒ�l�T�V�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1540.             
000000     03  �ݒ�l�T�W�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1596.             
000000     03  �ݒ�l�T�X�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1653.             
000000     03  �ݒ�l�U�O�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1711.             
000000     03  �ݒ�l�U�P�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1770.             
000000     03  �ݒ�l�U�Q�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1830.             
000000     03  �ݒ�l�U�R�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1891.             
000000     03  �ݒ�l�U�S�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1953.             
000000     03  �ݒ�l�U�T�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    2016.             
000000     03  �ݒ�l�U�U�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    2080.             
000000     03  �ݒ�l�U�V�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    2145.             
000000     03  �ݒ�l�U�W�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    2211.             
000000     03  �ݒ�l�U�X�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    2278.             
000000     03  �ݒ�l�V�O�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    2346.             
000000     03  �ݒ�l�V�P�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    2415.             
000000     03  �ݒ�l�V�Q�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    2485.             
000000     03  �ݒ�l�V�R�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    2556.             
000000     03  �ݒ�l�V�S�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    2628.             
000000     03  �ݒ�l�V�T�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    2701.             
000000     03  �ݒ�l�V�U�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    2775.             
000000     03  �ݒ�l�V�V�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    2850.             
000000     03  �ݒ�l�V�W�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    2926.             
000000     03  �ݒ�l�V�X�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    3003.             
000000     03  �ݒ�l�W�O�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    3081.             
000000     03  �ݒ�l�W�P�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    3160.             
000000     03  �ݒ�l�W�Q�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    3240.             
000000     03  �ݒ�l�W�R�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    3321.             
000000     03  �ݒ�l�W�S�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    3403.             
000000     03  �ݒ�l�W�T�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    3486.             
000000     03  �ݒ�l�W�U�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    3570.             
000000     03  �ݒ�l�W�V�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    3655.             
000000     03  �ݒ�l�W�W�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    3741.             
000000     03  �ݒ�l�W�X�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    3828.             
000000     03  �ݒ�l�X�O�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    3916.             
000000     03  �ݒ�l�X�P�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    4005.             
000000     03  �ݒ�l�X�Q�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    4095.             
000000     03  �ݒ�l�X�R�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    4186.             
000000     03  �ݒ�l�X�S�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    4278.             
000000     03  �ݒ�l�X�T�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    4371.             
000000     03  �ݒ�l�X�U�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    4465.             
000000     03  �ݒ�l�X�V�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    4560.             
000000     03  �ݒ�l�X�W�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    4656.             
000000     03  �ݒ�l�X�X�^�O�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    4753.             
000000     03  �ݒ�l�O�P�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�Q�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�R�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�S�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       1.             
000000     03  �ݒ�l�O�T�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       4.             
000000     03  �ݒ�l�O�U�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      10.             
000000     03  �ݒ�l�O�V�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      20.             
000000     03  �ݒ�l�O�W�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      35.             
000000     03  �ݒ�l�O�X�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      56.             
000000     03  �ݒ�l�P�O�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      84.             
000000     03  �ݒ�l�P�P�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     120.             
000000     03  �ݒ�l�P�Q�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     165.             
000000     03  �ݒ�l�P�R�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     220.             
000000     03  �ݒ�l�P�S�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     286.             
000000     03  �ݒ�l�P�T�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     364.             
000000     03  �ݒ�l�P�U�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     455.             
000000     03  �ݒ�l�P�V�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     560.             
000000     03  �ݒ�l�P�W�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     680.             
000000     03  �ݒ�l�P�X�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     816.             
000000     03  �ݒ�l�Q�O�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     969.             
000000     03  �ݒ�l�Q�P�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1140.             
000000     03  �ݒ�l�Q�Q�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1330.             
000000     03  �ݒ�l�Q�R�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1540.             
000000     03  �ݒ�l�Q�S�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1771.             
000000     03  �ݒ�l�Q�T�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    2024.             
000000     03  �ݒ�l�Q�U�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    2300.             
000000     03  �ݒ�l�Q�V�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    2600.             
000000     03  �ݒ�l�Q�W�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    2925.             
000000     03  �ݒ�l�Q�X�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    3276.             
000000     03  �ݒ�l�R�O�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    3654.             
000000     03  �ݒ�l�R�P�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    4060.             
000000     03  �ݒ�l�R�Q�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    4495.             
000000     03  �ݒ�l�R�R�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    4960.             
000000     03  �ݒ�l�R�S�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    5456.             
000000     03  �ݒ�l�R�T�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    5984.             
000000     03  �ݒ�l�R�U�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    6545.             
000000     03  �ݒ�l�R�V�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    7140.             
000000     03  �ݒ�l�R�W�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    7770.             
000000     03  �ݒ�l�R�X�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    8436.             
000000     03  �ݒ�l�S�O�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    9139.             
000000     03  �ݒ�l�S�P�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    9880.             
000000     03  �ݒ�l�S�Q�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   10660.             
000000     03  �ݒ�l�S�R�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   11480.             
000000     03  �ݒ�l�S�S�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   12341.             
000000     03  �ݒ�l�S�T�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   13244.             
000000     03  �ݒ�l�S�U�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   14190.             
000000     03  �ݒ�l�S�V�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   15180.             
000000     03  �ݒ�l�S�W�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   16215.             
000000     03  �ݒ�l�S�X�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   17296.             
000000     03  �ݒ�l�T�O�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   18424.             
000000     03  �ݒ�l�T�P�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   19600.             
000000     03  �ݒ�l�T�Q�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   20825.             
000000     03  �ݒ�l�T�R�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   22100.             
000000     03  �ݒ�l�T�S�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   23426.             
000000     03  �ݒ�l�T�T�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   24804.             
000000     03  �ݒ�l�T�U�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   26235.             
000000     03  �ݒ�l�T�V�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   27720.             
000000     03  �ݒ�l�T�W�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   29260.             
000000     03  �ݒ�l�T�X�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   30856.             
000000     03  �ݒ�l�U�O�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   32509.             
000000     03  �ݒ�l�U�P�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   34220.             
000000     03  �ݒ�l�U�Q�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   35990.             
000000     03  �ݒ�l�U�R�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   37820.             
000000     03  �ݒ�l�U�S�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   39711.             
000000     03  �ݒ�l�U�T�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   41664.             
000000     03  �ݒ�l�U�U�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   43680.             
000000     03  �ݒ�l�U�V�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   45760.             
000000     03  �ݒ�l�U�W�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   47905.             
000000     03  �ݒ�l�U�X�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   50116.             
000000     03  �ݒ�l�V�O�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   52394.             
000000     03  �ݒ�l�V�P�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   54740.             
000000     03  �ݒ�l�V�Q�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   57155.             
000000     03  �ݒ�l�V�R�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   59640.             
000000     03  �ݒ�l�V�S�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   62196.             
000000     03  �ݒ�l�V�T�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   64824.             
000000     03  �ݒ�l�V�U�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   67525.             
000000     03  �ݒ�l�V�V�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   70300.             
000000     03  �ݒ�l�V�W�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   73150.             
000000     03  �ݒ�l�V�X�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   76076.             
000000     03  �ݒ�l�W�O�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   79079.             
000000     03  �ݒ�l�W�P�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   82160.             
000000     03  �ݒ�l�W�Q�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   85320.             
000000     03  �ݒ�l�W�R�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   88560.             
000000     03  �ݒ�l�W�S�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   91881.             
000000     03  �ݒ�l�W�T�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   95284.             
000000     03  �ݒ�l�W�U�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   98770.             
000000     03  �ݒ�l�W�V�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  102340.             
000000     03  �ݒ�l�W�W�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  105995.             
000000     03  �ݒ�l�W�X�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  109736.             
000000     03  �ݒ�l�X�O�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  113564.             
000000     03  �ݒ�l�X�P�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  117480.             
000000     03  �ݒ�l�X�Q�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  121485.             
000000     03  �ݒ�l�X�R�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  125580.             
000000     03  �ݒ�l�X�S�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  129766.             
000000     03  �ݒ�l�X�T�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  134044.             
000000     03  �ݒ�l�X�U�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  138415.             
000000     03  �ݒ�l�X�V�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  142880.             
000000     03  �ݒ�l�X�W�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  147440.             
000000     03  �ݒ�l�X�X�^�O�R      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  152096.             
000000     03  �ݒ�l�O�P�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�Q�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�R�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�S�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�T�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       1.             
000000     03  �ݒ�l�O�U�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       5.             
000000     03  �ݒ�l�O�V�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      15.             
000000     03  �ݒ�l�O�W�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      35.             
000000     03  �ݒ�l�O�X�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      70.             
000000     03  �ݒ�l�P�O�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     126.             
000000     03  �ݒ�l�P�P�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     210.             
000000     03  �ݒ�l�P�Q�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     330.             
000000     03  �ݒ�l�P�R�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     495.             
000000     03  �ݒ�l�P�S�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     715.             
000000     03  �ݒ�l�P�T�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1001.             
000000     03  �ݒ�l�P�U�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1365.             
000000     03  �ݒ�l�P�V�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1820.             
000000     03  �ݒ�l�P�W�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    2380.             
000000     03  �ݒ�l�P�X�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    3060.             
000000     03  �ݒ�l�Q�O�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    3876.             
000000     03  �ݒ�l�Q�P�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    4845.             
000000     03  �ݒ�l�Q�Q�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    5985.             
000000     03  �ݒ�l�Q�R�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    7315.             
000000     03  �ݒ�l�Q�S�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    8855.             
000000     03  �ݒ�l�Q�T�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   10626.             
000000     03  �ݒ�l�Q�U�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   12650.             
000000     03  �ݒ�l�Q�V�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   14950.             
000000     03  �ݒ�l�Q�W�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   17550.             
000000     03  �ݒ�l�Q�X�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   20475.             
000000     03  �ݒ�l�R�O�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   23751.             
000000     03  �ݒ�l�R�P�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   27405.             
000000     03  �ݒ�l�R�Q�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   31465.             
000000     03  �ݒ�l�R�R�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   35960.             
000000     03  �ݒ�l�R�S�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   40920.             
000000     03  �ݒ�l�R�T�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   46376.             
000000     03  �ݒ�l�R�U�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   52360.             
000000     03  �ݒ�l�R�V�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   58905.             
000000     03  �ݒ�l�R�W�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   66045.             
000000     03  �ݒ�l�R�X�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   73815.             
000000     03  �ݒ�l�S�O�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   82251.             
000000     03  �ݒ�l�S�P�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   91390.             
000000     03  �ݒ�l�S�Q�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  101270.             
000000     03  �ݒ�l�S�R�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  111930.             
000000     03  �ݒ�l�S�S�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  123410.             
000000     03  �ݒ�l�S�T�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  135751.             
000000     03  �ݒ�l�S�U�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  148995.             
000000     03  �ݒ�l�S�V�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  163185.             
000000     03  �ݒ�l�S�W�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  178365.             
000000     03  �ݒ�l�S�X�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  194580.             
000000     03  �ݒ�l�T�O�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  211876.             
000000     03  �ݒ�l�T�P�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  230300.             
000000     03  �ݒ�l�T�Q�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  249900.             
000000     03  �ݒ�l�T�R�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  270725.             
000000     03  �ݒ�l�T�S�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  292825.             
000000     03  �ݒ�l�T�T�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  316251.             
000000     03  �ݒ�l�T�U�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  341055.             
000000     03  �ݒ�l�T�V�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  367290.             
000000     03  �ݒ�l�T�W�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  395010.             
000000     03  �ݒ�l�T�X�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  424270.             
000000     03  �ݒ�l�U�O�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  455126.             
000000     03  �ݒ�l�U�P�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  487635.             
000000     03  �ݒ�l�U�Q�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  521855.             
000000     03  �ݒ�l�U�R�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  557845.             
000000     03  �ݒ�l�U�S�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  595665.             
000000     03  �ݒ�l�U�T�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  635376.             
000000     03  �ݒ�l�U�U�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  677040.             
000000     03  �ݒ�l�U�V�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  720720.             
000000     03  �ݒ�l�U�W�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  766480.             
000000     03  �ݒ�l�U�X�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  814385.             
000000     03  �ݒ�l�V�O�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  864501.             
000000     03  �ݒ�l�V�P�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  916895.             
000000     03  �ݒ�l�V�Q�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  971635.             
000000     03  �ݒ�l�V�R�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1028790.             
000000     03  �ݒ�l�V�S�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1088430.             
000000     03  �ݒ�l�V�T�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1150626.             
000000     03  �ݒ�l�V�U�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1215450.             
000000     03  �ݒ�l�V�V�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1282975.             
000000     03  �ݒ�l�V�W�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1353275.             
000000     03  �ݒ�l�V�X�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1426425.             
000000     03  �ݒ�l�W�O�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1502501.             
000000     03  �ݒ�l�W�P�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1581580.             
000000     03  �ݒ�l�W�Q�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1663740.             
000000     03  �ݒ�l�W�R�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1749060.             
000000     03  �ݒ�l�W�S�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1837620.             
000000     03  �ݒ�l�W�T�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1929501.             
000000     03  �ݒ�l�W�U�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 2024785.             
000000     03  �ݒ�l�W�V�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 2123555.             
000000     03  �ݒ�l�W�W�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 2225895.             
000000     03  �ݒ�l�W�X�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 2331890.             
000000     03  �ݒ�l�X�O�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 2441626.             
000000     03  �ݒ�l�X�P�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 2555190.             
000000     03  �ݒ�l�X�Q�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 2672670.             
000000     03  �ݒ�l�X�R�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 2794155.             
000000     03  �ݒ�l�X�S�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 2919735.             
000000     03  �ݒ�l�X�T�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 3049501.             
000000     03  �ݒ�l�X�U�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 3183545.             
000000     03  �ݒ�l�X�V�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 3321960.             
000000     03  �ݒ�l�X�W�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 3464840.             
000000     03  �ݒ�l�X�X�^�O�S      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 3612280.             
000000     03  �ݒ�l�O�P�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�Q�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�R�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�S�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�T�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�U�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       1.             
000000     03  �ݒ�l�O�V�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       6.             
000000     03  �ݒ�l�O�W�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      21.             
000000     03  �ݒ�l�O�X�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      56.             
000000     03  �ݒ�l�P�O�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     126.             
000000     03  �ݒ�l�P�P�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     252.             
000000     03  �ݒ�l�P�Q�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     462.             
000000     03  �ݒ�l�P�R�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     792.             
000000     03  �ݒ�l�P�S�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1287.             
000000     03  �ݒ�l�P�T�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    2002.             
000000     03  �ݒ�l�P�U�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    3003.             
000000     03  �ݒ�l�P�V�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    4368.             
000000     03  �ݒ�l�P�W�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    6188.             
000000     03  �ݒ�l�P�X�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    8568.             
000000     03  �ݒ�l�Q�O�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   11628.             
000000     03  �ݒ�l�Q�P�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   15504.             
000000     03  �ݒ�l�Q�Q�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   20349.             
000000     03  �ݒ�l�Q�R�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   26334.             
000000     03  �ݒ�l�Q�S�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   33649.             
000000     03  �ݒ�l�Q�T�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   42504.             
000000     03  �ݒ�l�Q�U�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   53130.             
000000     03  �ݒ�l�Q�V�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   65780.             
000000     03  �ݒ�l�Q�W�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   80730.             
000000     03  �ݒ�l�Q�X�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   98280.             
000000     03  �ݒ�l�R�O�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  118755.             
000000     03  �ݒ�l�R�P�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  142506.             
000000     03  �ݒ�l�R�Q�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  169911.             
000000     03  �ݒ�l�R�R�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  201376.             
000000     03  �ݒ�l�R�S�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  237336.             
000000     03  �ݒ�l�R�T�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  278256.             
000000     03  �ݒ�l�R�U�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  324632.             
000000     03  �ݒ�l�R�V�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  376992.             
000000     03  �ݒ�l�R�W�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  435897.             
000000     03  �ݒ�l�R�X�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  501942.             
000000     03  �ݒ�l�S�O�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  575757.             
000000     03  �ݒ�l�S�P�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  658008.             
000000     03  �ݒ�l�S�Q�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  749398.             
000000     03  �ݒ�l�S�R�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  850668.             
000000     03  �ݒ�l�S�S�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  962598.             
000000     03  �ݒ�l�S�T�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1086008.             
000000     03  �ݒ�l�S�U�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1221759.             
000000     03  �ݒ�l�S�V�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1370754.             
000000     03  �ݒ�l�S�W�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1533939.             
000000     03  �ݒ�l�S�X�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1712304.             
000000     03  �ݒ�l�T�O�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1906884.             
000000     03  �ݒ�l�T�P�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 2118760.             
000000     03  �ݒ�l�T�Q�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 2349060.             
000000     03  �ݒ�l�T�R�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 2598960.             
000000     03  �ݒ�l�T�S�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 2869685.             
000000     03  �ݒ�l�T�T�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 3162510.             
000000     03  �ݒ�l�T�U�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 3478761.             
000000     03  �ݒ�l�T�V�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 3819816.             
000000     03  �ݒ�l�T�W�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 4187106.             
000000     03  �ݒ�l�T�X�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 4582116.             
000000     03  �ݒ�l�U�O�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 5006386.             
000000     03  �ݒ�l�U�P�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 5461512.             
000000     03  �ݒ�l�U�Q�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 5949147.             
000000     03  �ݒ�l�U�R�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 6471002.             
000000     03  �ݒ�l�U�S�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 7028847.             
000000     03  �ݒ�l�U�T�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 7624512.             
000000     03  �ݒ�l�U�U�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 8259888.             
000000     03  �ݒ�l�U�V�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 8936928.             
000000     03  �ݒ�l�U�W�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 9657648.             
000000     03  �ݒ�l�U�X�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                10424128.             
000000     03  �ݒ�l�V�O�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                11238513.             
000000     03  �ݒ�l�V�P�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                12103014.             
000000     03  �ݒ�l�V�Q�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                13019909.             
000000     03  �ݒ�l�V�R�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                13991544.             
000000     03  �ݒ�l�V�S�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                15020334.             
000000     03  �ݒ�l�V�T�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                16108764.             
000000     03  �ݒ�l�V�U�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                17259390.             
000000     03  �ݒ�l�V�V�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                18474840.             
000000     03  �ݒ�l�V�W�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                19757815.             
000000     03  �ݒ�l�V�X�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                21111090.             
000000     03  �ݒ�l�W�O�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                22537515.             
000000     03  �ݒ�l�W�P�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                24040016.             
000000     03  �ݒ�l�W�Q�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                25621596.             
000000     03  �ݒ�l�W�R�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                27285336.             
000000     03  �ݒ�l�W�S�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                29034396.             
000000     03  �ݒ�l�W�T�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                30872016.             
000000     03  �ݒ�l�W�U�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                32801517.             
000000     03  �ݒ�l�W�V�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                34826302.             
000000     03  �ݒ�l�W�W�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                36949857.             
000000     03  �ݒ�l�W�X�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                39175752.             
000000     03  �ݒ�l�X�O�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                41507642.             
000000     03  �ݒ�l�X�P�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                43949268.             
000000     03  �ݒ�l�X�Q�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                46504458.             
000000     03  �ݒ�l�X�R�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                49177128.             
000000     03  �ݒ�l�X�S�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                51971283.             
000000     03  �ݒ�l�X�T�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                54891018.             
000000     03  �ݒ�l�X�U�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                57940519.             
000000     03  �ݒ�l�X�V�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                61124064.             
000000     03  �ݒ�l�X�W�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                64446024.             
000000     03  �ݒ�l�X�X�^�O�T      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                67910864.             
000000     03  �ݒ�l�O�P�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�Q�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�R�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�S�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�T�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�U�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�V�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       1.             
000000     03  �ݒ�l�O�W�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       7.             
000000     03  �ݒ�l�O�X�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      28.             
000000     03  �ݒ�l�P�O�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      84.             
000000     03  �ݒ�l�P�P�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     210.             
000000     03  �ݒ�l�P�Q�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     462.             
000000     03  �ݒ�l�P�R�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     924.             
000000     03  �ݒ�l�P�S�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1716.             
000000     03  �ݒ�l�P�T�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    3003.             
000000     03  �ݒ�l�P�U�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    5005.             
000000     03  �ݒ�l�P�V�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    8008.             
000000     03  �ݒ�l�P�W�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   12376.             
000000     03  �ݒ�l�P�X�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   18564.             
000000     03  �ݒ�l�Q�O�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   27132.             
000000     03  �ݒ�l�Q�P�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   38760.             
000000     03  �ݒ�l�Q�Q�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   54264.             
000000     03  �ݒ�l�Q�R�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   74613.             
000000     03  �ݒ�l�Q�S�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  100947.             
000000     03  �ݒ�l�Q�T�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  134596.             
000000     03  �ݒ�l�Q�U�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  177100.             
000000     03  �ݒ�l�Q�V�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  230230.             
000000     03  �ݒ�l�Q�W�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  296010.             
000000     03  �ݒ�l�Q�X�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  376740.             
000000     03  �ݒ�l�R�O�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  475020.             
000000     03  �ݒ�l�R�P�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  593775.             
000000     03  �ݒ�l�R�Q�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  736281.             
000000     03  �ݒ�l�R�R�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  906192.             
000000     03  �ݒ�l�R�S�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1107568.             
000000     03  �ݒ�l�R�T�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1344904.             
000000     03  �ݒ�l�R�U�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1623160.             
000000     03  �ݒ�l�R�V�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1947792.             
000000     03  �ݒ�l�R�W�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 2324784.             
000000     03  �ݒ�l�R�X�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 2760681.             
000000     03  �ݒ�l�S�O�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 3262623.             
000000     03  �ݒ�l�S�P�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 3838380.             
000000     03  �ݒ�l�S�Q�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 4496388.             
000000     03  �ݒ�l�S�R�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 5245786.             
000000     03  �ݒ�l�S�S�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 6096454.             
000000     03  �ݒ�l�S�T�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 7059052.             
000000     03  �ݒ�l�S�U�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 8145060.             
000000     03  �ݒ�l�S�V�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 9366819.             
000000     03  �ݒ�l�S�W�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                10737573.             
000000     03  �ݒ�l�S�X�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                12271512.             
000000     03  �ݒ�l�T�O�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                13983816.             
000000     03  �ݒ�l�T�P�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                15890700.             
000000     03  �ݒ�l�T�Q�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                18009460.             
000000     03  �ݒ�l�T�R�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                20358520.             
000000     03  �ݒ�l�T�S�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                22957480.             
000000     03  �ݒ�l�T�T�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                25827165.             
000000     03  �ݒ�l�T�U�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                28989675.             
000000     03  �ݒ�l�T�V�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                32468436.             
000000     03  �ݒ�l�T�W�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                36288252.             
000000     03  �ݒ�l�T�X�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                40475358.             
000000     03  �ݒ�l�U�O�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                45057474.             
000000     03  �ݒ�l�U�P�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                50063860.             
000000     03  �ݒ�l�U�Q�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                55525372.             
000000     03  �ݒ�l�U�R�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                61474519.             
000000     03  �ݒ�l�U�S�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                67945521.             
000000     03  �ݒ�l�U�T�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                74974368.             
000000     03  �ݒ�l�U�U�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                82598880.             
000000     03  �ݒ�l�U�V�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                90858768.             
000000     03  �ݒ�l�U�W�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                99795696.             
000000     03  �ݒ�l�U�X�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               109453344.             
000000     03  �ݒ�l�V�O�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               119877472.             
000000     03  �ݒ�l�V�P�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               131115985.             
000000     03  �ݒ�l�V�Q�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               143218999.             
000000     03  �ݒ�l�V�R�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               156238908.             
000000     03  �ݒ�l�V�S�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               170230452.             
000000     03  �ݒ�l�V�T�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               185250786.             
000000     03  �ݒ�l�V�U�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               201359550.             
000000     03  �ݒ�l�V�V�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               218618940.             
000000     03  �ݒ�l�V�W�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               237093780.             
000000     03  �ݒ�l�V�X�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               256851595.             
000000     03  �ݒ�l�W�O�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               277962685.             
000000     03  �ݒ�l�W�P�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               300500200.             
000000     03  �ݒ�l�W�Q�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               324540216.             
000000     03  �ݒ�l�W�R�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               350161812.             
000000     03  �ݒ�l�W�S�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               377447148.             
000000     03  �ݒ�l�W�T�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               406481544.             
000000     03  �ݒ�l�W�U�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               437353560.             
000000     03  �ݒ�l�W�V�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               470155077.             
000000     03  �ݒ�l�W�W�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               504981379.             
000000     03  �ݒ�l�W�X�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               541931236.             
000000     03  �ݒ�l�X�O�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               581106988.             
000000     03  �ݒ�l�X�P�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               622614630.             
000000     03  �ݒ�l�X�Q�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               666563898.             
000000     03  �ݒ�l�X�R�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               713068356.             
000000     03  �ݒ�l�X�S�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               762245484.             
000000     03  �ݒ�l�X�T�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               814216767.             
000000     03  �ݒ�l�X�U�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               869107785.             
000000     03  �ݒ�l�X�V�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               927048304.             
000000     03  �ݒ�l�X�W�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               988172368.             
000000     03  �ݒ�l�X�X�^�O�U      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1052618392.             
000000     03  �ݒ�l�O�P�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�Q�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�R�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�S�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�T�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�U�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�V�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�W�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       1.             
000000     03  �ݒ�l�O�X�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       8.             
000000     03  �ݒ�l�P�O�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      36.             
000000     03  �ݒ�l�P�P�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     120.             
000000     03  �ݒ�l�P�Q�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     330.             
000000     03  �ݒ�l�P�R�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     792.             
000000     03  �ݒ�l�P�S�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1716.             
000000     03  �ݒ�l�P�T�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    3432.             
000000     03  �ݒ�l�P�U�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    6435.             
000000     03  �ݒ�l�P�V�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   11440.             
000000     03  �ݒ�l�P�W�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   19448.             
000000     03  �ݒ�l�P�X�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   31824.             
000000     03  �ݒ�l�Q�O�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   50388.             
000000     03  �ݒ�l�Q�P�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   77520.             
000000     03  �ݒ�l�Q�Q�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  116280.             
000000     03  �ݒ�l�Q�R�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  170544.             
000000     03  �ݒ�l�Q�S�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  245157.             
000000     03  �ݒ�l�Q�T�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  346104.             
000000     03  �ݒ�l�Q�U�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  480700.             
000000     03  �ݒ�l�Q�V�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  657800.             
000000     03  �ݒ�l�Q�W�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  888030.             
000000     03  �ݒ�l�Q�X�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1184040.             
000000     03  �ݒ�l�R�O�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1560780.             
000000     03  �ݒ�l�R�P�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 2035800.             
000000     03  �ݒ�l�R�Q�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 2629575.             
000000     03  �ݒ�l�R�R�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 3365856.             
000000     03  �ݒ�l�R�S�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 4272048.             
000000     03  �ݒ�l�R�T�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 5379616.             
000000     03  �ݒ�l�R�U�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 6724520.             
000000     03  �ݒ�l�R�V�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 8347680.             
000000     03  �ݒ�l�R�W�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                10295472.             
000000     03  �ݒ�l�R�X�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                12620256.             
000000     03  �ݒ�l�S�O�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                15380937.             
000000     03  �ݒ�l�S�P�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                18643560.             
000000     03  �ݒ�l�S�Q�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                22481940.             
000000     03  �ݒ�l�S�R�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                26978328.             
000000     03  �ݒ�l�S�S�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                32224114.             
000000     03  �ݒ�l�S�T�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                38320568.             
000000     03  �ݒ�l�S�U�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                45379620.             
000000     03  �ݒ�l�S�V�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                53524680.             
000000     03  �ݒ�l�S�W�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                62891499.             
000000     03  �ݒ�l�S�X�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                73629072.             
000000     03  �ݒ�l�T�O�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                85900584.             
000000     03  �ݒ�l�T�P�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                99884400.             
000000     03  �ݒ�l�T�Q�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               115775100.             
000000     03  �ݒ�l�T�R�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               133784560.             
000000     03  �ݒ�l�T�S�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               154143080.             
000000     03  �ݒ�l�T�T�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               177100560.             
000000     03  �ݒ�l�T�U�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               202927725.             
000000     03  �ݒ�l�T�V�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               231917400.             
000000     03  �ݒ�l�T�W�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               264385836.             
000000     03  �ݒ�l�T�X�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               300674088.             
000000     03  �ݒ�l�U�O�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               341149446.             
000000     03  �ݒ�l�U�P�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               386206920.             
000000     03  �ݒ�l�U�Q�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               436270780.             
000000     03  �ݒ�l�U�R�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               491796152.             
000000     03  �ݒ�l�U�S�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               553270671.             
000000     03  �ݒ�l�U�T�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               621216192.             
000000     03  �ݒ�l�U�U�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               696190560.             
000000     03  �ݒ�l�U�V�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               778789440.             
000000     03  �ݒ�l�U�W�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               869648208.             
000000     03  �ݒ�l�U�X�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               969443904.             
000000     03  �ݒ�l�V�O�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1078897248.             
000000     03  �ݒ�l�V�P�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1198774720.             
000000     03  �ݒ�l�V�Q�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1329890705.             
000000     03  �ݒ�l�V�R�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1473109704.             
000000     03  �ݒ�l�V�S�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1629348612.             
000000     03  �ݒ�l�V�T�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1799579064.             
000000     03  �ݒ�l�V�U�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1984829850.             
000000     03  �ݒ�l�V�V�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              2186189400.             
000000     03  �ݒ�l�V�W�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              2404808340.             
000000     03  �ݒ�l�V�X�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              2641902120.             
000000     03  �ݒ�l�W�O�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              2898753715.             
000000     03  �ݒ�l�W�P�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              3176716400.             
000000     03  �ݒ�l�W�Q�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              3477216600.             
000000     03  �ݒ�l�W�R�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              3801756816.             
000000     03  �ݒ�l�W�S�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              4151918628.             
000000     03  �ݒ�l�W�T�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              4529365776.             
000000     03  �ݒ�l�W�U�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              4935847320.             
000000     03  �ݒ�l�W�V�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              5373200880.             
000000     03  �ݒ�l�W�W�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              5843355957.             
000000     03  �ݒ�l�W�X�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              6348337336.             
000000     03  �ݒ�l�X�O�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              6890268572.             
000000     03  �ݒ�l�X�P�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              7471375560.             
000000     03  �ݒ�l�X�Q�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              8093990190.             
000000     03  �ݒ�l�X�R�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              8760554088.             
000000     03  �ݒ�l�X�S�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              9473622444.             
000000     03  �ݒ�l�X�T�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             10235867928.             
000000     03  �ݒ�l�X�U�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             11050084695.             
000000     03  �ݒ�l�X�V�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             11919192480.             
000000     03  �ݒ�l�X�W�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             12846240784.             
000000     03  �ݒ�l�X�X�^�O�V      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             13834413152.             
000000     03  �ݒ�l�O�P�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�Q�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�R�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�S�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�T�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�U�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�V�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�W�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�X�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       1.             
000000     03  �ݒ�l�P�O�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       9.             
000000     03  �ݒ�l�P�P�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      45.             
000000     03  �ݒ�l�P�Q�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     165.             
000000     03  �ݒ�l�P�R�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     495.             
000000     03  �ݒ�l�P�S�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1287.             
000000     03  �ݒ�l�P�T�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    3003.             
000000     03  �ݒ�l�P�U�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    6435.             
000000     03  �ݒ�l�P�V�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   12870.             
000000     03  �ݒ�l�P�W�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   24310.             
000000     03  �ݒ�l�P�X�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   43758.             
000000     03  �ݒ�l�Q�O�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   75582.             
000000     03  �ݒ�l�Q�P�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  125970.             
000000     03  �ݒ�l�Q�Q�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  203490.             
000000     03  �ݒ�l�Q�R�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  319770.             
000000     03  �ݒ�l�Q�S�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  490314.             
000000     03  �ݒ�l�Q�T�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  735471.             
000000     03  �ݒ�l�Q�U�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1081575.             
000000     03  �ݒ�l�Q�V�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1562275.             
000000     03  �ݒ�l�Q�W�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 2220075.             
000000     03  �ݒ�l�Q�X�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 3108105.             
000000     03  �ݒ�l�R�O�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 4292145.             
000000     03  �ݒ�l�R�P�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 5852925.             
000000     03  �ݒ�l�R�Q�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 7888725.             
000000     03  �ݒ�l�R�R�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                10518300.             
000000     03  �ݒ�l�R�S�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                13884156.             
000000     03  �ݒ�l�R�T�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                18156204.             
000000     03  �ݒ�l�R�U�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                23535820.             
000000     03  �ݒ�l�R�V�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                30260340.             
000000     03  �ݒ�l�R�W�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                38608020.             
000000     03  �ݒ�l�R�X�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                48903492.             
000000     03  �ݒ�l�S�O�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                61523748.             
000000     03  �ݒ�l�S�P�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                76904685.             
000000     03  �ݒ�l�S�Q�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                95548245.             
000000     03  �ݒ�l�S�R�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               118030185.             
000000     03  �ݒ�l�S�S�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               145008513.             
000000     03  �ݒ�l�S�T�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               177232627.             
000000     03  �ݒ�l�S�U�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               215553195.             
000000     03  �ݒ�l�S�V�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               260932815.             
000000     03  �ݒ�l�S�W�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               314457495.             
000000     03  �ݒ�l�S�X�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               377348994.             
000000     03  �ݒ�l�T�O�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               450978066.             
000000     03  �ݒ�l�T�P�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               536878650.             
000000     03  �ݒ�l�T�Q�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               636763050.             
000000     03  �ݒ�l�T�R�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               752538150.             
000000     03  �ݒ�l�T�S�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               886322710.             
000000     03  �ݒ�l�T�T�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1040465790.             
000000     03  �ݒ�l�T�U�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1217566350.             
000000     03  �ݒ�l�T�V�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1420494075.             
000000     03  �ݒ�l�T�W�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1652411475.             
000000     03  �ݒ�l�T�X�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1916797311.             
000000     03  �ݒ�l�U�O�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              2217471399.             
000000     03  �ݒ�l�U�P�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              2558620845.             
000000     03  �ݒ�l�U�Q�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              2944827765.             
000000     03  �ݒ�l�U�R�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              3381098545.             
000000     03  �ݒ�l�U�S�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              3872894697.             
000000     03  �ݒ�l�U�T�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              4426165368.             
000000     03  �ݒ�l�U�U�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              5047381560.             
000000     03  �ݒ�l�U�V�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              5743572120.             
000000     03  �ݒ�l�U�W�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              6522361560.             
000000     03  �ݒ�l�U�X�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              7392009768.             
000000     03  �ݒ�l�V�O�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              8361453672.             
000000     03  �ݒ�l�V�P�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              9440350920.             
000000     03  �ݒ�l�V�Q�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             10639125640.             
000000     03  �ݒ�l�V�R�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             11969016345.             
000000     03  �ݒ�l�V�S�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             13442126049.             
000000     03  �ݒ�l�V�T�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             15071474661.             
000000     03  �ݒ�l�V�U�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             16871053725.             
000000     03  �ݒ�l�V�V�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             18855883575.             
000000     03  �ݒ�l�V�W�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             21042072975.             
000000     03  �ݒ�l�V�X�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             23446881315.             
000000     03  �ݒ�l�W�O�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             26088783435.             
000000     03  �ݒ�l�W�P�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             28987537150.             
000000     03  �ݒ�l�W�Q�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             32164253550.             
000000     03  �ݒ�l�W�R�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             35641470150.             
000000     03  �ݒ�l�W�S�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             39443226966.             
000000     03  �ݒ�l�W�T�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             43595145594.             
000000     03  �ݒ�l�W�U�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             48124511370.             
000000     03  �ݒ�l�W�V�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             53060358690.             
000000     03  �ݒ�l�W�W�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             58433559570.             
000000     03  �ݒ�l�W�X�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             64276915527.             
000000     03  �ݒ�l�X�O�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             70625252863.             
000000     03  �ݒ�l�X�P�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             77515521435.             
000000     03  �ݒ�l�X�Q�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             84986896995.             
000000     03  �ݒ�l�X�R�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             93080887185.             
000000     03  �ݒ�l�X�S�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            101841441273.             
000000     03  �ݒ�l�X�T�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            111315063717.             
000000     03  �ݒ�l�X�U�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            121550931645.             
000000     03  �ݒ�l�X�V�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            132601016340.             
000000     03  �ݒ�l�X�W�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            144520208820.             
000000     03  �ݒ�l�X�X�^�O�W      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            157366449604.             
000000     03  �ݒ�l�O�P�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�Q�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�R�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�S�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�T�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�U�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�V�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�W�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�X�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�P�O�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       1.             
000000     03  �ݒ�l�P�P�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      10.             
000000     03  �ݒ�l�P�Q�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      55.             
000000     03  �ݒ�l�P�R�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     220.             
000000     03  �ݒ�l�P�S�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     715.             
000000     03  �ݒ�l�P�T�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    2002.             
000000     03  �ݒ�l�P�U�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    5005.             
000000     03  �ݒ�l�P�V�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   11440.             
000000     03  �ݒ�l�P�W�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   24310.             
000000     03  �ݒ�l�P�X�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   48620.             
000000     03  �ݒ�l�Q�O�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   92378.             
000000     03  �ݒ�l�Q�P�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  167960.             
000000     03  �ݒ�l�Q�Q�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  293930.             
000000     03  �ݒ�l�Q�R�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  497420.             
000000     03  �ݒ�l�Q�S�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  817190.             
000000     03  �ݒ�l�Q�T�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1307504.             
000000     03  �ݒ�l�Q�U�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 2042975.             
000000     03  �ݒ�l�Q�V�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 3124550.             
000000     03  �ݒ�l�Q�W�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 4686825.             
000000     03  �ݒ�l�Q�X�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 6906900.             
000000     03  �ݒ�l�R�O�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                10015005.             
000000     03  �ݒ�l�R�P�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                14307150.             
000000     03  �ݒ�l�R�Q�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                20160075.             
000000     03  �ݒ�l�R�R�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                28048800.             
000000     03  �ݒ�l�R�S�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                38567100.             
000000     03  �ݒ�l�R�T�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                52451256.             
000000     03  �ݒ�l�R�U�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                70607460.             
000000     03  �ݒ�l�R�V�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                94143280.             
000000     03  �ݒ�l�R�W�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               124403620.             
000000     03  �ݒ�l�R�X�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               163011640.             
000000     03  �ݒ�l�S�O�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               211915132.             
000000     03  �ݒ�l�S�P�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               273438880.             
000000     03  �ݒ�l�S�Q�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               350343565.             
000000     03  �ݒ�l�S�R�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               445891810.             
000000     03  �ݒ�l�S�S�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               563921995.             
000000     03  �ݒ�l�S�T�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               708930508.             
000000     03  �ݒ�l�S�U�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               886163135.             
000000     03  �ݒ�l�S�V�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1101716330.             
000000     03  �ݒ�l�S�W�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1362649145.             
000000     03  �ݒ�l�S�X�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1677106640.             
000000     03  �ݒ�l�T�O�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              2054455634.             
000000     03  �ݒ�l�T�P�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              2505433700.             
000000     03  �ݒ�l�T�Q�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              3042312350.             
000000     03  �ݒ�l�T�R�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              3679075400.             
000000     03  �ݒ�l�T�S�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              4431613550.             
000000     03  �ݒ�l�T�T�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              5317936260.             
000000     03  �ݒ�l�T�U�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              6358402050.             
000000     03  �ݒ�l�T�V�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              7575968400.             
000000     03  �ݒ�l�T�W�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              8996462475.             
000000     03  �ݒ�l�T�X�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             10648873950.             
000000     03  �ݒ�l�U�O�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             12565671261.             
000000     03  �ݒ�l�U�P�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             14783142660.             
000000     03  �ݒ�l�U�Q�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             17341763505.             
000000     03  �ݒ�l�U�R�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             20286591270.             
000000     03  �ݒ�l�U�S�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             23667689815.             
000000     03  �ݒ�l�U�T�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             27540584512.             
000000     03  �ݒ�l�U�U�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             31966749880.             
000000     03  �ݒ�l�U�V�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             37014131440.             
000000     03  �ݒ�l�U�W�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             42757703560.             
000000     03  �ݒ�l�U�X�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             49280065120.             
000000     03  �ݒ�l�V�O�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             56672074888.             
000000     03  �ݒ�l�V�P�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             65033528560.             
000000     03  �ݒ�l�V�Q�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             74473879480.             
000000     03  �ݒ�l�V�R�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             85113005120.             
000000     03  �ݒ�l�V�S�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             97082021465.             
000000     03  �ݒ�l�V�T�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            110524147514.             
000000     03  �ݒ�l�V�U�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            125595622175.             
000000     03  �ݒ�l�V�V�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            142466675900.             
000000     03  �ݒ�l�V�W�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            161322559475.             
000000     03  �ݒ�l�V�X�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            182364632450.             
000000     03  �ݒ�l�W�O�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            205811513765.             
000000     03  �ݒ�l�W�P�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            231900297200.             
000000     03  �ݒ�l�W�Q�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            260887834350.             
000000     03  �ݒ�l�W�R�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            293052087900.             
000000     03  �ݒ�l�W�S�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            328693558050.             
000000     03  �ݒ�l�W�T�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            368136785016.             
000000     03  �ݒ�l�W�U�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            411731930610.             
000000     03  �ݒ�l�W�V�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            459856441980.             
000000     03  �ݒ�l�W�W�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            512916800670.             
000000     03  �ݒ�l�W�X�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            571350360240.             
000000     03  �ݒ�l�X�O�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            635627275767.             
000000     03  �ݒ�l�X�P�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            706252528630.             
000000     03  �ݒ�l�X�Q�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            783768050065.             
000000     03  �ݒ�l�X�R�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            868754947060.             
000000     03  �ݒ�l�X�S�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            961835834245.             
000000     03  �ݒ�l�X�T�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           1063677275518.             
000000     03  �ݒ�l�X�U�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           1174992339235.             
000000     03  �ݒ�l�X�V�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           1296543270880.             
000000     03  �ݒ�l�X�W�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           1429144287220.             
000000     03  �ݒ�l�X�X�^�O�X      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           1573664496040.             
000000     03  �ݒ�l�O�P�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�Q�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�R�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�S�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�T�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�U�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�V�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�W�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�X�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�P�O�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�P�P�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       1.             
000000     03  �ݒ�l�P�Q�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      11.             
000000     03  �ݒ�l�P�R�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      66.             
000000     03  �ݒ�l�P�S�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     286.             
000000     03  �ݒ�l�P�T�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1001.             
000000     03  �ݒ�l�P�U�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    3003.             
000000     03  �ݒ�l�P�V�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    8008.             
000000     03  �ݒ�l�P�W�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   19448.             
000000     03  �ݒ�l�P�X�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   43758.             
000000     03  �ݒ�l�Q�O�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   92378.             
000000     03  �ݒ�l�Q�P�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  184756.             
000000     03  �ݒ�l�Q�Q�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  352716.             
000000     03  �ݒ�l�Q�R�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  646646.             
000000     03  �ݒ�l�Q�S�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1144066.             
000000     03  �ݒ�l�Q�T�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1961256.             
000000     03  �ݒ�l�Q�U�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 3268760.             
000000     03  �ݒ�l�Q�V�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 5311735.             
000000     03  �ݒ�l�Q�W�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 8436285.             
000000     03  �ݒ�l�Q�X�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                13123110.             
000000     03  �ݒ�l�R�O�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                20030010.             
000000     03  �ݒ�l�R�P�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                30045015.             
000000     03  �ݒ�l�R�Q�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                44352165.             
000000     03  �ݒ�l�R�R�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                64512240.             
000000     03  �ݒ�l�R�S�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                92561040.             
000000     03  �ݒ�l�R�T�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               131128140.             
000000     03  �ݒ�l�R�U�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               183579396.             
000000     03  �ݒ�l�R�V�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               254186856.             
000000     03  �ݒ�l�R�W�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               348330136.             
000000     03  �ݒ�l�R�X�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               472733756.             
000000     03  �ݒ�l�S�O�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               635745396.             
000000     03  �ݒ�l�S�P�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               847660528.             
000000     03  �ݒ�l�S�Q�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1121099408.             
000000     03  �ݒ�l�S�R�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1471442973.             
000000     03  �ݒ�l�S�S�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1917334783.             
000000     03  �ݒ�l�S�T�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              2481256778.             
000000     03  �ݒ�l�S�U�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              3190187286.             
000000     03  �ݒ�l�S�V�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              4076350421.             
000000     03  �ݒ�l�S�W�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              5178066751.             
000000     03  �ݒ�l�S�X�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              6540715896.             
000000     03  �ݒ�l�T�O�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              8217822536.             
000000     03  �ݒ�l�T�P�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             10272278170.             
000000     03  �ݒ�l�T�Q�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             12777711870.             
000000     03  �ݒ�l�T�R�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             15820024220.             
000000     03  �ݒ�l�T�S�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             19499099620.             
000000     03  �ݒ�l�T�T�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             23930713170.             
000000     03  �ݒ�l�T�U�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             29248649430.             
000000     03  �ݒ�l�T�V�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             35607051480.             
000000     03  �ݒ�l�T�W�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             43183019880.             
000000     03  �ݒ�l�T�X�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             52179482355.             
000000     03  �ݒ�l�U�O�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             62828356305.             
000000     03  �ݒ�l�U�P�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             75394027566.             
000000     03  �ݒ�l�U�Q�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             90177170226.             
000000     03  �ݒ�l�U�R�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            107518933731.             
000000     03  �ݒ�l�U�S�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            127805525001.             
000000     03  �ݒ�l�U�T�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            151473214816.             
000000     03  �ݒ�l�U�U�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            179013799328.             
000000     03  �ݒ�l�U�V�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            210980549208.             
000000     03  �ݒ�l�U�W�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            247994680648.             
000000     03  �ݒ�l�U�X�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            290752384208.             
000000     03  �ݒ�l�V�O�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            340032449328.             
000000     03  �ݒ�l�V�P�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            396704524216.             
000000     03  �ݒ�l�V�Q�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            461738052776.             
000000     03  �ݒ�l�V�R�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            536211932256.             
000000     03  �ݒ�l�V�S�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            621324937376.             
000000     03  �ݒ�l�V�T�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            718406958841.             
000000     03  �ݒ�l�V�U�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            828931106355.             
000000     03  �ݒ�l�V�V�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            954526728530.             
000000     03  �ݒ�l�V�W�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           1096993404430.             
000000     03  �ݒ�l�V�X�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           1258315963905.             
000000     03  �ݒ�l�W�O�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           1440680596355.             
000000     03  �ݒ�l�W�P�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           1646492110120.             
000000     03  �ݒ�l�W�Q�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           1878392407320.             
000000     03  �ݒ�l�W�R�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           2139280241670.             
000000     03  �ݒ�l�W�S�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           2432332329570.             
000000     03  �ݒ�l�W�T�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           2761025887620.             
000000     03  �ݒ�l�W�U�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           3129162672636.             
000000     03  �ݒ�l�W�V�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           3540894603246.             
000000     03  �ݒ�l�W�W�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           4000751045226.             
000000     03  �ݒ�l�W�X�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           4513667845896.             
000000     03  �ݒ�l�X�O�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           5085018206136.             
000000     03  �ݒ�l�X�P�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           5720645481903.             
000000     03  �ݒ�l�X�Q�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           6426898010533.             
000000     03  �ݒ�l�X�R�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           7210666060598.             
000000     03  �ݒ�l�X�S�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           8079421007658.             
000000     03  �ݒ�l�X�T�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           9041256841903.             
000000     03  �ݒ�l�X�U�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          10104934117421.             
000000     03  �ݒ�l�X�V�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          11279926456656.             
000000     03  �ݒ�l�X�W�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          12576469727536.             
000000     03  �ݒ�l�X�X�^�P�O      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          14005614014756.             
000000     03  �ݒ�l�O�P�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�Q�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�R�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�S�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�T�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�U�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�V�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�W�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�X�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�P�O�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�P�P�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�P�Q�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       1.             
000000     03  �ݒ�l�P�R�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      12.             
000000     03  �ݒ�l�P�S�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      78.             
000000     03  �ݒ�l�P�T�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     364.             
000000     03  �ݒ�l�P�U�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1365.             
000000     03  �ݒ�l�P�V�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    4368.             
000000     03  �ݒ�l�P�W�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   12376.             
000000     03  �ݒ�l�P�X�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   31824.             
000000     03  �ݒ�l�Q�O�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   75582.             
000000     03  �ݒ�l�Q�P�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  167960.             
000000     03  �ݒ�l�Q�Q�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  352716.             
000000     03  �ݒ�l�Q�R�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  705432.             
000000     03  �ݒ�l�Q�S�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1352078.             
000000     03  �ݒ�l�Q�T�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 2496144.             
000000     03  �ݒ�l�Q�U�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 4457400.             
000000     03  �ݒ�l�Q�V�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 7726160.             
000000     03  �ݒ�l�Q�W�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                13037895.             
000000     03  �ݒ�l�Q�X�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                21474180.             
000000     03  �ݒ�l�R�O�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                34597290.             
000000     03  �ݒ�l�R�P�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                54627300.             
000000     03  �ݒ�l�R�Q�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                84672315.             
000000     03  �ݒ�l�R�R�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               129024480.             
000000     03  �ݒ�l�R�S�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               193536720.             
000000     03  �ݒ�l�R�T�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               286097760.             
000000     03  �ݒ�l�R�U�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               417225900.             
000000     03  �ݒ�l�R�V�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               600805296.             
000000     03  �ݒ�l�R�W�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               854992152.             
000000     03  �ݒ�l�R�X�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1203322288.             
000000     03  �ݒ�l�S�O�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1676056044.             
000000     03  �ݒ�l�S�P�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              2311801440.             
000000     03  �ݒ�l�S�Q�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              3159461968.             
000000     03  �ݒ�l�S�R�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              4280561376.             
000000     03  �ݒ�l�S�S�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              5752004349.             
000000     03  �ݒ�l�S�T�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              7669339132.             
000000     03  �ݒ�l�S�U�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             10150595910.             
000000     03  �ݒ�l�S�V�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             13340783196.             
000000     03  �ݒ�l�S�W�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             17417133617.             
000000     03  �ݒ�l�S�X�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             22595200368.             
000000     03  �ݒ�l�T�O�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             29135916264.             
000000     03  �ݒ�l�T�P�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             37353738800.             
000000     03  �ݒ�l�T�Q�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             47626016970.             
000000     03  �ݒ�l�T�R�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             60403728840.             
000000     03  �ݒ�l�T�S�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             76223753060.             
000000     03  �ݒ�l�T�T�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             95722852680.             
000000     03  �ݒ�l�T�U�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            119653565850.             
000000     03  �ݒ�l�T�V�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            148902215280.             
000000     03  �ݒ�l�T�W�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            184509266760.             
000000     03  �ݒ�l�T�X�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            227692286640.             
000000     03  �ݒ�l�U�O�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            279871768995.             
000000     03  �ݒ�l�U�P�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            342700125300.             
000000     03  �ݒ�l�U�Q�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            418094152866.             
000000     03  �ݒ�l�U�R�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            508271323092.             
000000     03  �ݒ�l�U�S�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            615790256823.             
000000     03  �ݒ�l�U�T�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            743595781824.             
000000     03  �ݒ�l�U�U�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            895068996640.             
000000     03  �ݒ�l�U�V�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           1074082795968.             
000000     03  �ݒ�l�U�W�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           1285063345176.             
000000     03  �ݒ�l�U�X�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           1533058025824.             
000000     03  �ݒ�l�V�O�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           1823810410032.             
000000     03  �ݒ�l�V�P�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           2163842859360.             
000000     03  �ݒ�l�V�Q�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           2560547383576.             
000000     03  �ݒ�l�V�R�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           3022285436352.             
000000     03  �ݒ�l�V�S�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           3558497368608.             
000000     03  �ݒ�l�V�T�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           4179822305984.             
000000     03  �ݒ�l�V�U�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           4898229264825.             
000000     03  �ݒ�l�V�V�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           5727160371180.             
000000     03  �ݒ�l�V�W�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           6681687099710.             
000000     03  �ݒ�l�V�X�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           7778680504140.             
000000     03  �ݒ�l�W�O�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           9036996468045.             
000000     03  �ݒ�l�W�P�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          10477677064400.             
000000     03  �ݒ�l�W�Q�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          12124169174520.             
000000     03  �ݒ�l�W�R�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          14002561581840.             
000000     03  �ݒ�l�W�S�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          16141841823510.             
000000     03  �ݒ�l�W�T�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          18574174153080.             
000000     03  �ݒ�l�W�U�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          21335200040700.             
000000     03  �ݒ�l�W�V�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          24464362713336.             
000000     03  �ݒ�l�W�W�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          28005257316582.             
000000     03  �ݒ�l�W�X�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          32006008361808.             
000000     03  �ݒ�l�X�O�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          36519676207704.             
000000     03  �ݒ�l�X�P�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          41604694413840.             
000000     03  �ݒ�l�X�Q�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          47325339895743.             
000000     03  �ݒ�l�X�R�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          53752237906276.             
000000     03  �ݒ�l�X�S�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          60962903966874.             
000000     03  �ݒ�l�X�T�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          69042324974532.             
000000     03  �ݒ�l�X�U�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          78083581816435.             
000000     03  �ݒ�l�X�V�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          88188515933856.             
000000     03  �ݒ�l�X�W�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          99468442390512.             
000000     03  �ݒ�l�X�X�^�P�P      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE         112044912118048.             
000000     03  �ݒ�l�O�P�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�Q�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�R�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�S�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�T�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�U�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�V�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�W�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�O�X�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�P�O�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�P�P�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�P�Q�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  �ݒ�l�P�R�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       1.             
000000     03  �ݒ�l�P�S�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      13.             
000000     03  �ݒ�l�P�T�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      91.             
000000     03  �ݒ�l�P�U�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     455.             
000000     03  �ݒ�l�P�V�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1820.             
000000     03  �ݒ�l�P�W�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    6188.             
000000     03  �ݒ�l�P�X�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   18564.             
000000     03  �ݒ�l�Q�O�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   50388.             
000000     03  �ݒ�l�Q�P�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  125970.             
000000     03  �ݒ�l�Q�Q�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  293930.             
000000     03  �ݒ�l�Q�R�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  646646.             
000000     03  �ݒ�l�Q�S�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1352078.             
000000     03  �ݒ�l�Q�T�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 2704156.             
000000     03  �ݒ�l�Q�U�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 5200300.             
000000     03  �ݒ�l�Q�V�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 9657700.             
000000     03  �ݒ�l�Q�W�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                17383860.             
000000     03  �ݒ�l�Q�X�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                30421755.             
000000     03  �ݒ�l�R�O�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                51895935.             
000000     03  �ݒ�l�R�P�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                86493225.             
000000     03  �ݒ�l�R�Q�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               141120525.             
000000     03  �ݒ�l�R�R�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               225792840.             
000000     03  �ݒ�l�R�S�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               354817320.             
000000     03  �ݒ�l�R�T�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               548354040.             
000000     03  �ݒ�l�R�U�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               834451800.             
000000     03  �ݒ�l�R�V�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1251677700.             
000000     03  �ݒ�l�R�W�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1852482996.             
000000     03  �ݒ�l�R�X�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              2707475148.             
000000     03  �ݒ�l�S�O�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              3910797436.             
000000     03  �ݒ�l�S�P�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              5586853480.             
000000     03  �ݒ�l�S�Q�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              7898654920.             
000000     03  �ݒ�l�S�R�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             11058116888.             
000000     03  �ݒ�l�S�S�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             15338678264.             
000000     03  �ݒ�l�S�T�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             21090682613.             
000000     03  �ݒ�l�S�U�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             28760021745.             
000000     03  �ݒ�l�S�V�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             38910617655.             
000000     03  �ݒ�l�S�W�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             52251400851.             
000000     03  �ݒ�l�S�X�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             69668534468.             
000000     03  �ݒ�l�T�O�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             92263734836.             
000000     03  �ݒ�l�T�P�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            121399651100.             
000000     03  �ݒ�l�T�Q�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            158753389900.             
000000     03  �ݒ�l�T�R�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            206379406870.             
000000     03  �ݒ�l�T�S�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            266783135710.             
000000     03  �ݒ�l�T�T�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            343006888770.             
000000     03  �ݒ�l�T�U�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            438729741450.             
000000     03  �ݒ�l�T�V�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            558383307300.             
000000     03  �ݒ�l�T�W�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            707285522580.             
000000     03  �ݒ�l�T�X�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            891794789340.             
000000     03  �ݒ�l�U�O�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           1119487075980.             
000000     03  �ݒ�l�U�P�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           1399358844975.             
000000     03  �ݒ�l�U�Q�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           1742058970275.             
000000     03  �ݒ�l�U�R�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           2160153123141.             
000000     03  �ݒ�l�U�S�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           2668424446233.             
000000     03  �ݒ�l�U�T�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           3284214703056.             
000000     03  �ݒ�l�U�U�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           4027810484880.             
000000     03  �ݒ�l�U�V�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           4922879481520.             
000000     03  �ݒ�l�U�W�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           5996962277488.             
000000     03  �ݒ�l�U�X�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           7282025622664.             
000000     03  �ݒ�l�V�O�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           8815083648488.             
000000     03  �ݒ�l�V�P�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          10638894058520.             
000000     03  �ݒ�l�V�Q�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          12802736917880.             
000000     03  �ݒ�l�V�R�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          15363284301456.             
000000     03  �ݒ�l�V�S�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          18385569737808.             
000000     03  �ݒ�l�V�T�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          21944067106416.             
000000     03  �ݒ�l�V�U�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          26123889412400.             
000000     03  �ݒ�l�V�V�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          31022118677225.             
000000     03  �ݒ�l�V�W�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          36749279048405.             
000000     03  �ݒ�l�V�X�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          43430966148115.             
000000     03  �ݒ�l�W�O�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          51209646652255.             
000000     03  �ݒ�l�W�P�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          60246643120300.             
000000     03  �ݒ�l�W�Q�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          70724320184700.             
000000     03  �ݒ�l�W�R�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          82848489359220.             
000000     03  �ݒ�l�W�S�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          96851050941060.             
000000     03  �ݒ�l�W�T�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE         112992892764570.             
000000     03  �ݒ�l�W�U�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE         131567066917650.             
000000     03  �ݒ�l�W�V�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE         152902266958350.             
000000     03  �ݒ�l�W�W�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE         177366629671686.             
000000     03  �ݒ�l�W�X�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE         205371886988268.             
000000     03  �ݒ�l�X�O�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE         237377895350076.             
000000     03  �ݒ�l�X�P�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE         273897571557780.             
000000     03  �ݒ�l�X�Q�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE         315502265971620.             
000000     03  �ݒ�l�X�R�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE         362827605867363.             
000000     03  �ݒ�l�X�S�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE         416579843773639.             
000000     03  �ݒ�l�X�T�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE         477542747740513.             
000000     03  �ݒ�l�X�U�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE         546585072715045.             
000000     03  �ݒ�l�X�V�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE         624668654531480.             
000000     03  �ݒ�l�X�W�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE         712857170465336.             
000000     03  �ݒ�l�X�X�^�P�Q      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE         812325612855848.             
000000 01  �h�m�c�d�w�萔�e�[�u��    REDEFINES  ,                                          
000000                               �C���f�b�N�X�萔�e�[�u��.                              
000000     03  �h�m�c�d�w�z��P      OCCURS  12.                                        
000000         05  �h�m�c�d�w�z��Q  OCCURS  99.                                        
000000             07  �h�m�c�d�w    PIC  9(15)  USAGE COMP-3.                       
000000 01  �r�b�g��萔�e�[�u��.                                                          
000000     03  �����O�P              PIC  X(13)  VALUE                              
000000                               ""80000000000000000000000000"".            
000000     03  �����O�Q              PIC  X(13)  VALUE                              
000000                               ""40000000000000000000000000"".            
000000     03  �����O�R              PIC  X(13)  VALUE                              
000000                               ""20000000000000000000000000"".            
000000     03  �����O�S              PIC  X(13)  VALUE                              
000000                               ""10000000000000000000000000"".            
000000     03  �����O�T              PIC  X(13)  VALUE                              
000000                               ""08000000000000000000000000"".            
000000     03  �����O�U              PIC  X(13)  VALUE                              
000000                               ""04000000000000000000000000"".            
000000     03  �����O�V              PIC  X(13)  VALUE                              
000000                               ""02000000000000000000000000"".            
000000     03  �����O�W              PIC  X(13)  VALUE                              
000000                               ""01000000000000000000000000"".            
000000     03  �����O�X              PIC  X(13)  VALUE                              
000000                               ""00800000000000000000000000"".            
000000     03  �����P�O              PIC  X(13)  VALUE                              
000000                               ""00400000000000000000000000"".            
000000     03  �����P�P              PIC  X(13)  VALUE                              
000000                               ""00200000000000000000000000"".            
000000     03  �����P�Q              PIC  X(13)  VALUE                              
000000                               ""00100000000000000000000000"".            
000000     03  �����P�R              PIC  X(13)  VALUE                              
000000                               ""00080000000000000000000000"".            
000000     03  �����P�S              PIC  X(13)  VALUE                              
000000                               ""00040000000000000000000000"".            
000000     03  �����P�T              PIC  X(13)  VALUE                              
000000                               ""00020000000000000000000000"".            
000000     03  �����P�U              PIC  X(13)  VALUE                              
000000                               ""00010000000000000000000000"".            
000000     03  �����P�V              PIC  X(13)  VALUE                              
000000                               ""00008000000000000000000000"".            
000000     03  �����P�W              PIC  X(13)  VALUE                              
000000                               ""00004000000000000000000000"".            
000000     03  �����P�X              PIC  X(13)  VALUE                              
000000                               ""00002000000000000000000000"".            
000000     03  �����Q�O              PIC  X(13)  VALUE                              
000000                               ""00001000000000000000000000"".            
000000     03  �����Q�P              PIC  X(13)  VALUE                              
000000                               ""00000800000000000000000000"".            
000000     03  �����Q�Q              PIC  X(13)  VALUE                              
000000                               ""00000400000000000000000000"".            
000000     03  �����Q�R              PIC  X(13)  VALUE                              
000000                               ""00000200000000000000000000"".            
000000     03  �����Q�S              PIC  X(13)  VALUE                              
000000                               ""00000100000000000000000000"".            
000000     03  �����Q�T              PIC  X(13)  VALUE                              
000000                               ""00000080000000000000000000"".            
000000     03  �����Q�U              PIC  X(13)  VALUE                              
000000                               ""00000040000000000000000000"".            
000000     03  �����Q�V              PIC  X(13)  VALUE                              
000000                               ""00000020000000000000000000"".            
000000     03  �����Q�W              PIC  X(13)  VALUE                              
000000                               ""00000010000000000000000000"".            
000000     03  �����Q�X              PIC  X(13)  VALUE                              
000000                               ""00000008000000000000000000"".            
000000     03  �����R�O              PIC  X(13)  VALUE                              
000000                               ""00000004000000000000000000"".            
000000     03  �����R�P              PIC  X(13)  VALUE                              
000000                               ""00000002000000000000000000"".            
000000     03  �����R�Q              PIC  X(13)  VALUE                              
000000                               ""00000001000000000000000000"".            
000000     03  �����R�R              PIC  X(13)  VALUE                              
000000                               ""00000000800000000000000000"".            
000000     03  �����R�S              PIC  X(13)  VALUE                              
000000                               ""00000000400000000000000000"".            
000000     03  �����R�T              PIC  X(13)  VALUE                              
000000                               ""00000000200000000000000000"".            
000000     03  �����R�U              PIC  X(13)  VALUE                              
000000                               ""00000000100000000000000000"".            
000000     03  �����R�V              PIC  X(13)  VALUE                              
000000                               ""00000000080000000000000000"".            
000000     03  �����R�W              PIC  X(13)  VALUE                              
000000                               ""00000000040000000000000000"".            
000000     03  �����R�X              PIC  X(13)  VALUE                              
000000                               ""00000000020000000000000000"".            
000000     03  �����S�O              PIC  X(13)  VALUE                              
000000                               ""00000000010000000000000000"".            
000000     03  �����S�P              PIC  X(13)  VALUE                              
000000                               ""00000000008000000000000000"".            
000000     03  �����S�Q              PIC  X(13)  VALUE                              
000000                               ""00000000004000000000000000"".            
000000     03  �����S�R              PIC  X(13)  VALUE                              
000000                               ""00000000002000000000000000"".            
000000     03  �����S�S              PIC  X(13)  VALUE                              
000000                               ""00000000001000000000000000"".            
000000     03  �����S�T              PIC  X(13)  VALUE                              
000000                               ""00000000000800000000000000"".            
000000     03  �����S�U              PIC  X(13)  VALUE                              
000000                               ""00000000000400000000000000"".            
000000     03  �����S�V              PIC  X(13)  VALUE                              
000000                               ""00000000000200000000000000"".            
000000     03  �����S�W              PIC  X(13)  VALUE                              
000000                               ""00000000000100000000000000"".            
000000     03  �����S�X              PIC  X(13)  VALUE                              
000000                               ""00000000000080000000000000"".            
000000     03  �����T�O              PIC  X(13)  VALUE                              
000000                               ""00000000000040000000000000"".            
000000     03  �����T�P              PIC  X(13)  VALUE                              
000000                               ""00000000000020000000000000"".            
000000     03  �����T�Q              PIC  X(13)  VALUE                              
000000                               ""00000000000010000000000000"".            
000000     03  �����T�R              PIC  X(13)  VALUE                              
000000                               ""00000000000008000000000000"".            
000000     03  �����T�S              PIC  X(13)  VALUE                              
000000                               ""00000000000004000000000000"".            
000000     03  �����T�T              PIC  X(13)  VALUE                              
000000                               ""00000000000002000000000000"".            
000000     03  �����T�U              PIC  X(13)  VALUE                              
000000                               ""00000000000001000000000000"".            
000000     03  �����T�V              PIC  X(13) VALUE                               
000000                               ""00000000000000800000000000"".            
000000     03  �����T�W              PIC  X(13) VALUE                               
000000                               ""00000000000000400000000000"".            
000000     03  �����T�X              PIC  X(13) VALUE                               
000000                               ""00000000000000200000000000"".            
000000     03  �����U�O              PIC  X(13) VALUE                               
000000                               ""00000000000000100000000000"".            
000000     03  �����U�P              PIC  X(13) VALUE                               
000000                               ""00000000000000080000000000"".            
000000     03  �����U�Q              PIC  X(13) VALUE                               
000000                               ""00000000000000040000000000"".            
000000     03  �����U�R              PIC  X(13) VALUE                               
000000                               ""00000000000000020000000000"".            
000000     03  �����U�S              PIC  X(13) VALUE                               
000000                               ""00000000000000010000000000"".            
000000     03  �����U�T              PIC  X(13) VALUE                               
000000                               ""00000000000000008000000000"".            
000000     03  �����U�U              PIC  X(13) VALUE                               
000000                               ""00000000000000004000000000"".            
000000     03  �����U�V              PIC  X(13) VALUE                               
000000                               ""00000000000000002000000000"".            
000000     03  �����U�W              PIC  X(13) VALUE                               
000000                               ""00000000000000001000000000"".            
000000     03  �����U�X              PIC  X(13) VALUE                               
000000                               ""00000000000000000800000000"".            
000000     03  �����V�O              PIC  X(13) VALUE                               
000000                               ""00000000000000000400000000"".            
000000     03  �����V�P              PIC  X(13) VALUE                               
000000                               ""00000000000000000200000000"".            
000000     03  �����V�Q              PIC  X(13) VALUE                               
000000                               ""00000000000000000100000000"".            
000000     03  �����V�R              PIC  X(13) VALUE                               
000000                               ""00000000000000000080000000"".            
000000     03  �����V�S              PIC  X(13) VALUE                               
000000                               ""00000000000000000040000000"".            
000000     03  �����V�T              PIC  X(13) VALUE                               
000000                               ""00000000000000000020000000"".            
000000     03  �����V�U              PIC  X(13) VALUE                               
000000                               ""00000000000000000010000000"".            
000000     03  �����V�V              PIC  X(13) VALUE                               
000000                               ""00000000000000000008000000"".            
000000     03  �����V�W              PIC  X(13) VALUE                               
000000                               ""00000000000000000004000000"".            
000000     03  �����V�X              PIC  X(13) VALUE                               
000000                               ""00000000000000000002000000"".            
000000     03  �����W�O              PIC  X(13) VALUE                               
000000                               ""00000000000000000001000000"".            
000000     03  �����W�P              PIC  X(13) VALUE                               
000000                               ""00000000000000000000800000"".            
000000     03  �����W�Q              PIC  X(13) VALUE                               
000000                               ""00000000000000000000400000"".            
000000     03  �����W�R              PIC  X(13) VALUE                               
000000                               ""00000000000000000000200000"".            
000000     03  �����W�S              PIC  X(13) VALUE                               
000000                               ""00000000000000000000100000"".            
000000     03  �����W�T              PIC  X(13) VALUE                               
000000                               ""00000000000000000000080000"".            
000000     03  �����W�U              PIC  X(13) VALUE                               
000000                               ""00000000000000000000040000"".            
000000     03  �����W�V              PIC  X(13) VALUE                               
000000                               ""00000000000000000000020000"".            
000000     03  �����W�W              PIC  X(13) VALUE                               
000000                               ""00000000000000000000010000"".            
000000     03  �����W�X              PIC  X(13) VALUE                               
000000                               ""00000000000000000000008000"".            
000000     03  �����X�O              PIC  X(13) VALUE                               
000000                               ""00000000000000000000004000"".            
000000     03  �����X�P              PIC  X(13) VALUE                               
000000                               ""00000000000000000000002000"".            
000000     03  �����X�Q              PIC  X(13) VALUE                               
000000                               ""00000000000000000000001000"".            
000000     03  �����X�R              PIC  X(13) VALUE                               
000000                               ""00000000000000000000000800"".            
000000     03  �����X�S              PIC  X(13) VALUE                               
000000                               ""00000000000000000000000400"".            
000000     03  �����X�T              PIC  X(13) VALUE                               
000000                               ""00000000000000000000000200"".            
000000     03  �����X�U              PIC  X(13) VALUE                               
000000                               ""00000000000000000000000100"".            
000000     03  �����X�V              PIC  X(13) VALUE                               
000000                               ""00000000000000000000000080"".            
000000     03  �����X�W              PIC  X(13) VALUE                               
000000                               ""00000000000000000000000040"".            
000000     03  �����X�X              PIC  X(13) VALUE                               
000000                               ""00000000000000000000000020"".            
000000 01  �a�h�s��萔�e�[�u��      REDEFINES  ,                                         
000000                               �r�b�g��萔�e�[�u��.                                
000000     03  �a�h�s�z��            OCCURS  99.                                     
000000         05  �a�h�s            PIC  X(13).                                   
000000 01  WK-AREA.                                                             
000000     03  WK-CNT1                   USAGE COMP-1.                          
000000     03  WK-CNT2                   USAGE COMP-1.                          
000000     03  WK-ERR                    PIC  9(01).                            
000000     03  �v�j����                  PIC  X(24).                                
000000     03  �v�j�����q                REDEFINES  �v�j����.                            
000000         05  �v�j�\�������ҏW      OCCURS  12.                                    
000000             07  �v�j�\������      PIC  9(02).                                  
000000     03  �v�j�g������              PIC  X(36).                                  
000000     03  �v�j�g�������q            REDEFINES  �v�j�g������.                            
000000         05  �v�j�g���\�������ҏW  OCCURS  12.                                      
000000             07  �v�j�g���\������  PIC  9(03).                                    
000000     03  �v�j�C���f�b�N�X          PIC  9(15) USAGE COMP-3.                       
000000     03  �v�j�C���f�b�N�X�Q        PIC  9(15) USAGE COMP-3.                        
000000     03  �v�j�C���f�b�N�X�R        PIC  9(15) USAGE COMP-3.                        
000000     03  �v�j�C���f�b�N�X�S        PIC  9(15) USAGE COMP-3.                        
000000     03  �v�j�C���f�b�N�X�T        PIC  9(15) USAGE COMP-3.                        
000000     03  �v�j�C���f�b�N�X�U        PIC  9(15) USAGE COMP-3.                        
000000     03  �v�j�C���f�b�N�X�V        PIC  9(15) USAGE COMP-3.                        
000000     03  �v�j�C���f�b�N�X�W        PIC  9(15) USAGE COMP-3.                        
000000     03  �v�j�r�b�g��              PIC  X(13).                                  
000000     03  �v�j��v����              PIC  9(02).                                  
000000     03  �v�j��v�ʒu              PIC  X(24).                                  
000000     03  �`                        PIC  9(03).                             
000000     03  �a                        PIC  9(03).                             
000000     03  �h                        PIC  9(03).                             
000000     03  �i                        PIC  9(03).                             
000000     03  �j                        PIC  9(03).                             
000000     03  �k                        PIC  9(03).                             
000000     03  �l                        PIC  9(03).                             
000000     03  �m                        PIC  9(03).                             
000000     03  �n                        PIC  9(03).                             
000000     03  �o                        PIC  9(03).                             
000000     03  �p                        PIC  9(03).                             
000000     03  �q                        PIC  9(03).
      *20141029�ǉ��J�n
       01  NUMC-PARAM.                                                          
           COPY CLNUMC.
      *20141029�ǉ��I��
000000 LINKAGE SECTION.                                                         
000000 01  CLIDXC-PARAM.                                                        
000000     COPY CLIDXC .                                                        
000000 PROCEDURE DIVISION USING CLIDXC-PARAM .                                  
000000 MAIN-RTN .                                                               
000000     PERFORM S000-RTN THRU CX00002                                        
000000     PERFORM P000-RTN THRU CX00003 .                                      
000000 CX00001. EXIT PROGRAM.                                                   
           DISPLAY "CX00001" UPON CONSOLE
000000 S000-RTN .                                                               
000000     MOVE ZERO TO WK-ERR .                                                
000000     IF NOT(IDXC-BUNSI = 4 OR 5)GO TO CX00017.                            
000000           CONTINUE.                                                      
000000     GO TO CX00018.                                                       
000000 CX00017. IF NOT(IDXC-BUNSI = 6)GO TO CX00019.                            
           DISPLAY "CX00017" UPON CONSOLE
000000     IF NOT(IDXC-BUNBO > 67)GO TO CX00020.                                
000000     MOVE 1 TO WK-ERR .                                                   
000000 CX00020.                                                                 
           DISPLAY "CX00020" UPON CONSOLE
000000     GO TO CX00018.                                                       
000000 CX00019. IF NOT(IDXC-BUNSI = 7)GO TO CX00021.                            
           DISPLAY "CX00019" UPON CONSOLE
000000     IF NOT(IDXC-BUNBO > 50)GO TO CX00022.                                
000000     MOVE 1 TO WK-ERR .                                                   
000000 CX00022.                                                                 
           DISPLAY "CX00022" UPON CONSOLE
000000     GO TO CX00018.                                                       
000000 CX00021. IF NOT(IDXC-BUNSI = 8)GO TO CX00023.                            
           DISPLAY "CX00021" UPON CONSOLE
000000     IF NOT(IDXC-BUNBO > 41)GO TO CX00024.                                
000000     MOVE 1 TO WK-ERR .                                                   
000000 CX00024.                                                                 
           DISPLAY "CX00024" UPON CONSOLE
000000     GO TO CX00018.                                                       
000000 CX00023. IF NOT(IDXC-BUNSI = 9)GO TO CX00025.                            
           DISPLAY "CX00023" UPON CONSOLE
000000     IF NOT(IDXC-BUNBO > 36)GO TO CX00026.                                
000000     MOVE 1 TO WK-ERR .                                                   
000000 CX00026.                                                                 
           DISPLAY "CX00026" UPON CONSOLE
000000     GO TO CX00018.                                                       
000000 CX00025.                                                                 
           DISPLAY "CX00025" UPON CONSOLE
000000     MOVE 1 TO WK-ERR .                                                   
000000 CX00018.                                                                 
           DISPLAY "CX00018" UPON CONSOLE
000000     IF NOT(WK-ERR NOT = ZERO)GO TO CX00027. 
      *20141028�C���J�n                             
000000*           @ZCTABORT( MSGID  =  *SA206                                    
000000*                      PROGID =  HRATS010                                  
000000*                      CNT    =  01                                        
000000*                      TEXT1  =  IDXC-BUNSI                                
000000*                      TEXT2  =  IDXC-BUNBO   ); .
                  STOP RUN.                         
      *20141028�C���I��
000000 CX00027.                                                                 
000000     IF NOT( (IDXC-TYPE < 1) OR (IDXC-TYPE > 5))GO TO CX00028. 
      *20141028�C���J�n     
000000*           @ZCTABORT( MSGID  =  *SA207                                    
000000*                      PROGID =  HRATS010                                  
000000*                      CNT    =  02                                        
000000*                      TEXT1  =  IDXC-TYPE    ); .
                  STOP RUN.
      *20141028�C���I��                         
000000 CX00028.                                                                 
000000     MOVE ZERO TO �v�j����                                                    
000000     MOVE ZERO TO �v�j�g������                                                  
000000     MOVE ZERO TO �v�j�C���f�b�N�X                                                
000000     MOVE ZERO TO �v�j�C���f�b�N�X�Q                                               
000000     MOVE ZERO TO �v�j�C���f�b�N�X�R                                               
000000     MOVE ZERO TO �v�j�C���f�b�N�X�S                                               
000000     MOVE ZERO TO �v�j�C���f�b�N�X�T                                               
000000     MOVE ZERO TO �v�j�C���f�b�N�X�U                                               
000000     MOVE ZERO TO �v�j�C���f�b�N�X�V                                               
000000     MOVE ZERO TO �v�j�C���f�b�N�X�W                                               
000000     MOVE LOW-VALUE TO �v�j�r�b�g��                                             
000000     MOVE 1 TO WK-CNT1 .                                                  
000000 CX00029. IF NOT(WK-CNT1 <= 220)GO TO CX00030.                            
           DISPLAY "CX00029" UPON CONSOLE
000000     MOVE ZERO TO IDXC-IDX (WK-CNT1)                                      
000000           ADD  1  TO  WK-CNT1.                                           
000000     GO TO CX00029.                                                       
000000 CX00030.                                                                 
           DISPLAY "CX00030" UPON CONSOLE
000000 CX00002. EXIT.                                                           
000000 P000-RTN .                                                               
000000     IF NOT(IDXC-IDXCODE = 0)GO TO CX00031.                               
000000     PERFORM P100-RTN THRU CX00004 .                                      
000000     IF NOT(IDXC-BITCODE = 1)GO TO CX00032.                               
000000     PERFORM N_B-RTN THRU CX00015 .                                       
000000 CX00032.                                                                 
           DISPLAY "CX00032" UPON CONSOLE
000000     GO TO CX00033.                                                       
000000 CX00031. IF NOT(IDXC-BITCODE = 0)GO TO CX00034.                          
           DISPLAY "CX00031" UPON CONSOLE
000000     PERFORM P200-RTN THRU CX00005 .                                      
000000     IF NOT(IDXC-IDXCODE = 1)GO TO CX00035.                               
000000     PERFORM N_I-RTN THRU CX00014 .                                       
000000 CX00035.                                                                 
           DISPLAY "CX00035" UPON CONSOLE
000000     GO TO CX00033.                                                       
000000 CX00034.                                                                 
           DISPLAY "CX00034" UPON CONSOLE
000000     MOVE IDXC-CGNUM TO �v�j���� .                                            
000000     IF NOT(IDXC-IDXCODE = 1)GO TO CX00036.                               
000000     PERFORM N_I-RTN THRU CX00014 .                                       
000000 CX00036.                                                                 
           DISPLAY "CX00036" UPON CONSOLE
000000     IF NOT(IDXC-BITCODE = 1)GO TO CX00037.                               
000000     PERFORM N_B-RTN THRU CX00015 .                                       
000000 CX00037.                                                                 
           DISPLAY "CX00037" UPON CONSOLE
000000 CX00033.                                                                 
           DISPLAY "CX00033" UPON CONSOLE
000000     IF NOT(IDXC-IDXCODE = 1)GO TO CX00038.                               
000000     MOVE �v�j�C���f�b�N�X TO IDXC-CGIDX .                                        
000000 CX00038.                                                                 
           DISPLAY "CX00038" UPON CONSOLE
000000     IF NOT(IDXC-BITCODE = 1)GO TO CX00039.                               
000000     MOVE �v�j�r�b�g�� TO IDXC-CGBIT .                                          
000000 CX00039.                                                                 
           DISPLAY "CX00039" UPON CONSOLE
000000     IF NOT(IDXC-NUMCODE = 1)GO TO CX00040.                               
000000     MOVE �v�j���� TO IDXC-CGNUM .                                            
000000 CX00040.                                                                 
           DISPLAY "CX00040" UPON CONSOLE
000000     IF NOT(IDXC-SEQ = 1)GO TO CX00041.                                   
000000     IF NOT(IDXC-TYPE = 1)GO TO CX00042.                                  
000000     PERFORM P300-RTN THRU CX00006 .                                      
000000     GO TO CX00043.                                                       
000000 CX00042. IF NOT(IDXC-TYPE = 2)GO TO CX00044.                             
           DISPLAY "CX00042" UPON CONSOLE
000000     IF NOT(IDXC-IDXCODE = 2)GO TO CX00045.                               
000000     PERFORM N_I-RTN THRU CX00014                                         
000000     MOVE �v�j�C���f�b�N�X TO IDXC-IDX (1) .                                      
000000     GO TO CX00046.                                                       
000000 CX00045.                                                                 
           DISPLAY "CX00045" UPON CONSOLE
000000     MOVE IDXC-CGIDX TO IDXC-IDX (1) .                                    
000000 CX00046.                                                                 
           DISPLAY "CX00046" UPON CONSOLE
000000     GO TO CX00043.                                                       
000000 CX00044.                                                                 
           DISPLAY "CX00044" UPON CONSOLE
000000     PERFORM P400-RTN THRU CX00007 .                                      
000000 CX00043.                                                                 
           DISPLAY "CX00043" UPON CONSOLE
000000 CX00041.                                                                 
           DISPLAY "CX00041" UPON CONSOLE
000000 CX00003. EXIT.                                                           
000000 P100-RTN .                                                               
000000     MOVE IDXC-BUNBO TO �h                                                 
000000     COMPUTE �i = IDXC-BUNSI + IDXC-TYPE - 2                               
000000     MOVE IDXC-CGIDX TO �v�j�C���f�b�N�X .                                        
000000 CX00047. IF NOT( (�h > ZERO) AND (�i > ZERO))GO TO CX00048.                
           DISPLAY "CX00047" UPON CONSOLE
000000     IF NOT(�v�j�C���f�b�N�X >= �h�m�c�d�w (�i �h))GO TO CX00049.                        
000000     COMPUTE �v�j�C���f�b�N�X = �v�j�C���f�b�N�X - �h�m�c�d�w (�i �h)                            
000000     MOVE �h TO �v�j�\������ (�i)                                                 
000000     COMPUTE �i = �i - 1 .                                                  
000000 CX00049.                                                                 
           DISPLAY "CX00049" UPON CONSOLE
000000     COMPUTE �h = �h - 1 .                                                  
000000     GO TO CX00047.                                                       
000000 CX00048.                                                                 
           DISPLAY "CX00048" UPON CONSOLE
000000 CX00004. EXIT.                                                           
000000 P200-RTN .                                                               
      *20141028�C���J�n
000000*        @ZTSLOTWC( BUNBO     =  IDXC-BUNBO                                
000000*                   CHECKNUM  =  IDXC-CGBIT                                
000000*                   WINTIMES  =  �v�j��v����                                    
000000*                   WINADDR   =  �v�j��v�ʒu     );
      *** �p�����[�^�@�`�F�b�N ***                                   
           IF  IDXC-BUNBO  =  LOW-VALUE    THEN                                              
                   DISPLAY "������w�肵�ĉ�����"                               
                   STOP RUN.                                                         
           IF  IDXC-CGBIT  =  LOW-VALUE    THEN                                           
                   DISPLAY "�Ώې������w�肵�ĉ�����"                           
                   STOP RUN.                                                         
           IF  �v�j��v����  =  LOW-VALUE    THEN                                           
                   DISPLAY "��v���̎�����ڂ��w�肵�ĉ�����"                   
                   STOP RUN.                                                         
      *** ���̓p�����[�^�ڑ� ***                                     
           MOVE IDXC-BUNBO    TO NUMC-BUNBO
           MOVE IDXC-CGBIT TO NUMC-CHECKNUM
      *** ���g�����񐔎��`�F�b�N���W���[���Ăяo�� ***               
           CALL "HSAAL020" USING NUMC-PARAM
      *** �o�̓p�����[�^�ڑ� ***                                       
           MOVE NUMC-WINTIMES TO  �v�j��v����
           IF  �v�j��v�ʒu  NOT =  LOW-VALUE    THEN                                           
               MOVE NUMC-WINADDR TO �v�j��v�ʒu. 
      *20141028�C���I��                            
000000     MOVE �v�j��v�ʒu TO �v�j���� .                                                
000000 CX00005. EXIT.                                                           
000000 P300-RTN .                                                               
000000     MOVE 1 TO WK-CNT1                                                    
000000     COMPUTE WK-CNT2 = IDXC-BUNSI - 1 .                                   
000000 CX00050. IF NOT(WK-CNT1 <= WK-CNT2)GO TO CX00051.                        
           DISPLAY "CX00050" UPON CONSOLE
000000     MOVE �v�j�\������ (WK-CNT1) TO �v�j�g���\������ (WK-CNT1)                          
000000           ADD  1  TO  WK-CNT1.                                           
000000     GO TO CX00050.                                                       
000000 CX00051.                                                                 
           DISPLAY "CX00051" UPON CONSOLE
000000     COMPUTE �v�j�g���\������ (IDXC-BUNSI) = IDXC-BUNBO + 1                       
000000     MOVE 1 TO �h                                                          
000000     MOVE 1 TO �i                                                          
000000     MOVE 1 TO �j .                                                        
000000 CX00052. IF NOT(�j <= IDXC-BUNSI)GO TO CX00053.                           
           DISPLAY "CX00052" UPON CONSOLE
000000     IF NOT(�i < �v�j�g���\������ (�j))GO TO CX00054.                               
000000     MOVE 1 TO �k                                                          
000000     MOVE ZERO TO �v�j�C���f�b�N�X .                                              
000000 CX00055. IF NOT(�k < IDXC-BUNSI)GO TO CX00056.                            
           DISPLAY "CX00055" UPON CONSOLE
000000     MOVE �v�j�g���\������ (�k) TO �l .                                             
000000     IF NOT(�j > �k)GO TO CX00057.                                          
000000     COMPUTE �v�j�C���f�b�N�X = �v�j�C���f�b�N�X + �h�m�c�d�w (�k �l) .                          
000000     GO TO CX00058.                                                       
000000 CX00057.                                                                 
           DISPLAY "CX00057" UPON CONSOLE
000000     COMPUTE �v�j�C���f�b�N�X = �v�j�C���f�b�N�X + �h�m�c�d�w (�k + 1 �l) .                      
000000 CX00058.                                                                 
           DISPLAY "CX00058" UPON CONSOLE
000000                 ADD  1  TO  �k.                                           
000000     GO TO CX00055.                                                       
000000 CX00056.                                                                 
           DISPLAY "CX00056" UPON CONSOLE
000000 CX00059. IF NOT(�i < �v�j�g���\������ (�j))GO TO CX00060.                          
           DISPLAY "CX00059" UPON CONSOLE
000000     COMPUTE IDXC-IDX (�h) = �v�j�C���f�b�N�X + �h�m�c�d�w (�j �i)                        
000000                 ADD  1  TO  �h.                                           
000000                 ADD  1  TO  �i.                                           
000000     GO TO CX00059.                                                       
000000 CX00060.                                                                 
           DISPLAY "CX00060" UPON CONSOLE
000000 CX00054.                                                                 
           DISPLAY "CX00054" UPON CONSOLE
000000           ADD  1  TO  �i.                                                 
000000           ADD  1  TO  �j.                                                 
000000     GO TO CX00052.                                                       
000000 CX00053.                                                                 
           DISPLAY "CX00053" UPON CONSOLE
000000 CX00006. EXIT.                                                           
000000 P400-RTN .                                                               
000000     MOVE 1 TO �`                                                          
000000     MOVE 1 TO �i .                                                        
000000 CX00061. IF NOT(�i < IDXC-TYPE)GO TO CX00062.                             
           DISPLAY "CX00061" UPON CONSOLE
000000     MOVE �v�j�\������ (�i) TO �a                                                 
000000     MOVE �h�m�c�d�w (1 �a) TO �v�j�C���f�b�N�X                                         
000000     COMPUTE �j = �i + 1 .                                                  
000000 CX00063. IF NOT(�j < IDXC-TYPE + 1)GO TO CX00064.                         
           DISPLAY "CX00063" UPON CONSOLE
000000     MOVE �v�j�\������ (�j) TO �a                                                 
000000     COMPUTE �v�j�C���f�b�N�X�Q = �v�j�C���f�b�N�X + �h�m�c�d�w (2 �a)                           
000000     COMPUTE �k = �j + 1                                                    
000000     PERFORM BN04-RTN THRU CX00008                                        
000000              ADD  1  TO  �j.                                              
000000     GO TO CX00063.                                                       
000000 CX00064.                                                                 
           DISPLAY "CX00064" UPON CONSOLE
000000           ADD  1  TO  �i.                                                 
000000     GO TO CX00061.                                                       
000000 CX00062.                                                                 
           DISPLAY "CX00062" UPON CONSOLE
000000 CX00007. EXIT.                                                           
000000 BN04-RTN .                                                               
000000 CX00065. IF NOT(�k < IDXC-TYPE + 2)GO TO CX00066.                         
           DISPLAY "CX00065" UPON CONSOLE
000000     MOVE �v�j�\������ (�k) TO �a                                                 
000000     COMPUTE �v�j�C���f�b�N�X�R = �v�j�C���f�b�N�X�Q + �h�m�c�d�w (3 �a)                          
000000     COMPUTE �l = �k + 1 .                                                  
000000     IF NOT(IDXC-BUNSI = 4)GO TO CX00067.                                 
000000 CX00068. IF NOT(�l < IDXC-TYPE + 3)GO TO CX00069.                         
           DISPLAY "CX00068" UPON CONSOLE
000000     MOVE �v�j�\������ (�l) TO �a                                                 
000000     COMPUTE IDXC-IDX (�`) = �v�j�C���f�b�N�X�R + �h�m�c�d�w (IDXC-BUNSI �a)              
000000                 ADD  1  TO  �`.                                           
000000                 ADD  1  TO  �l.                                           
000000     GO TO CX00068.                                                       
000000 CX00069.                                                                 
           DISPLAY "CX00069" UPON CONSOLE
000000     GO TO CX00070.                                                       
000000 CX00067.                                                                 
           DISPLAY "CX00067" UPON CONSOLE
000000     PERFORM BN05-RTN THRU CX00009 .                                      
000000 CX00070.                                                                 
           DISPLAY "CX00070" UPON CONSOLE
000000           ADD  1  TO  �k.                                                 
000000     GO TO CX00065.                                                       
000000 CX00066.                                                                 
           DISPLAY "CX00066" UPON CONSOLE
000000 CX00008. EXIT.                                                           
000000 BN05-RTN .                                                               
000000 CX00071. IF NOT(�l < IDXC-TYPE + 3)GO TO CX00072.                         
           DISPLAY "CX00071" UPON CONSOLE
000000     MOVE �v�j�\������ (�l) TO �a                                                 
000000     COMPUTE �v�j�C���f�b�N�X�S = �v�j�C���f�b�N�X�R + �h�m�c�d�w (4 �a)                          
000000     COMPUTE �m = �l + 1 .                                                  
000000     IF NOT(IDXC-BUNSI = 5)GO TO CX00073.                                 
000000 CX00074. IF NOT(�m < IDXC-TYPE + 4)GO TO CX00075.                         
           DISPLAY "CX00074" UPON CONSOLE
000000     MOVE �v�j�\������ (�m) TO �a                                                 
000000     COMPUTE IDXC-IDX (�`) = �v�j�C���f�b�N�X�S + �h�m�c�d�w (IDXC-BUNSI �a)              
000000                 ADD  1  TO  �`.                                           
000000                 ADD  1  TO  �m.                                           
000000     GO TO CX00074.                                                       
000000 CX00075.                                                                 
           DISPLAY "CX00075" UPON CONSOLE
000000     GO TO CX00076.                                                       
000000 CX00073.                                                                 
           DISPLAY "CX00073" UPON CONSOLE
000000     PERFORM BN06-RTN THRU CX00010 .                                      
000000 CX00076.                                                                 
           DISPLAY "CX00076" UPON CONSOLE
000000           ADD  1  TO  �l.                                                 
000000     GO TO CX00071.                                                       
000000 CX00072.                                                                 
           DISPLAY "CX00072" UPON CONSOLE
000000 CX00009. EXIT.                                                           
000000 BN06-RTN .                                                               
000000 CX00077. IF NOT(�m < IDXC-TYPE + 4)GO TO CX00078.                         
           DISPLAY "CX00077" UPON CONSOLE
000000     MOVE �v�j�\������ (�m) TO �a                                                 
000000     COMPUTE �v�j�C���f�b�N�X�T = �v�j�C���f�b�N�X�S + �h�m�c�d�w (5 �a)                          
000000     COMPUTE �n = �m + 1 .                                                  
000000     IF NOT(IDXC-BUNSI = 6)GO TO CX00079.                                 
000000 CX00080. IF NOT(�n < IDXC-TYPE + 5)GO TO CX00081.                         
           DISPLAY "CX00080" UPON CONSOLE
000000     MOVE �v�j�\������ (�n) TO �a                                                 
000000     COMPUTE IDXC-IDX (�`) = �v�j�C���f�b�N�X�T + �h�m�c�d�w (IDXC-BUNSI �a)              
000000                 ADD  1  TO  �`.                                           
000000                 ADD  1  TO  �n.                                           
000000     GO TO CX00080.                                                       
000000 CX00081.                                                                 
           DISPLAY "CX00081" UPON CONSOLE
000000     GO TO CX00082.                                                       
000000 CX00079.                                                                 
           DISPLAY "CX00079" UPON CONSOLE
000000     PERFORM BN07-RTN THRU CX00011 .                                      
000000 CX00082.                                                                 
           DISPLAY "CX00082" UPON CONSOLE
000000           ADD  1  TO  �m.                                                 
000000     GO TO CX00077.                                                       
000000 CX00078.                                                                 
           DISPLAY "CX00078" UPON CONSOLE
000000 CX00010. EXIT.                                                           
000000 BN07-RTN .                                                               
000000 CX00083. IF NOT(�n < IDXC-TYPE + 5)GO TO CX00084.                         
           DISPLAY "CX00083" UPON CONSOLE
000000     MOVE �v�j�\������ (�n) TO �a                                                 
000000     COMPUTE �v�j�C���f�b�N�X�U = �v�j�C���f�b�N�X�T + �h�m�c�d�w (6 �a)                          
000000     COMPUTE �o = �n + 1 .                                                  
000000     IF NOT(IDXC-BUNSI = 7)GO TO CX00085.                                 
000000 CX00086. IF NOT(�o < IDXC-TYPE + 6)GO TO CX00087.                         
           DISPLAY "CX00086" UPON CONSOLE
000000     MOVE �v�j�\������ (�o) TO �a                                                 
000000     COMPUTE IDXC-IDX (�`) = �v�j�C���f�b�N�X�U + �h�m�c�d�w (IDXC-BUNSI �a)              
000000                 ADD  1  TO  �`.                                           
000000                 ADD  1  TO  �o.                                           
000000     GO TO CX00086.                                                       
000000 CX00087.                                                                 
           DISPLAY "CX00087" UPON CONSOLE
000000     GO TO CX00088.                                                       
000000 CX00085.                                                                 
           DISPLAY "CX00085" UPON CONSOLE
000000     PERFORM BN08-RTN THRU CX00012 .                                      
000000 CX00088.                                                                 
           DISPLAY "CX00088" UPON CONSOLE
000000           ADD  1  TO  �n.                                                 
000000     GO TO CX00083.                                                       
000000 CX00084.                                                                 
           DISPLAY "CX00084" UPON CONSOLE
000000 CX00011. EXIT.                                                           
000000 BN08-RTN .                                                               
000000 CX00089. IF NOT(�o < IDXC-TYPE + 6)GO TO CX00090.                         
           DISPLAY "CX00089" UPON CONSOLE
000000     MOVE �v�j�\������ (�o) TO �a                                                 
000000     COMPUTE �v�j�C���f�b�N�X�V = �v�j�C���f�b�N�X�U + �h�m�c�d�w (7 �a)                          
000000     COMPUTE �p = �o + 1 .                                                  
000000     IF NOT(IDXC-BUNSI = 8)GO TO CX00091.                                 
000000 CX00092. IF NOT(�p < IDXC-TYPE + 7)GO TO CX00093.                         
           DISPLAY "CX00092" UPON CONSOLE
000000     MOVE �v�j�\������ (�p) TO �a                                                 
000000     COMPUTE IDXC-IDX (�`) = �v�j�C���f�b�N�X�V + �h�m�c�d�w (IDXC-BUNSI �a)              
000000                 ADD  1  TO  �`.                                           
000000                 ADD  1  TO  �p.                                           
000000     GO TO CX00092.                                                       
000000 CX00093.                                                                 
           DISPLAY "CX00093" UPON CONSOLE
000000     GO TO CX00094.                                                       
000000 CX00091.                                                                 
           DISPLAY "CX00091" UPON CONSOLE
000000     PERFORM BN09-RTN THRU CX00013 .                                      
000000 CX00094.                                                                 
           DISPLAY "CX00094" UPON CONSOLE
000000           ADD  1  TO  �o.                                                 
000000     GO TO CX00089.                                                       
000000 CX00090.                                                                 
           DISPLAY "CX00090" UPON CONSOLE
000000 CX00012. EXIT.                                                           
000000 BN09-RTN .                                                               
000000 CX00095. IF NOT(�p < IDXC-TYPE + 7)GO TO CX00096.                         
           DISPLAY "CX00095" UPON CONSOLE
000000     MOVE �v�j�\������ (�p) TO �a                                                 
000000     COMPUTE �v�j�C���f�b�N�X�W = �v�j�C���f�b�N�X�V + �h�m�c�d�w (8 �a)                          
000000     COMPUTE �q = �p + 1 .                                                  
000000     IF NOT(IDXC-BUNSI = 9)GO TO CX00097.                                 
000000 CX00098. IF NOT(�q < IDXC-TYPE + 8)GO TO CX00099.                         
           DISPLAY "CX00098" UPON CONSOLE
000000     MOVE �v�j�\������ (�q) TO �a                                                 
000000     COMPUTE IDXC-IDX (�`) = �v�j�C���f�b�N�X�W + �h�m�c�d�w (IDXC-BUNSI �a)              
000000                 ADD  1  TO  �`.                                           
000000                 ADD  1  TO  �q.                                           
000000     GO TO CX00098.                                                       
000000 CX00099.                                                                 
           DISPLAY "CX00099" UPON CONSOLE
000000 CX00097.                                                                 
           DISPLAY "CX00097" UPON CONSOLE
000000           ADD  1  TO  �p.                                                 
000000     GO TO CX00095.                                                       
000000 CX00096.                                                                 
           DISPLAY "CX00096" UPON CONSOLE
000000 CX00013. EXIT.                                                           
000000 N_I-RTN .                                                                
000000     COMPUTE �h = IDXC-BUNSI + IDXC-TYPE - 2 .                             
000000 CX00100. IF NOT(�h > ZERO)GO TO CX00101.                                  
           DISPLAY "CX00100" UPON CONSOLE
000000     MOVE �v�j�\������ (�h) TO �o                                                 
000000     COMPUTE �v�j�C���f�b�N�X = �v�j�C���f�b�N�X + �h�m�c�d�w (�h �o)                            
000000     COMPUTE �h = �h - 1 .                                                  
000000     GO TO CX00100.                                                       
000000 CX00101.                                                                 
           DISPLAY "CX00101" UPON CONSOLE
000000 CX00014. EXIT.                                                           
000000 N_B-RTN .                                                                
000000     COMPUTE �h = IDXC-BUNSI + IDXC-TYPE - 2 .                             
000000 CX00102. IF NOT(�h > ZERO)GO TO CX00103.                                  
           DISPLAY "CX00102" UPON CONSOLE
000000     MOVE �v�j�\������ (�h) TO �o                                                 
      *20141029�C���J�n
000000*           COMBINE  �v�j�r�b�g��  EQUAL  ,      
                 COMBINE  �v�j�r�b�g��  =                                
      *20141029�C���I��
000000                    �v�j�r�b�g��  OR  �a�h�s(�o).                                   
000000     COMPUTE �h = �h - 1 .                                                  
000000     GO TO CX00102.                                                       
000000 CX00103.                                                                 
           DISPLAY "CX00103" UPON CONSOLE
000000 CX00015. EXIT.                                                           

000000 IDENTIFICATION DIVISION.                                                 
000000 PROGRAM-ID. HRATS010 .                                                   
000000 DATE-WRITTEN.                                                            
000000 DATE-COMPILED.                                                           
000000 ENVIRONMENT DIVISION.                                                    
000000 CONFIGURATION SECTION.                                                   
000000 SOURCE-COMPUTER.        ACOS.                                            
000000 OBJECT-COMPUTER.        ACOS.                                            
000000 DATA DIVISION.
      *20141029追加開始
       WORKING-STORAGE SECTION.
      *20141029追加終了                                                           
000000 01  インデックス定数テーブル.                                                        
000000     03  設定値０１／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０２／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       1.             
000000     03  設定値０３／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       2.             
000000     03  設定値０４／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       3.             
000000     03  設定値０５／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       4.             
000000     03  設定値０６／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       5.             
000000     03  設定値０７／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       6.             
000000     03  設定値０８／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       7.             
000000     03  設定値０９／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       8.             
000000     03  設定値１０／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       9.             
000000     03  設定値１１／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      10.             
000000     03  設定値１２／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      11.             
000000     03  設定値１３／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      12.             
000000     03  設定値１４／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      13.             
000000     03  設定値１５／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      14.             
000000     03  設定値１６／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      15.             
000000     03  設定値１７／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      16.             
000000     03  設定値１８／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      17.             
000000     03  設定値１９／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      18.             
000000     03  設定値２０／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      19.             
000000     03  設定値２１／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      20.             
000000     03  設定値２２／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      21.             
000000     03  設定値２３／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      22.             
000000     03  設定値２４／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      23.             
000000     03  設定値２５／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      24.             
000000     03  設定値２６／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      25.             
000000     03  設定値２７／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      26.             
000000     03  設定値２８／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      27.             
000000     03  設定値２９／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      28.             
000000     03  設定値３０／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      29.             
000000     03  設定値３１／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      30.             
000000     03  設定値３２／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      31.             
000000     03  設定値３３／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      32.             
000000     03  設定値３４／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      33.             
000000     03  設定値３５／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      34.             
000000     03  設定値３６／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      35.             
000000     03  設定値３７／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      36.             
000000     03  設定値３８／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      37.             
000000     03  設定値３９／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      38.             
000000     03  設定値４０／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      39.             
000000     03  設定値４１／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      40.             
000000     03  設定値４２／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      41.             
000000     03  設定値４３／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      42.             
000000     03  設定値４４／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      43.             
000000     03  設定値４５／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      44.             
000000     03  設定値４６／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      45.             
000000     03  設定値４７／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      46.             
000000     03  設定値４８／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      47.             
000000     03  設定値４９／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      48.             
000000     03  設定値５０／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      49.             
000000     03  設定値５１／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      50.             
000000     03  設定値５２／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      51.             
000000     03  設定値５３／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      52.             
000000     03  設定値５４／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      53.             
000000     03  設定値５５／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      54.             
000000     03  設定値５６／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      55.             
000000     03  設定値５７／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      56.             
000000     03  設定値５８／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      57.             
000000     03  設定値５９／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      58.             
000000     03  設定値６０／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      59.             
000000     03  設定値６１／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      60.             
000000     03  設定値６２／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      61.             
000000     03  設定値６３／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      62.             
000000     03  設定値６４／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      63.             
000000     03  設定値６５／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      64.             
000000     03  設定値６６／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      65.             
000000     03  設定値６７／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      66.             
000000     03  設定値６８／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      67.             
000000     03  設定値６９／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      68.             
000000     03  設定値７０／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      69.             
000000     03  設定値７１／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      70.             
000000     03  設定値７２／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      71.             
000000     03  設定値７３／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      72.             
000000     03  設定値７４／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      73.             
000000     03  設定値７５／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      74.             
000000     03  設定値７６／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      75.             
000000     03  設定値７７／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      76.             
000000     03  設定値７８／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      77.             
000000     03  設定値７９／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      78.             
000000     03  設定値８０／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      79.             
000000     03  設定値８１／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      80.             
000000     03  設定値８２／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      81.             
000000     03  設定値８３／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      82.             
000000     03  設定値８４／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      83.             
000000     03  設定値８５／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      84.             
000000     03  設定値８６／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      85.             
000000     03  設定値８７／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      86.             
000000     03  設定値８８／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      87.             
000000     03  設定値８９／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      88.             
000000     03  設定値９０／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      89.             
000000     03  設定値９１／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      90.             
000000     03  設定値９２／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      91.             
000000     03  設定値９３／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      92.             
000000     03  設定値９４／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      93.             
000000     03  設定値９５／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      94.             
000000     03  設定値９６／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      95.             
000000     03  設定値９７／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      96.             
000000     03  設定値９８／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      97.             
000000     03  設定値９９／０１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      98.             
000000     03  設定値０１／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０２／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０３／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       1.             
000000     03  設定値０４／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       3.             
000000     03  設定値０５／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       6.             
000000     03  設定値０６／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      10.             
000000     03  設定値０７／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      15.             
000000     03  設定値０８／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      21.             
000000     03  設定値０９／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      28.             
000000     03  設定値１０／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      36.             
000000     03  設定値１１／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      45.             
000000     03  設定値１２／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      55.             
000000     03  設定値１３／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      66.             
000000     03  設定値１４／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      78.             
000000     03  設定値１５／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      91.             
000000     03  設定値１６／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     105.             
000000     03  設定値１７／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     120.             
000000     03  設定値１８／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     136.             
000000     03  設定値１９／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     153.             
000000     03  設定値２０／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     171.             
000000     03  設定値２１／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     190.             
000000     03  設定値２２／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     210.             
000000     03  設定値２３／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     231.             
000000     03  設定値２４／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     253.             
000000     03  設定値２５／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     276.             
000000     03  設定値２６／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     300.             
000000     03  設定値２７／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     325.             
000000     03  設定値２８／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     351.             
000000     03  設定値２９／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     378.             
000000     03  設定値３０／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     406.             
000000     03  設定値３１／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     435.             
000000     03  設定値３２／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     465.             
000000     03  設定値３３／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     496.             
000000     03  設定値３４／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     528.             
000000     03  設定値３５／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     561.             
000000     03  設定値３６／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     595.             
000000     03  設定値３７／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     630.             
000000     03  設定値３８／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     666.             
000000     03  設定値３９／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     703.             
000000     03  設定値４０／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     741.             
000000     03  設定値４１／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     780.             
000000     03  設定値４２／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     820.             
000000     03  設定値４３／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     861.             
000000     03  設定値４４／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     903.             
000000     03  設定値４５／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     946.             
000000     03  設定値４６／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     990.             
000000     03  設定値４７／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1035.             
000000     03  設定値４８／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1081.             
000000     03  設定値４９／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1128.             
000000     03  設定値５０／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1176.             
000000     03  設定値５１／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1225.             
000000     03  設定値５２／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1275.             
000000     03  設定値５３／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1326.             
000000     03  設定値５４／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1378.             
000000     03  設定値５５／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1431.             
000000     03  設定値５６／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1485.             
000000     03  設定値５７／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1540.             
000000     03  設定値５８／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1596.             
000000     03  設定値５９／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1653.             
000000     03  設定値６０／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1711.             
000000     03  設定値６１／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1770.             
000000     03  設定値６２／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1830.             
000000     03  設定値６３／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1891.             
000000     03  設定値６４／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1953.             
000000     03  設定値６５／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    2016.             
000000     03  設定値６６／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    2080.             
000000     03  設定値６７／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    2145.             
000000     03  設定値６８／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    2211.             
000000     03  設定値６９／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    2278.             
000000     03  設定値７０／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    2346.             
000000     03  設定値７１／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    2415.             
000000     03  設定値７２／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    2485.             
000000     03  設定値７３／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    2556.             
000000     03  設定値７４／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    2628.             
000000     03  設定値７５／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    2701.             
000000     03  設定値７６／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    2775.             
000000     03  設定値７７／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    2850.             
000000     03  設定値７８／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    2926.             
000000     03  設定値７９／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    3003.             
000000     03  設定値８０／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    3081.             
000000     03  設定値８１／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    3160.             
000000     03  設定値８２／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    3240.             
000000     03  設定値８３／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    3321.             
000000     03  設定値８４／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    3403.             
000000     03  設定値８５／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    3486.             
000000     03  設定値８６／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    3570.             
000000     03  設定値８７／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    3655.             
000000     03  設定値８８／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    3741.             
000000     03  設定値８９／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    3828.             
000000     03  設定値９０／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    3916.             
000000     03  設定値９１／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    4005.             
000000     03  設定値９２／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    4095.             
000000     03  設定値９３／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    4186.             
000000     03  設定値９４／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    4278.             
000000     03  設定値９５／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    4371.             
000000     03  設定値９６／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    4465.             
000000     03  設定値９７／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    4560.             
000000     03  設定値９８／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    4656.             
000000     03  設定値９９／０２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    4753.             
000000     03  設定値０１／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０２／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０３／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０４／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       1.             
000000     03  設定値０５／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       4.             
000000     03  設定値０６／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      10.             
000000     03  設定値０７／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      20.             
000000     03  設定値０８／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      35.             
000000     03  設定値０９／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      56.             
000000     03  設定値１０／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      84.             
000000     03  設定値１１／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     120.             
000000     03  設定値１２／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     165.             
000000     03  設定値１３／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     220.             
000000     03  設定値１４／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     286.             
000000     03  設定値１５／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     364.             
000000     03  設定値１６／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     455.             
000000     03  設定値１７／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     560.             
000000     03  設定値１８／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     680.             
000000     03  設定値１９／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     816.             
000000     03  設定値２０／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     969.             
000000     03  設定値２１／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1140.             
000000     03  設定値２２／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1330.             
000000     03  設定値２３／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1540.             
000000     03  設定値２４／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1771.             
000000     03  設定値２５／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    2024.             
000000     03  設定値２６／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    2300.             
000000     03  設定値２７／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    2600.             
000000     03  設定値２８／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    2925.             
000000     03  設定値２９／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    3276.             
000000     03  設定値３０／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    3654.             
000000     03  設定値３１／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    4060.             
000000     03  設定値３２／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    4495.             
000000     03  設定値３３／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    4960.             
000000     03  設定値３４／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    5456.             
000000     03  設定値３５／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    5984.             
000000     03  設定値３６／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    6545.             
000000     03  設定値３７／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    7140.             
000000     03  設定値３８／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    7770.             
000000     03  設定値３９／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    8436.             
000000     03  設定値４０／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    9139.             
000000     03  設定値４１／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    9880.             
000000     03  設定値４２／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   10660.             
000000     03  設定値４３／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   11480.             
000000     03  設定値４４／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   12341.             
000000     03  設定値４５／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   13244.             
000000     03  設定値４６／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   14190.             
000000     03  設定値４７／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   15180.             
000000     03  設定値４８／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   16215.             
000000     03  設定値４９／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   17296.             
000000     03  設定値５０／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   18424.             
000000     03  設定値５１／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   19600.             
000000     03  設定値５２／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   20825.             
000000     03  設定値５３／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   22100.             
000000     03  設定値５４／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   23426.             
000000     03  設定値５５／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   24804.             
000000     03  設定値５６／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   26235.             
000000     03  設定値５７／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   27720.             
000000     03  設定値５８／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   29260.             
000000     03  設定値５９／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   30856.             
000000     03  設定値６０／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   32509.             
000000     03  設定値６１／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   34220.             
000000     03  設定値６２／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   35990.             
000000     03  設定値６３／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   37820.             
000000     03  設定値６４／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   39711.             
000000     03  設定値６５／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   41664.             
000000     03  設定値６６／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   43680.             
000000     03  設定値６７／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   45760.             
000000     03  設定値６８／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   47905.             
000000     03  設定値６９／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   50116.             
000000     03  設定値７０／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   52394.             
000000     03  設定値７１／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   54740.             
000000     03  設定値７２／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   57155.             
000000     03  設定値７３／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   59640.             
000000     03  設定値７４／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   62196.             
000000     03  設定値７５／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   64824.             
000000     03  設定値７６／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   67525.             
000000     03  設定値７７／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   70300.             
000000     03  設定値７８／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   73150.             
000000     03  設定値７９／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   76076.             
000000     03  設定値８０／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   79079.             
000000     03  設定値８１／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   82160.             
000000     03  設定値８２／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   85320.             
000000     03  設定値８３／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   88560.             
000000     03  設定値８４／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   91881.             
000000     03  設定値８５／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   95284.             
000000     03  設定値８６／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   98770.             
000000     03  設定値８７／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  102340.             
000000     03  設定値８８／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  105995.             
000000     03  設定値８９／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  109736.             
000000     03  設定値９０／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  113564.             
000000     03  設定値９１／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  117480.             
000000     03  設定値９２／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  121485.             
000000     03  設定値９３／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  125580.             
000000     03  設定値９４／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  129766.             
000000     03  設定値９５／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  134044.             
000000     03  設定値９６／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  138415.             
000000     03  設定値９７／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  142880.             
000000     03  設定値９８／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  147440.             
000000     03  設定値９９／０３      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  152096.             
000000     03  設定値０１／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０２／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０３／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０４／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０５／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       1.             
000000     03  設定値０６／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       5.             
000000     03  設定値０７／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      15.             
000000     03  設定値０８／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      35.             
000000     03  設定値０９／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      70.             
000000     03  設定値１０／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     126.             
000000     03  設定値１１／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     210.             
000000     03  設定値１２／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     330.             
000000     03  設定値１３／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     495.             
000000     03  設定値１４／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     715.             
000000     03  設定値１５／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1001.             
000000     03  設定値１６／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1365.             
000000     03  設定値１７／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1820.             
000000     03  設定値１８／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    2380.             
000000     03  設定値１９／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    3060.             
000000     03  設定値２０／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    3876.             
000000     03  設定値２１／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    4845.             
000000     03  設定値２２／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    5985.             
000000     03  設定値２３／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    7315.             
000000     03  設定値２４／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    8855.             
000000     03  設定値２５／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   10626.             
000000     03  設定値２６／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   12650.             
000000     03  設定値２７／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   14950.             
000000     03  設定値２８／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   17550.             
000000     03  設定値２９／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   20475.             
000000     03  設定値３０／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   23751.             
000000     03  設定値３１／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   27405.             
000000     03  設定値３２／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   31465.             
000000     03  設定値３３／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   35960.             
000000     03  設定値３４／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   40920.             
000000     03  設定値３５／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   46376.             
000000     03  設定値３６／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   52360.             
000000     03  設定値３７／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   58905.             
000000     03  設定値３８／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   66045.             
000000     03  設定値３９／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   73815.             
000000     03  設定値４０／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   82251.             
000000     03  設定値４１／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   91390.             
000000     03  設定値４２／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  101270.             
000000     03  設定値４３／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  111930.             
000000     03  設定値４４／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  123410.             
000000     03  設定値４５／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  135751.             
000000     03  設定値４６／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  148995.             
000000     03  設定値４７／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  163185.             
000000     03  設定値４８／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  178365.             
000000     03  設定値４９／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  194580.             
000000     03  設定値５０／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  211876.             
000000     03  設定値５１／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  230300.             
000000     03  設定値５２／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  249900.             
000000     03  設定値５３／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  270725.             
000000     03  設定値５４／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  292825.             
000000     03  設定値５５／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  316251.             
000000     03  設定値５６／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  341055.             
000000     03  設定値５７／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  367290.             
000000     03  設定値５８／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  395010.             
000000     03  設定値５９／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  424270.             
000000     03  設定値６０／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  455126.             
000000     03  設定値６１／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  487635.             
000000     03  設定値６２／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  521855.             
000000     03  設定値６３／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  557845.             
000000     03  設定値６４／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  595665.             
000000     03  設定値６５／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  635376.             
000000     03  設定値６６／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  677040.             
000000     03  設定値６７／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  720720.             
000000     03  設定値６８／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  766480.             
000000     03  設定値６９／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  814385.             
000000     03  設定値７０／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  864501.             
000000     03  設定値７１／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  916895.             
000000     03  設定値７２／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  971635.             
000000     03  設定値７３／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1028790.             
000000     03  設定値７４／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1088430.             
000000     03  設定値７５／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1150626.             
000000     03  設定値７６／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1215450.             
000000     03  設定値７７／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1282975.             
000000     03  設定値７８／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1353275.             
000000     03  設定値７９／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1426425.             
000000     03  設定値８０／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1502501.             
000000     03  設定値８１／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1581580.             
000000     03  設定値８２／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1663740.             
000000     03  設定値８３／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1749060.             
000000     03  設定値８４／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1837620.             
000000     03  設定値８５／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1929501.             
000000     03  設定値８６／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 2024785.             
000000     03  設定値８７／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 2123555.             
000000     03  設定値８８／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 2225895.             
000000     03  設定値８９／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 2331890.             
000000     03  設定値９０／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 2441626.             
000000     03  設定値９１／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 2555190.             
000000     03  設定値９２／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 2672670.             
000000     03  設定値９３／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 2794155.             
000000     03  設定値９４／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 2919735.             
000000     03  設定値９５／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 3049501.             
000000     03  設定値９６／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 3183545.             
000000     03  設定値９７／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 3321960.             
000000     03  設定値９８／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 3464840.             
000000     03  設定値９９／０４      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 3612280.             
000000     03  設定値０１／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０２／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０３／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０４／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０５／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０６／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       1.             
000000     03  設定値０７／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       6.             
000000     03  設定値０８／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      21.             
000000     03  設定値０９／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      56.             
000000     03  設定値１０／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     126.             
000000     03  設定値１１／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     252.             
000000     03  設定値１２／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     462.             
000000     03  設定値１３／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     792.             
000000     03  設定値１４／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1287.             
000000     03  設定値１５／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    2002.             
000000     03  設定値１６／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    3003.             
000000     03  設定値１７／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    4368.             
000000     03  設定値１８／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    6188.             
000000     03  設定値１９／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    8568.             
000000     03  設定値２０／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   11628.             
000000     03  設定値２１／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   15504.             
000000     03  設定値２２／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   20349.             
000000     03  設定値２３／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   26334.             
000000     03  設定値２４／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   33649.             
000000     03  設定値２５／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   42504.             
000000     03  設定値２６／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   53130.             
000000     03  設定値２７／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   65780.             
000000     03  設定値２８／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   80730.             
000000     03  設定値２９／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   98280.             
000000     03  設定値３０／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  118755.             
000000     03  設定値３１／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  142506.             
000000     03  設定値３２／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  169911.             
000000     03  設定値３３／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  201376.             
000000     03  設定値３４／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  237336.             
000000     03  設定値３５／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  278256.             
000000     03  設定値３６／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  324632.             
000000     03  設定値３７／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  376992.             
000000     03  設定値３８／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  435897.             
000000     03  設定値３９／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  501942.             
000000     03  設定値４０／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  575757.             
000000     03  設定値４１／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  658008.             
000000     03  設定値４２／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  749398.             
000000     03  設定値４３／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  850668.             
000000     03  設定値４４／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  962598.             
000000     03  設定値４５／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1086008.             
000000     03  設定値４６／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1221759.             
000000     03  設定値４７／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1370754.             
000000     03  設定値４８／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1533939.             
000000     03  設定値４９／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1712304.             
000000     03  設定値５０／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1906884.             
000000     03  設定値５１／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 2118760.             
000000     03  設定値５２／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 2349060.             
000000     03  設定値５３／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 2598960.             
000000     03  設定値５４／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 2869685.             
000000     03  設定値５５／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 3162510.             
000000     03  設定値５６／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 3478761.             
000000     03  設定値５７／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 3819816.             
000000     03  設定値５８／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 4187106.             
000000     03  設定値５９／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 4582116.             
000000     03  設定値６０／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 5006386.             
000000     03  設定値６１／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 5461512.             
000000     03  設定値６２／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 5949147.             
000000     03  設定値６３／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 6471002.             
000000     03  設定値６４／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 7028847.             
000000     03  設定値６５／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 7624512.             
000000     03  設定値６６／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 8259888.             
000000     03  設定値６７／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 8936928.             
000000     03  設定値６８／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 9657648.             
000000     03  設定値６９／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                10424128.             
000000     03  設定値７０／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                11238513.             
000000     03  設定値７１／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                12103014.             
000000     03  設定値７２／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                13019909.             
000000     03  設定値７３／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                13991544.             
000000     03  設定値７４／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                15020334.             
000000     03  設定値７５／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                16108764.             
000000     03  設定値７６／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                17259390.             
000000     03  設定値７７／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                18474840.             
000000     03  設定値７８／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                19757815.             
000000     03  設定値７９／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                21111090.             
000000     03  設定値８０／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                22537515.             
000000     03  設定値８１／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                24040016.             
000000     03  設定値８２／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                25621596.             
000000     03  設定値８３／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                27285336.             
000000     03  設定値８４／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                29034396.             
000000     03  設定値８５／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                30872016.             
000000     03  設定値８６／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                32801517.             
000000     03  設定値８７／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                34826302.             
000000     03  設定値８８／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                36949857.             
000000     03  設定値８９／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                39175752.             
000000     03  設定値９０／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                41507642.             
000000     03  設定値９１／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                43949268.             
000000     03  設定値９２／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                46504458.             
000000     03  設定値９３／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                49177128.             
000000     03  設定値９４／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                51971283.             
000000     03  設定値９５／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                54891018.             
000000     03  設定値９６／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                57940519.             
000000     03  設定値９７／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                61124064.             
000000     03  設定値９８／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                64446024.             
000000     03  設定値９９／０５      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                67910864.             
000000     03  設定値０１／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０２／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０３／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０４／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０５／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０６／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０７／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       1.             
000000     03  設定値０８／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       7.             
000000     03  設定値０９／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      28.             
000000     03  設定値１０／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      84.             
000000     03  設定値１１／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     210.             
000000     03  設定値１２／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     462.             
000000     03  設定値１３／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     924.             
000000     03  設定値１４／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1716.             
000000     03  設定値１５／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    3003.             
000000     03  設定値１６／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    5005.             
000000     03  設定値１７／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    8008.             
000000     03  設定値１８／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   12376.             
000000     03  設定値１９／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   18564.             
000000     03  設定値２０／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   27132.             
000000     03  設定値２１／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   38760.             
000000     03  設定値２２／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   54264.             
000000     03  設定値２３／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   74613.             
000000     03  設定値２４／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  100947.             
000000     03  設定値２５／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  134596.             
000000     03  設定値２６／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  177100.             
000000     03  設定値２７／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  230230.             
000000     03  設定値２８／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  296010.             
000000     03  設定値２９／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  376740.             
000000     03  設定値３０／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  475020.             
000000     03  設定値３１／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  593775.             
000000     03  設定値３２／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  736281.             
000000     03  設定値３３／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  906192.             
000000     03  設定値３４／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1107568.             
000000     03  設定値３５／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1344904.             
000000     03  設定値３６／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1623160.             
000000     03  設定値３７／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1947792.             
000000     03  設定値３８／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 2324784.             
000000     03  設定値３９／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 2760681.             
000000     03  設定値４０／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 3262623.             
000000     03  設定値４１／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 3838380.             
000000     03  設定値４２／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 4496388.             
000000     03  設定値４３／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 5245786.             
000000     03  設定値４４／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 6096454.             
000000     03  設定値４５／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 7059052.             
000000     03  設定値４６／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 8145060.             
000000     03  設定値４７／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 9366819.             
000000     03  設定値４８／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                10737573.             
000000     03  設定値４９／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                12271512.             
000000     03  設定値５０／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                13983816.             
000000     03  設定値５１／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                15890700.             
000000     03  設定値５２／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                18009460.             
000000     03  設定値５３／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                20358520.             
000000     03  設定値５４／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                22957480.             
000000     03  設定値５５／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                25827165.             
000000     03  設定値５６／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                28989675.             
000000     03  設定値５７／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                32468436.             
000000     03  設定値５８／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                36288252.             
000000     03  設定値５９／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                40475358.             
000000     03  設定値６０／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                45057474.             
000000     03  設定値６１／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                50063860.             
000000     03  設定値６２／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                55525372.             
000000     03  設定値６３／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                61474519.             
000000     03  設定値６４／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                67945521.             
000000     03  設定値６５／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                74974368.             
000000     03  設定値６６／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                82598880.             
000000     03  設定値６７／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                90858768.             
000000     03  設定値６８／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                99795696.             
000000     03  設定値６９／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               109453344.             
000000     03  設定値７０／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               119877472.             
000000     03  設定値７１／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               131115985.             
000000     03  設定値７２／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               143218999.             
000000     03  設定値７３／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               156238908.             
000000     03  設定値７４／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               170230452.             
000000     03  設定値７５／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               185250786.             
000000     03  設定値７６／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               201359550.             
000000     03  設定値７７／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               218618940.             
000000     03  設定値７８／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               237093780.             
000000     03  設定値７９／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               256851595.             
000000     03  設定値８０／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               277962685.             
000000     03  設定値８１／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               300500200.             
000000     03  設定値８２／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               324540216.             
000000     03  設定値８３／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               350161812.             
000000     03  設定値８４／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               377447148.             
000000     03  設定値８５／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               406481544.             
000000     03  設定値８６／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               437353560.             
000000     03  設定値８７／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               470155077.             
000000     03  設定値８８／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               504981379.             
000000     03  設定値８９／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               541931236.             
000000     03  設定値９０／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               581106988.             
000000     03  設定値９１／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               622614630.             
000000     03  設定値９２／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               666563898.             
000000     03  設定値９３／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               713068356.             
000000     03  設定値９４／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               762245484.             
000000     03  設定値９５／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               814216767.             
000000     03  設定値９６／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               869107785.             
000000     03  設定値９７／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               927048304.             
000000     03  設定値９８／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               988172368.             
000000     03  設定値９９／０６      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1052618392.             
000000     03  設定値０１／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０２／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０３／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０４／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０５／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０６／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０７／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０８／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       1.             
000000     03  設定値０９／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       8.             
000000     03  設定値１０／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      36.             
000000     03  設定値１１／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     120.             
000000     03  設定値１２／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     330.             
000000     03  設定値１３／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     792.             
000000     03  設定値１４／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1716.             
000000     03  設定値１５／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    3432.             
000000     03  設定値１６／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    6435.             
000000     03  設定値１７／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   11440.             
000000     03  設定値１８／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   19448.             
000000     03  設定値１９／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   31824.             
000000     03  設定値２０／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   50388.             
000000     03  設定値２１／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   77520.             
000000     03  設定値２２／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  116280.             
000000     03  設定値２３／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  170544.             
000000     03  設定値２４／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  245157.             
000000     03  設定値２５／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  346104.             
000000     03  設定値２６／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  480700.             
000000     03  設定値２７／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  657800.             
000000     03  設定値２８／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  888030.             
000000     03  設定値２９／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1184040.             
000000     03  設定値３０／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1560780.             
000000     03  設定値３１／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 2035800.             
000000     03  設定値３２／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 2629575.             
000000     03  設定値３３／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 3365856.             
000000     03  設定値３４／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 4272048.             
000000     03  設定値３５／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 5379616.             
000000     03  設定値３６／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 6724520.             
000000     03  設定値３７／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 8347680.             
000000     03  設定値３８／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                10295472.             
000000     03  設定値３９／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                12620256.             
000000     03  設定値４０／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                15380937.             
000000     03  設定値４１／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                18643560.             
000000     03  設定値４２／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                22481940.             
000000     03  設定値４３／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                26978328.             
000000     03  設定値４４／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                32224114.             
000000     03  設定値４５／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                38320568.             
000000     03  設定値４６／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                45379620.             
000000     03  設定値４７／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                53524680.             
000000     03  設定値４８／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                62891499.             
000000     03  設定値４９／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                73629072.             
000000     03  設定値５０／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                85900584.             
000000     03  設定値５１／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                99884400.             
000000     03  設定値５２／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               115775100.             
000000     03  設定値５３／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               133784560.             
000000     03  設定値５４／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               154143080.             
000000     03  設定値５５／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               177100560.             
000000     03  設定値５６／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               202927725.             
000000     03  設定値５７／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               231917400.             
000000     03  設定値５８／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               264385836.             
000000     03  設定値５９／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               300674088.             
000000     03  設定値６０／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               341149446.             
000000     03  設定値６１／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               386206920.             
000000     03  設定値６２／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               436270780.             
000000     03  設定値６３／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               491796152.             
000000     03  設定値６４／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               553270671.             
000000     03  設定値６５／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               621216192.             
000000     03  設定値６６／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               696190560.             
000000     03  設定値６７／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               778789440.             
000000     03  設定値６８／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               869648208.             
000000     03  設定値６９／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               969443904.             
000000     03  設定値７０／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1078897248.             
000000     03  設定値７１／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1198774720.             
000000     03  設定値７２／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1329890705.             
000000     03  設定値７３／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1473109704.             
000000     03  設定値７４／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1629348612.             
000000     03  設定値７５／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1799579064.             
000000     03  設定値７６／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1984829850.             
000000     03  設定値７７／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              2186189400.             
000000     03  設定値７８／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              2404808340.             
000000     03  設定値７９／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              2641902120.             
000000     03  設定値８０／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              2898753715.             
000000     03  設定値８１／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              3176716400.             
000000     03  設定値８２／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              3477216600.             
000000     03  設定値８３／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              3801756816.             
000000     03  設定値８４／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              4151918628.             
000000     03  設定値８５／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              4529365776.             
000000     03  設定値８６／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              4935847320.             
000000     03  設定値８７／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              5373200880.             
000000     03  設定値８８／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              5843355957.             
000000     03  設定値８９／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              6348337336.             
000000     03  設定値９０／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              6890268572.             
000000     03  設定値９１／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              7471375560.             
000000     03  設定値９２／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              8093990190.             
000000     03  設定値９３／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              8760554088.             
000000     03  設定値９４／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              9473622444.             
000000     03  設定値９５／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             10235867928.             
000000     03  設定値９６／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             11050084695.             
000000     03  設定値９７／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             11919192480.             
000000     03  設定値９８／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             12846240784.             
000000     03  設定値９９／０７      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             13834413152.             
000000     03  設定値０１／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０２／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０３／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０４／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０５／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０６／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０７／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０８／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０９／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       1.             
000000     03  設定値１０／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       9.             
000000     03  設定値１１／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      45.             
000000     03  設定値１２／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     165.             
000000     03  設定値１３／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     495.             
000000     03  設定値１４／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1287.             
000000     03  設定値１５／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    3003.             
000000     03  設定値１６／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    6435.             
000000     03  設定値１７／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   12870.             
000000     03  設定値１８／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   24310.             
000000     03  設定値１９／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   43758.             
000000     03  設定値２０／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   75582.             
000000     03  設定値２１／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  125970.             
000000     03  設定値２２／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  203490.             
000000     03  設定値２３／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  319770.             
000000     03  設定値２４／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  490314.             
000000     03  設定値２５／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  735471.             
000000     03  設定値２６／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1081575.             
000000     03  設定値２７／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1562275.             
000000     03  設定値２８／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 2220075.             
000000     03  設定値２９／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 3108105.             
000000     03  設定値３０／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 4292145.             
000000     03  設定値３１／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 5852925.             
000000     03  設定値３２／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 7888725.             
000000     03  設定値３３／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                10518300.             
000000     03  設定値３４／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                13884156.             
000000     03  設定値３５／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                18156204.             
000000     03  設定値３６／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                23535820.             
000000     03  設定値３７／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                30260340.             
000000     03  設定値３８／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                38608020.             
000000     03  設定値３９／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                48903492.             
000000     03  設定値４０／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                61523748.             
000000     03  設定値４１／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                76904685.             
000000     03  設定値４２／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                95548245.             
000000     03  設定値４３／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               118030185.             
000000     03  設定値４４／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               145008513.             
000000     03  設定値４５／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               177232627.             
000000     03  設定値４６／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               215553195.             
000000     03  設定値４７／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               260932815.             
000000     03  設定値４８／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               314457495.             
000000     03  設定値４９／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               377348994.             
000000     03  設定値５０／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               450978066.             
000000     03  設定値５１／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               536878650.             
000000     03  設定値５２／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               636763050.             
000000     03  設定値５３／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               752538150.             
000000     03  設定値５４／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               886322710.             
000000     03  設定値５５／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1040465790.             
000000     03  設定値５６／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1217566350.             
000000     03  設定値５７／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1420494075.             
000000     03  設定値５８／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1652411475.             
000000     03  設定値５９／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1916797311.             
000000     03  設定値６０／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              2217471399.             
000000     03  設定値６１／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              2558620845.             
000000     03  設定値６２／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              2944827765.             
000000     03  設定値６３／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              3381098545.             
000000     03  設定値６４／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              3872894697.             
000000     03  設定値６５／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              4426165368.             
000000     03  設定値６６／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              5047381560.             
000000     03  設定値６７／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              5743572120.             
000000     03  設定値６８／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              6522361560.             
000000     03  設定値６９／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              7392009768.             
000000     03  設定値７０／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              8361453672.             
000000     03  設定値７１／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              9440350920.             
000000     03  設定値７２／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             10639125640.             
000000     03  設定値７３／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             11969016345.             
000000     03  設定値７４／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             13442126049.             
000000     03  設定値７５／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             15071474661.             
000000     03  設定値７６／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             16871053725.             
000000     03  設定値７７／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             18855883575.             
000000     03  設定値７８／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             21042072975.             
000000     03  設定値７９／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             23446881315.             
000000     03  設定値８０／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             26088783435.             
000000     03  設定値８１／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             28987537150.             
000000     03  設定値８２／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             32164253550.             
000000     03  設定値８３／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             35641470150.             
000000     03  設定値８４／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             39443226966.             
000000     03  設定値８５／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             43595145594.             
000000     03  設定値８６／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             48124511370.             
000000     03  設定値８７／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             53060358690.             
000000     03  設定値８８／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             58433559570.             
000000     03  設定値８９／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             64276915527.             
000000     03  設定値９０／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             70625252863.             
000000     03  設定値９１／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             77515521435.             
000000     03  設定値９２／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             84986896995.             
000000     03  設定値９３／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             93080887185.             
000000     03  設定値９４／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            101841441273.             
000000     03  設定値９５／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            111315063717.             
000000     03  設定値９６／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            121550931645.             
000000     03  設定値９７／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            132601016340.             
000000     03  設定値９８／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            144520208820.             
000000     03  設定値９９／０８      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            157366449604.             
000000     03  設定値０１／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０２／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０３／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０４／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０５／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０６／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０７／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０８／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０９／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値１０／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       1.             
000000     03  設定値１１／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      10.             
000000     03  設定値１２／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      55.             
000000     03  設定値１３／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     220.             
000000     03  設定値１４／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     715.             
000000     03  設定値１５／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    2002.             
000000     03  設定値１６／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    5005.             
000000     03  設定値１７／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   11440.             
000000     03  設定値１８／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   24310.             
000000     03  設定値１９／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   48620.             
000000     03  設定値２０／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   92378.             
000000     03  設定値２１／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  167960.             
000000     03  設定値２２／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  293930.             
000000     03  設定値２３／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  497420.             
000000     03  設定値２４／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  817190.             
000000     03  設定値２５／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1307504.             
000000     03  設定値２６／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 2042975.             
000000     03  設定値２７／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 3124550.             
000000     03  設定値２８／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 4686825.             
000000     03  設定値２９／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 6906900.             
000000     03  設定値３０／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                10015005.             
000000     03  設定値３１／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                14307150.             
000000     03  設定値３２／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                20160075.             
000000     03  設定値３３／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                28048800.             
000000     03  設定値３４／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                38567100.             
000000     03  設定値３５／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                52451256.             
000000     03  設定値３６／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                70607460.             
000000     03  設定値３７／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                94143280.             
000000     03  設定値３８／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               124403620.             
000000     03  設定値３９／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               163011640.             
000000     03  設定値４０／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               211915132.             
000000     03  設定値４１／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               273438880.             
000000     03  設定値４２／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               350343565.             
000000     03  設定値４３／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               445891810.             
000000     03  設定値４４／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               563921995.             
000000     03  設定値４５／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               708930508.             
000000     03  設定値４６／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               886163135.             
000000     03  設定値４７／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1101716330.             
000000     03  設定値４８／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1362649145.             
000000     03  設定値４９／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1677106640.             
000000     03  設定値５０／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              2054455634.             
000000     03  設定値５１／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              2505433700.             
000000     03  設定値５２／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              3042312350.             
000000     03  設定値５３／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              3679075400.             
000000     03  設定値５４／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              4431613550.             
000000     03  設定値５５／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              5317936260.             
000000     03  設定値５６／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              6358402050.             
000000     03  設定値５７／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              7575968400.             
000000     03  設定値５８／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              8996462475.             
000000     03  設定値５９／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             10648873950.             
000000     03  設定値６０／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             12565671261.             
000000     03  設定値６１／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             14783142660.             
000000     03  設定値６２／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             17341763505.             
000000     03  設定値６３／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             20286591270.             
000000     03  設定値６４／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             23667689815.             
000000     03  設定値６５／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             27540584512.             
000000     03  設定値６６／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             31966749880.             
000000     03  設定値６７／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             37014131440.             
000000     03  設定値６８／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             42757703560.             
000000     03  設定値６９／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             49280065120.             
000000     03  設定値７０／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             56672074888.             
000000     03  設定値７１／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             65033528560.             
000000     03  設定値７２／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             74473879480.             
000000     03  設定値７３／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             85113005120.             
000000     03  設定値７４／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             97082021465.             
000000     03  設定値７５／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            110524147514.             
000000     03  設定値７６／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            125595622175.             
000000     03  設定値７７／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            142466675900.             
000000     03  設定値７８／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            161322559475.             
000000     03  設定値７９／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            182364632450.             
000000     03  設定値８０／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            205811513765.             
000000     03  設定値８１／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            231900297200.             
000000     03  設定値８２／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            260887834350.             
000000     03  設定値８３／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            293052087900.             
000000     03  設定値８４／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            328693558050.             
000000     03  設定値８５／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            368136785016.             
000000     03  設定値８６／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            411731930610.             
000000     03  設定値８７／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            459856441980.             
000000     03  設定値８８／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            512916800670.             
000000     03  設定値８９／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            571350360240.             
000000     03  設定値９０／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            635627275767.             
000000     03  設定値９１／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            706252528630.             
000000     03  設定値９２／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            783768050065.             
000000     03  設定値９３／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            868754947060.             
000000     03  設定値９４／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            961835834245.             
000000     03  設定値９５／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           1063677275518.             
000000     03  設定値９６／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           1174992339235.             
000000     03  設定値９７／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           1296543270880.             
000000     03  設定値９８／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           1429144287220.             
000000     03  設定値９９／０９      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           1573664496040.             
000000     03  設定値０１／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０２／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０３／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０４／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０５／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０６／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０７／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０８／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０９／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値１０／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値１１／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       1.             
000000     03  設定値１２／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      11.             
000000     03  設定値１３／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      66.             
000000     03  設定値１４／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     286.             
000000     03  設定値１５／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1001.             
000000     03  設定値１６／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    3003.             
000000     03  設定値１７／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    8008.             
000000     03  設定値１８／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   19448.             
000000     03  設定値１９／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   43758.             
000000     03  設定値２０／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   92378.             
000000     03  設定値２１／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  184756.             
000000     03  設定値２２／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  352716.             
000000     03  設定値２３／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  646646.             
000000     03  設定値２４／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1144066.             
000000     03  設定値２５／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1961256.             
000000     03  設定値２６／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 3268760.             
000000     03  設定値２７／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 5311735.             
000000     03  設定値２８／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 8436285.             
000000     03  設定値２９／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                13123110.             
000000     03  設定値３０／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                20030010.             
000000     03  設定値３１／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                30045015.             
000000     03  設定値３２／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                44352165.             
000000     03  設定値３３／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                64512240.             
000000     03  設定値３４／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                92561040.             
000000     03  設定値３５／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               131128140.             
000000     03  設定値３６／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               183579396.             
000000     03  設定値３７／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               254186856.             
000000     03  設定値３８／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               348330136.             
000000     03  設定値３９／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               472733756.             
000000     03  設定値４０／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               635745396.             
000000     03  設定値４１／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               847660528.             
000000     03  設定値４２／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1121099408.             
000000     03  設定値４３／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1471442973.             
000000     03  設定値４４／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1917334783.             
000000     03  設定値４５／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              2481256778.             
000000     03  設定値４６／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              3190187286.             
000000     03  設定値４７／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              4076350421.             
000000     03  設定値４８／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              5178066751.             
000000     03  設定値４９／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              6540715896.             
000000     03  設定値５０／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              8217822536.             
000000     03  設定値５１／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             10272278170.             
000000     03  設定値５２／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             12777711870.             
000000     03  設定値５３／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             15820024220.             
000000     03  設定値５４／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             19499099620.             
000000     03  設定値５５／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             23930713170.             
000000     03  設定値５６／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             29248649430.             
000000     03  設定値５７／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             35607051480.             
000000     03  設定値５８／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             43183019880.             
000000     03  設定値５９／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             52179482355.             
000000     03  設定値６０／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             62828356305.             
000000     03  設定値６１／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             75394027566.             
000000     03  設定値６２／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             90177170226.             
000000     03  設定値６３／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            107518933731.             
000000     03  設定値６４／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            127805525001.             
000000     03  設定値６５／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            151473214816.             
000000     03  設定値６６／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            179013799328.             
000000     03  設定値６７／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            210980549208.             
000000     03  設定値６８／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            247994680648.             
000000     03  設定値６９／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            290752384208.             
000000     03  設定値７０／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            340032449328.             
000000     03  設定値７１／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            396704524216.             
000000     03  設定値７２／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            461738052776.             
000000     03  設定値７３／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            536211932256.             
000000     03  設定値７４／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            621324937376.             
000000     03  設定値７５／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            718406958841.             
000000     03  設定値７６／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            828931106355.             
000000     03  設定値７７／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            954526728530.             
000000     03  設定値７８／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           1096993404430.             
000000     03  設定値７９／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           1258315963905.             
000000     03  設定値８０／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           1440680596355.             
000000     03  設定値８１／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           1646492110120.             
000000     03  設定値８２／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           1878392407320.             
000000     03  設定値８３／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           2139280241670.             
000000     03  設定値８４／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           2432332329570.             
000000     03  設定値８５／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           2761025887620.             
000000     03  設定値８６／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           3129162672636.             
000000     03  設定値８７／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           3540894603246.             
000000     03  設定値８８／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           4000751045226.             
000000     03  設定値８９／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           4513667845896.             
000000     03  設定値９０／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           5085018206136.             
000000     03  設定値９１／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           5720645481903.             
000000     03  設定値９２／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           6426898010533.             
000000     03  設定値９３／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           7210666060598.             
000000     03  設定値９４／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           8079421007658.             
000000     03  設定値９５／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           9041256841903.             
000000     03  設定値９６／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          10104934117421.             
000000     03  設定値９７／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          11279926456656.             
000000     03  設定値９８／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          12576469727536.             
000000     03  設定値９９／１０      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          14005614014756.             
000000     03  設定値０１／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０２／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０３／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０４／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０５／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０６／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０７／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０８／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０９／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値１０／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値１１／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値１２／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       1.             
000000     03  設定値１３／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      12.             
000000     03  設定値１４／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      78.             
000000     03  設定値１５／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     364.             
000000     03  設定値１６／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1365.             
000000     03  設定値１７／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    4368.             
000000     03  設定値１８／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   12376.             
000000     03  設定値１９／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   31824.             
000000     03  設定値２０／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   75582.             
000000     03  設定値２１／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  167960.             
000000     03  設定値２２／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  352716.             
000000     03  設定値２３／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  705432.             
000000     03  設定値２４／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1352078.             
000000     03  設定値２５／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 2496144.             
000000     03  設定値２６／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 4457400.             
000000     03  設定値２７／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 7726160.             
000000     03  設定値２８／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                13037895.             
000000     03  設定値２９／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                21474180.             
000000     03  設定値３０／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                34597290.             
000000     03  設定値３１／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                54627300.             
000000     03  設定値３２／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                84672315.             
000000     03  設定値３３／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               129024480.             
000000     03  設定値３４／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               193536720.             
000000     03  設定値３５／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               286097760.             
000000     03  設定値３６／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               417225900.             
000000     03  設定値３７／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               600805296.             
000000     03  設定値３８／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               854992152.             
000000     03  設定値３９／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1203322288.             
000000     03  設定値４０／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1676056044.             
000000     03  設定値４１／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              2311801440.             
000000     03  設定値４２／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              3159461968.             
000000     03  設定値４３／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              4280561376.             
000000     03  設定値４４／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              5752004349.             
000000     03  設定値４５／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              7669339132.             
000000     03  設定値４６／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             10150595910.             
000000     03  設定値４７／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             13340783196.             
000000     03  設定値４８／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             17417133617.             
000000     03  設定値４９／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             22595200368.             
000000     03  設定値５０／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             29135916264.             
000000     03  設定値５１／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             37353738800.             
000000     03  設定値５２／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             47626016970.             
000000     03  設定値５３／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             60403728840.             
000000     03  設定値５４／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             76223753060.             
000000     03  設定値５５／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             95722852680.             
000000     03  設定値５６／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            119653565850.             
000000     03  設定値５７／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            148902215280.             
000000     03  設定値５８／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            184509266760.             
000000     03  設定値５９／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            227692286640.             
000000     03  設定値６０／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            279871768995.             
000000     03  設定値６１／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            342700125300.             
000000     03  設定値６２／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            418094152866.             
000000     03  設定値６３／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            508271323092.             
000000     03  設定値６４／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            615790256823.             
000000     03  設定値６５／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            743595781824.             
000000     03  設定値６６／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            895068996640.             
000000     03  設定値６７／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           1074082795968.             
000000     03  設定値６８／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           1285063345176.             
000000     03  設定値６９／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           1533058025824.             
000000     03  設定値７０／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           1823810410032.             
000000     03  設定値７１／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           2163842859360.             
000000     03  設定値７２／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           2560547383576.             
000000     03  設定値７３／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           3022285436352.             
000000     03  設定値７４／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           3558497368608.             
000000     03  設定値７５／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           4179822305984.             
000000     03  設定値７６／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           4898229264825.             
000000     03  設定値７７／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           5727160371180.             
000000     03  設定値７８／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           6681687099710.             
000000     03  設定値７９／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           7778680504140.             
000000     03  設定値８０／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           9036996468045.             
000000     03  設定値８１／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          10477677064400.             
000000     03  設定値８２／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          12124169174520.             
000000     03  設定値８３／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          14002561581840.             
000000     03  設定値８４／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          16141841823510.             
000000     03  設定値８５／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          18574174153080.             
000000     03  設定値８６／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          21335200040700.             
000000     03  設定値８７／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          24464362713336.             
000000     03  設定値８８／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          28005257316582.             
000000     03  設定値８９／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          32006008361808.             
000000     03  設定値９０／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          36519676207704.             
000000     03  設定値９１／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          41604694413840.             
000000     03  設定値９２／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          47325339895743.             
000000     03  設定値９３／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          53752237906276.             
000000     03  設定値９４／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          60962903966874.             
000000     03  設定値９５／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          69042324974532.             
000000     03  設定値９６／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          78083581816435.             
000000     03  設定値９７／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          88188515933856.             
000000     03  設定値９８／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          99468442390512.             
000000     03  設定値９９／１１      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE         112044912118048.             
000000     03  設定値０１／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０２／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０３／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０４／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０５／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０６／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０７／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０８／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値０９／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値１０／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値１１／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値１２／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       0.             
000000     03  設定値１３／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                       1.             
000000     03  設定値１４／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      13.             
000000     03  設定値１５／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                      91.             
000000     03  設定値１６／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                     455.             
000000     03  設定値１７／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    1820.             
000000     03  設定値１８／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                    6188.             
000000     03  設定値１９／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   18564.             
000000     03  設定値２０／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                   50388.             
000000     03  設定値２１／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  125970.             
000000     03  設定値２２／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  293930.             
000000     03  設定値２３／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                  646646.             
000000     03  設定値２４／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 1352078.             
000000     03  設定値２５／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 2704156.             
000000     03  設定値２６／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 5200300.             
000000     03  設定値２７／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                 9657700.             
000000     03  設定値２８／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                17383860.             
000000     03  設定値２９／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                30421755.             
000000     03  設定値３０／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                51895935.             
000000     03  設定値３１／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE                86493225.             
000000     03  設定値３２／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               141120525.             
000000     03  設定値３３／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               225792840.             
000000     03  設定値３４／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               354817320.             
000000     03  設定値３５／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               548354040.             
000000     03  設定値３６／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE               834451800.             
000000     03  設定値３７／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1251677700.             
000000     03  設定値３８／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              1852482996.             
000000     03  設定値３９／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              2707475148.             
000000     03  設定値４０／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              3910797436.             
000000     03  設定値４１／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              5586853480.             
000000     03  設定値４２／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE              7898654920.             
000000     03  設定値４３／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             11058116888.             
000000     03  設定値４４／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             15338678264.             
000000     03  設定値４５／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             21090682613.             
000000     03  設定値４６／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             28760021745.             
000000     03  設定値４７／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             38910617655.             
000000     03  設定値４８／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             52251400851.             
000000     03  設定値４９／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             69668534468.             
000000     03  設定値５０／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE             92263734836.             
000000     03  設定値５１／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            121399651100.             
000000     03  設定値５２／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            158753389900.             
000000     03  設定値５３／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            206379406870.             
000000     03  設定値５４／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            266783135710.             
000000     03  設定値５５／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            343006888770.             
000000     03  設定値５６／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            438729741450.             
000000     03  設定値５７／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            558383307300.             
000000     03  設定値５８／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            707285522580.             
000000     03  設定値５９／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE            891794789340.             
000000     03  設定値６０／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           1119487075980.             
000000     03  設定値６１／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           1399358844975.             
000000     03  設定値６２／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           1742058970275.             
000000     03  設定値６３／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           2160153123141.             
000000     03  設定値６４／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           2668424446233.             
000000     03  設定値６５／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           3284214703056.             
000000     03  設定値６６／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           4027810484880.             
000000     03  設定値６７／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           4922879481520.             
000000     03  設定値６８／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           5996962277488.             
000000     03  設定値６９／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           7282025622664.             
000000     03  設定値７０／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE           8815083648488.             
000000     03  設定値７１／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          10638894058520.             
000000     03  設定値７２／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          12802736917880.             
000000     03  設定値７３／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          15363284301456.             
000000     03  設定値７４／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          18385569737808.             
000000     03  設定値７５／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          21944067106416.             
000000     03  設定値７６／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          26123889412400.             
000000     03  設定値７７／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          31022118677225.             
000000     03  設定値７８／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          36749279048405.             
000000     03  設定値７９／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          43430966148115.             
000000     03  設定値８０／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          51209646652255.             
000000     03  設定値８１／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          60246643120300.             
000000     03  設定値８２／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          70724320184700.             
000000     03  設定値８３／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          82848489359220.             
000000     03  設定値８４／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE          96851050941060.             
000000     03  設定値８５／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE         112992892764570.             
000000     03  設定値８６／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE         131567066917650.             
000000     03  設定値８７／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE         152902266958350.             
000000     03  設定値８８／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE         177366629671686.             
000000     03  設定値８９／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE         205371886988268.             
000000     03  設定値９０／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE         237377895350076.             
000000     03  設定値９１／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE         273897571557780.             
000000     03  設定値９２／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE         315502265971620.             
000000     03  設定値９３／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE         362827605867363.             
000000     03  設定値９４／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE         416579843773639.             
000000     03  設定値９５／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE         477542747740513.             
000000     03  設定値９６／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE         546585072715045.             
000000     03  設定値９７／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE         624668654531480.             
000000     03  設定値９８／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE         712857170465336.             
000000     03  設定値９９／１２      PIC  9(15)  USAGE COMP-3                           
000000                               VALUE         812325612855848.             
000000 01  ＩＮＤＥＸ定数テーブル    REDEFINES  ,                                          
000000                               インデックス定数テーブル.                              
000000     03  ＩＮＤＥＸ配列１      OCCURS  12.                                        
000000         05  ＩＮＤＥＸ配列２  OCCURS  99.                                        
000000             07  ＩＮＤＥＸ    PIC  9(15)  USAGE COMP-3.                       
000000 01  ビット列定数テーブル.                                                          
000000     03  数字０１              PIC  X(13)  VALUE                              
000000                               ""80000000000000000000000000"".            
000000     03  数字０２              PIC  X(13)  VALUE                              
000000                               ""40000000000000000000000000"".            
000000     03  数字０３              PIC  X(13)  VALUE                              
000000                               ""20000000000000000000000000"".            
000000     03  数字０４              PIC  X(13)  VALUE                              
000000                               ""10000000000000000000000000"".            
000000     03  数字０５              PIC  X(13)  VALUE                              
000000                               ""08000000000000000000000000"".            
000000     03  数字０６              PIC  X(13)  VALUE                              
000000                               ""04000000000000000000000000"".            
000000     03  数字０７              PIC  X(13)  VALUE                              
000000                               ""02000000000000000000000000"".            
000000     03  数字０８              PIC  X(13)  VALUE                              
000000                               ""01000000000000000000000000"".            
000000     03  数字０９              PIC  X(13)  VALUE                              
000000                               ""00800000000000000000000000"".            
000000     03  数字１０              PIC  X(13)  VALUE                              
000000                               ""00400000000000000000000000"".            
000000     03  数字１１              PIC  X(13)  VALUE                              
000000                               ""00200000000000000000000000"".            
000000     03  数字１２              PIC  X(13)  VALUE                              
000000                               ""00100000000000000000000000"".            
000000     03  数字１３              PIC  X(13)  VALUE                              
000000                               ""00080000000000000000000000"".            
000000     03  数字１４              PIC  X(13)  VALUE                              
000000                               ""00040000000000000000000000"".            
000000     03  数字１５              PIC  X(13)  VALUE                              
000000                               ""00020000000000000000000000"".            
000000     03  数字１６              PIC  X(13)  VALUE                              
000000                               ""00010000000000000000000000"".            
000000     03  数字１７              PIC  X(13)  VALUE                              
000000                               ""00008000000000000000000000"".            
000000     03  数字１８              PIC  X(13)  VALUE                              
000000                               ""00004000000000000000000000"".            
000000     03  数字１９              PIC  X(13)  VALUE                              
000000                               ""00002000000000000000000000"".            
000000     03  数字２０              PIC  X(13)  VALUE                              
000000                               ""00001000000000000000000000"".            
000000     03  数字２１              PIC  X(13)  VALUE                              
000000                               ""00000800000000000000000000"".            
000000     03  数字２２              PIC  X(13)  VALUE                              
000000                               ""00000400000000000000000000"".            
000000     03  数字２３              PIC  X(13)  VALUE                              
000000                               ""00000200000000000000000000"".            
000000     03  数字２４              PIC  X(13)  VALUE                              
000000                               ""00000100000000000000000000"".            
000000     03  数字２５              PIC  X(13)  VALUE                              
000000                               ""00000080000000000000000000"".            
000000     03  数字２６              PIC  X(13)  VALUE                              
000000                               ""00000040000000000000000000"".            
000000     03  数字２７              PIC  X(13)  VALUE                              
000000                               ""00000020000000000000000000"".            
000000     03  数字２８              PIC  X(13)  VALUE                              
000000                               ""00000010000000000000000000"".            
000000     03  数字２９              PIC  X(13)  VALUE                              
000000                               ""00000008000000000000000000"".            
000000     03  数字３０              PIC  X(13)  VALUE                              
000000                               ""00000004000000000000000000"".            
000000     03  数字３１              PIC  X(13)  VALUE                              
000000                               ""00000002000000000000000000"".            
000000     03  数字３２              PIC  X(13)  VALUE                              
000000                               ""00000001000000000000000000"".            
000000     03  数字３３              PIC  X(13)  VALUE                              
000000                               ""00000000800000000000000000"".            
000000     03  数字３４              PIC  X(13)  VALUE                              
000000                               ""00000000400000000000000000"".            
000000     03  数字３５              PIC  X(13)  VALUE                              
000000                               ""00000000200000000000000000"".            
000000     03  数字３６              PIC  X(13)  VALUE                              
000000                               ""00000000100000000000000000"".            
000000     03  数字３７              PIC  X(13)  VALUE                              
000000                               ""00000000080000000000000000"".            
000000     03  数字３８              PIC  X(13)  VALUE                              
000000                               ""00000000040000000000000000"".            
000000     03  数字３９              PIC  X(13)  VALUE                              
000000                               ""00000000020000000000000000"".            
000000     03  数字４０              PIC  X(13)  VALUE                              
000000                               ""00000000010000000000000000"".            
000000     03  数字４１              PIC  X(13)  VALUE                              
000000                               ""00000000008000000000000000"".            
000000     03  数字４２              PIC  X(13)  VALUE                              
000000                               ""00000000004000000000000000"".            
000000     03  数字４３              PIC  X(13)  VALUE                              
000000                               ""00000000002000000000000000"".            
000000     03  数字４４              PIC  X(13)  VALUE                              
000000                               ""00000000001000000000000000"".            
000000     03  数字４５              PIC  X(13)  VALUE                              
000000                               ""00000000000800000000000000"".            
000000     03  数字４６              PIC  X(13)  VALUE                              
000000                               ""00000000000400000000000000"".            
000000     03  数字４７              PIC  X(13)  VALUE                              
000000                               ""00000000000200000000000000"".            
000000     03  数字４８              PIC  X(13)  VALUE                              
000000                               ""00000000000100000000000000"".            
000000     03  数字４９              PIC  X(13)  VALUE                              
000000                               ""00000000000080000000000000"".            
000000     03  数字５０              PIC  X(13)  VALUE                              
000000                               ""00000000000040000000000000"".            
000000     03  数字５１              PIC  X(13)  VALUE                              
000000                               ""00000000000020000000000000"".            
000000     03  数字５２              PIC  X(13)  VALUE                              
000000                               ""00000000000010000000000000"".            
000000     03  数字５３              PIC  X(13)  VALUE                              
000000                               ""00000000000008000000000000"".            
000000     03  数字５４              PIC  X(13)  VALUE                              
000000                               ""00000000000004000000000000"".            
000000     03  数字５５              PIC  X(13)  VALUE                              
000000                               ""00000000000002000000000000"".            
000000     03  数字５６              PIC  X(13)  VALUE                              
000000                               ""00000000000001000000000000"".            
000000     03  数字５７              PIC  X(13) VALUE                               
000000                               ""00000000000000800000000000"".            
000000     03  数字５８              PIC  X(13) VALUE                               
000000                               ""00000000000000400000000000"".            
000000     03  数字５９              PIC  X(13) VALUE                               
000000                               ""00000000000000200000000000"".            
000000     03  数字６０              PIC  X(13) VALUE                               
000000                               ""00000000000000100000000000"".            
000000     03  数字６１              PIC  X(13) VALUE                               
000000                               ""00000000000000080000000000"".            
000000     03  数字６２              PIC  X(13) VALUE                               
000000                               ""00000000000000040000000000"".            
000000     03  数字６３              PIC  X(13) VALUE                               
000000                               ""00000000000000020000000000"".            
000000     03  数字６４              PIC  X(13) VALUE                               
000000                               ""00000000000000010000000000"".            
000000     03  数字６５              PIC  X(13) VALUE                               
000000                               ""00000000000000008000000000"".            
000000     03  数字６６              PIC  X(13) VALUE                               
000000                               ""00000000000000004000000000"".            
000000     03  数字６７              PIC  X(13) VALUE                               
000000                               ""00000000000000002000000000"".            
000000     03  数字６８              PIC  X(13) VALUE                               
000000                               ""00000000000000001000000000"".            
000000     03  数字６９              PIC  X(13) VALUE                               
000000                               ""00000000000000000800000000"".            
000000     03  数字７０              PIC  X(13) VALUE                               
000000                               ""00000000000000000400000000"".            
000000     03  数字７１              PIC  X(13) VALUE                               
000000                               ""00000000000000000200000000"".            
000000     03  数字７２              PIC  X(13) VALUE                               
000000                               ""00000000000000000100000000"".            
000000     03  数字７３              PIC  X(13) VALUE                               
000000                               ""00000000000000000080000000"".            
000000     03  数字７４              PIC  X(13) VALUE                               
000000                               ""00000000000000000040000000"".            
000000     03  数字７５              PIC  X(13) VALUE                               
000000                               ""00000000000000000020000000"".            
000000     03  数字７６              PIC  X(13) VALUE                               
000000                               ""00000000000000000010000000"".            
000000     03  数字７７              PIC  X(13) VALUE                               
000000                               ""00000000000000000008000000"".            
000000     03  数字７８              PIC  X(13) VALUE                               
000000                               ""00000000000000000004000000"".            
000000     03  数字７９              PIC  X(13) VALUE                               
000000                               ""00000000000000000002000000"".            
000000     03  数字８０              PIC  X(13) VALUE                               
000000                               ""00000000000000000001000000"".            
000000     03  数字８１              PIC  X(13) VALUE                               
000000                               ""00000000000000000000800000"".            
000000     03  数字８２              PIC  X(13) VALUE                               
000000                               ""00000000000000000000400000"".            
000000     03  数字８３              PIC  X(13) VALUE                               
000000                               ""00000000000000000000200000"".            
000000     03  数字８４              PIC  X(13) VALUE                               
000000                               ""00000000000000000000100000"".            
000000     03  数字８５              PIC  X(13) VALUE                               
000000                               ""00000000000000000000080000"".            
000000     03  数字８６              PIC  X(13) VALUE                               
000000                               ""00000000000000000000040000"".            
000000     03  数字８７              PIC  X(13) VALUE                               
000000                               ""00000000000000000000020000"".            
000000     03  数字８８              PIC  X(13) VALUE                               
000000                               ""00000000000000000000010000"".            
000000     03  数字８９              PIC  X(13) VALUE                               
000000                               ""00000000000000000000008000"".            
000000     03  数字９０              PIC  X(13) VALUE                               
000000                               ""00000000000000000000004000"".            
000000     03  数字９１              PIC  X(13) VALUE                               
000000                               ""00000000000000000000002000"".            
000000     03  数字９２              PIC  X(13) VALUE                               
000000                               ""00000000000000000000001000"".            
000000     03  数字９３              PIC  X(13) VALUE                               
000000                               ""00000000000000000000000800"".            
000000     03  数字９４              PIC  X(13) VALUE                               
000000                               ""00000000000000000000000400"".            
000000     03  数字９５              PIC  X(13) VALUE                               
000000                               ""00000000000000000000000200"".            
000000     03  数字９６              PIC  X(13) VALUE                               
000000                               ""00000000000000000000000100"".            
000000     03  数字９７              PIC  X(13) VALUE                               
000000                               ""00000000000000000000000080"".            
000000     03  数字９８              PIC  X(13) VALUE                               
000000                               ""00000000000000000000000040"".            
000000     03  数字９９              PIC  X(13) VALUE                               
000000                               ""00000000000000000000000020"".            
000000 01  ＢＩＴ列定数テーブル      REDEFINES  ,                                         
000000                               ビット列定数テーブル.                                
000000     03  ＢＩＴ配列            OCCURS  99.                                     
000000         05  ＢＩＴ            PIC  X(13).                                   
000000 01  WK-AREA.                                                             
000000     03  WK-CNT1                   USAGE COMP-1.                          
000000     03  WK-CNT2                   USAGE COMP-1.                          
000000     03  WK-ERR                    PIC  9(01).                            
000000     03  ＷＫ数字                  PIC  X(24).                                
000000     03  ＷＫ数字Ｒ                REDEFINES  ＷＫ数字.                            
000000         05  ＷＫ申込数字編集      OCCURS  12.                                    
000000             07  ＷＫ申込数字      PIC  9(02).                                  
000000     03  ＷＫ拡張数字              PIC  X(36).                                  
000000     03  ＷＫ拡張数字Ｒ            REDEFINES  ＷＫ拡張数字.                            
000000         05  ＷＫ拡張申込数字編集  OCCURS  12.                                      
000000             07  ＷＫ拡張申込数字  PIC  9(03).                                    
000000     03  ＷＫインデックス          PIC  9(15) USAGE COMP-3.                       
000000     03  ＷＫインデックス２        PIC  9(15) USAGE COMP-3.                        
000000     03  ＷＫインデックス３        PIC  9(15) USAGE COMP-3.                        
000000     03  ＷＫインデックス４        PIC  9(15) USAGE COMP-3.                        
000000     03  ＷＫインデックス５        PIC  9(15) USAGE COMP-3.                        
000000     03  ＷＫインデックス６        PIC  9(15) USAGE COMP-3.                        
000000     03  ＷＫインデックス７        PIC  9(15) USAGE COMP-3.                        
000000     03  ＷＫインデックス８        PIC  9(15) USAGE COMP-3.                        
000000     03  ＷＫビット列              PIC  X(13).                                  
000000     03  ＷＫ一致桁数              PIC  9(02).                                  
000000     03  ＷＫ一致位置              PIC  X(24).                                  
000000     03  Ａ                        PIC  9(03).                             
000000     03  Ｂ                        PIC  9(03).                             
000000     03  Ｉ                        PIC  9(03).                             
000000     03  Ｊ                        PIC  9(03).                             
000000     03  Ｋ                        PIC  9(03).                             
000000     03  Ｌ                        PIC  9(03).                             
000000     03  Ｍ                        PIC  9(03).                             
000000     03  Ｎ                        PIC  9(03).                             
000000     03  Ｏ                        PIC  9(03).                             
000000     03  Ｐ                        PIC  9(03).                             
000000     03  Ｑ                        PIC  9(03).                             
000000     03  Ｒ                        PIC  9(03).
      *20141029追加開始
       01  NUMC-PARAM.                                                          
           COPY CLNUMC.
      *20141029追加終了
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
      *20141028修正開始                             
000000*           @ZCTABORT( MSGID  =  *SA206                                    
000000*                      PROGID =  HRATS010                                  
000000*                      CNT    =  01                                        
000000*                      TEXT1  =  IDXC-BUNSI                                
000000*                      TEXT2  =  IDXC-BUNBO   ); .
                  STOP RUN.                         
      *20141028修正終了
000000 CX00027.                                                                 
000000     IF NOT( (IDXC-TYPE < 1) OR (IDXC-TYPE > 5))GO TO CX00028. 
      *20141028修正開始     
000000*           @ZCTABORT( MSGID  =  *SA207                                    
000000*                      PROGID =  HRATS010                                  
000000*                      CNT    =  02                                        
000000*                      TEXT1  =  IDXC-TYPE    ); .
                  STOP RUN.
      *20141028修正終了                         
000000 CX00028.                                                                 
000000     MOVE ZERO TO ＷＫ数字                                                    
000000     MOVE ZERO TO ＷＫ拡張数字                                                  
000000     MOVE ZERO TO ＷＫインデックス                                                
000000     MOVE ZERO TO ＷＫインデックス２                                               
000000     MOVE ZERO TO ＷＫインデックス３                                               
000000     MOVE ZERO TO ＷＫインデックス４                                               
000000     MOVE ZERO TO ＷＫインデックス５                                               
000000     MOVE ZERO TO ＷＫインデックス６                                               
000000     MOVE ZERO TO ＷＫインデックス７                                               
000000     MOVE ZERO TO ＷＫインデックス８                                               
000000     MOVE LOW-VALUE TO ＷＫビット列                                             
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
000000     MOVE IDXC-CGNUM TO ＷＫ数字 .                                            
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
000000     MOVE ＷＫインデックス TO IDXC-CGIDX .                                        
000000 CX00038.                                                                 
           DISPLAY "CX00038" UPON CONSOLE
000000     IF NOT(IDXC-BITCODE = 1)GO TO CX00039.                               
000000     MOVE ＷＫビット列 TO IDXC-CGBIT .                                          
000000 CX00039.                                                                 
           DISPLAY "CX00039" UPON CONSOLE
000000     IF NOT(IDXC-NUMCODE = 1)GO TO CX00040.                               
000000     MOVE ＷＫ数字 TO IDXC-CGNUM .                                            
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
000000     MOVE ＷＫインデックス TO IDXC-IDX (1) .                                      
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
000000     MOVE IDXC-BUNBO TO Ｉ                                                 
000000     COMPUTE Ｊ = IDXC-BUNSI + IDXC-TYPE - 2                               
000000     MOVE IDXC-CGIDX TO ＷＫインデックス .                                        
000000 CX00047. IF NOT( (Ｉ > ZERO) AND (Ｊ > ZERO))GO TO CX00048.                
           DISPLAY "CX00047" UPON CONSOLE
000000     IF NOT(ＷＫインデックス >= ＩＮＤＥＸ (Ｊ Ｉ))GO TO CX00049.                        
000000     COMPUTE ＷＫインデックス = ＷＫインデックス - ＩＮＤＥＸ (Ｊ Ｉ)                            
000000     MOVE Ｉ TO ＷＫ申込数字 (Ｊ)                                                 
000000     COMPUTE Ｊ = Ｊ - 1 .                                                  
000000 CX00049.                                                                 
           DISPLAY "CX00049" UPON CONSOLE
000000     COMPUTE Ｉ = Ｉ - 1 .                                                  
000000     GO TO CX00047.                                                       
000000 CX00048.                                                                 
           DISPLAY "CX00048" UPON CONSOLE
000000 CX00004. EXIT.                                                           
000000 P200-RTN .                                                               
      *20141028修正開始
000000*        @ZTSLOTWC( BUNBO     =  IDXC-BUNBO                                
000000*                   CHECKNUM  =  IDXC-CGBIT                                
000000*                   WINTIMES  =  ＷＫ一致桁数                                    
000000*                   WINADDR   =  ＷＫ一致位置     );
      *** パラメータ　チェック ***                                   
           IF  IDXC-BUNBO  =  LOW-VALUE    THEN                                              
                   DISPLAY "分母を指定して下さい"                               
                   STOP RUN.                                                         
           IF  IDXC-CGBIT  =  LOW-VALUE    THEN                                           
                   DISPLAY "対象数字を指定して下さい"                           
                   STOP RUN.                                                         
           IF  ＷＫ一致桁数  =  LOW-VALUE    THEN                                           
                   DISPLAY "一致数の受入項目を指定して下さい"                   
                   STOP RUN.                                                         
      *** 入力パラメータ移送 ***                                     
           MOVE IDXC-BUNBO    TO NUMC-BUNBO
           MOVE IDXC-CGBIT TO NUMC-CHECKNUM
      *** ロト当せん数字チェックモジュール呼び出し ***               
           CALL "HSAAL020" USING NUMC-PARAM
      *** 出力パラメータ移送 ***                                       
           MOVE NUMC-WINTIMES TO  ＷＫ一致桁数
           IF  ＷＫ一致位置  NOT =  LOW-VALUE    THEN                                           
               MOVE NUMC-WINADDR TO ＷＫ一致位置. 
      *20141028修正終了                            
000000     MOVE ＷＫ一致位置 TO ＷＫ数字 .                                                
000000 CX00005. EXIT.                                                           
000000 P300-RTN .                                                               
000000     MOVE 1 TO WK-CNT1                                                    
000000     COMPUTE WK-CNT2 = IDXC-BUNSI - 1 .                                   
000000 CX00050. IF NOT(WK-CNT1 <= WK-CNT2)GO TO CX00051.                        
           DISPLAY "CX00050" UPON CONSOLE
000000     MOVE ＷＫ申込数字 (WK-CNT1) TO ＷＫ拡張申込数字 (WK-CNT1)                          
000000           ADD  1  TO  WK-CNT1.                                           
000000     GO TO CX00050.                                                       
000000 CX00051.                                                                 
           DISPLAY "CX00051" UPON CONSOLE
000000     COMPUTE ＷＫ拡張申込数字 (IDXC-BUNSI) = IDXC-BUNBO + 1                       
000000     MOVE 1 TO Ｉ                                                          
000000     MOVE 1 TO Ｊ                                                          
000000     MOVE 1 TO Ｋ .                                                        
000000 CX00052. IF NOT(Ｋ <= IDXC-BUNSI)GO TO CX00053.                           
           DISPLAY "CX00052" UPON CONSOLE
000000     IF NOT(Ｊ < ＷＫ拡張申込数字 (Ｋ))GO TO CX00054.                               
000000     MOVE 1 TO Ｌ                                                          
000000     MOVE ZERO TO ＷＫインデックス .                                              
000000 CX00055. IF NOT(Ｌ < IDXC-BUNSI)GO TO CX00056.                            
           DISPLAY "CX00055" UPON CONSOLE
000000     MOVE ＷＫ拡張申込数字 (Ｌ) TO Ｍ .                                             
000000     IF NOT(Ｋ > Ｌ)GO TO CX00057.                                          
000000     COMPUTE ＷＫインデックス = ＷＫインデックス + ＩＮＤＥＸ (Ｌ Ｍ) .                          
000000     GO TO CX00058.                                                       
000000 CX00057.                                                                 
           DISPLAY "CX00057" UPON CONSOLE
000000     COMPUTE ＷＫインデックス = ＷＫインデックス + ＩＮＤＥＸ (Ｌ + 1 Ｍ) .                      
000000 CX00058.                                                                 
           DISPLAY "CX00058" UPON CONSOLE
000000                 ADD  1  TO  Ｌ.                                           
000000     GO TO CX00055.                                                       
000000 CX00056.                                                                 
           DISPLAY "CX00056" UPON CONSOLE
000000 CX00059. IF NOT(Ｊ < ＷＫ拡張申込数字 (Ｋ))GO TO CX00060.                          
           DISPLAY "CX00059" UPON CONSOLE
000000     COMPUTE IDXC-IDX (Ｉ) = ＷＫインデックス + ＩＮＤＥＸ (Ｋ Ｊ)                        
000000                 ADD  1  TO  Ｉ.                                           
000000                 ADD  1  TO  Ｊ.                                           
000000     GO TO CX00059.                                                       
000000 CX00060.                                                                 
           DISPLAY "CX00060" UPON CONSOLE
000000 CX00054.                                                                 
           DISPLAY "CX00054" UPON CONSOLE
000000           ADD  1  TO  Ｊ.                                                 
000000           ADD  1  TO  Ｋ.                                                 
000000     GO TO CX00052.                                                       
000000 CX00053.                                                                 
           DISPLAY "CX00053" UPON CONSOLE
000000 CX00006. EXIT.                                                           
000000 P400-RTN .                                                               
000000     MOVE 1 TO Ａ                                                          
000000     MOVE 1 TO Ｊ .                                                        
000000 CX00061. IF NOT(Ｊ < IDXC-TYPE)GO TO CX00062.                             
           DISPLAY "CX00061" UPON CONSOLE
000000     MOVE ＷＫ申込数字 (Ｊ) TO Ｂ                                                 
000000     MOVE ＩＮＤＥＸ (1 Ｂ) TO ＷＫインデックス                                         
000000     COMPUTE Ｋ = Ｊ + 1 .                                                  
000000 CX00063. IF NOT(Ｋ < IDXC-TYPE + 1)GO TO CX00064.                         
           DISPLAY "CX00063" UPON CONSOLE
000000     MOVE ＷＫ申込数字 (Ｋ) TO Ｂ                                                 
000000     COMPUTE ＷＫインデックス２ = ＷＫインデックス + ＩＮＤＥＸ (2 Ｂ)                           
000000     COMPUTE Ｌ = Ｋ + 1                                                    
000000     PERFORM BN04-RTN THRU CX00008                                        
000000              ADD  1  TO  Ｋ.                                              
000000     GO TO CX00063.                                                       
000000 CX00064.                                                                 
           DISPLAY "CX00064" UPON CONSOLE
000000           ADD  1  TO  Ｊ.                                                 
000000     GO TO CX00061.                                                       
000000 CX00062.                                                                 
           DISPLAY "CX00062" UPON CONSOLE
000000 CX00007. EXIT.                                                           
000000 BN04-RTN .                                                               
000000 CX00065. IF NOT(Ｌ < IDXC-TYPE + 2)GO TO CX00066.                         
           DISPLAY "CX00065" UPON CONSOLE
000000     MOVE ＷＫ申込数字 (Ｌ) TO Ｂ                                                 
000000     COMPUTE ＷＫインデックス３ = ＷＫインデックス２ + ＩＮＤＥＸ (3 Ｂ)                          
000000     COMPUTE Ｍ = Ｌ + 1 .                                                  
000000     IF NOT(IDXC-BUNSI = 4)GO TO CX00067.                                 
000000 CX00068. IF NOT(Ｍ < IDXC-TYPE + 3)GO TO CX00069.                         
           DISPLAY "CX00068" UPON CONSOLE
000000     MOVE ＷＫ申込数字 (Ｍ) TO Ｂ                                                 
000000     COMPUTE IDXC-IDX (Ａ) = ＷＫインデックス３ + ＩＮＤＥＸ (IDXC-BUNSI Ｂ)              
000000                 ADD  1  TO  Ａ.                                           
000000                 ADD  1  TO  Ｍ.                                           
000000     GO TO CX00068.                                                       
000000 CX00069.                                                                 
           DISPLAY "CX00069" UPON CONSOLE
000000     GO TO CX00070.                                                       
000000 CX00067.                                                                 
           DISPLAY "CX00067" UPON CONSOLE
000000     PERFORM BN05-RTN THRU CX00009 .                                      
000000 CX00070.                                                                 
           DISPLAY "CX00070" UPON CONSOLE
000000           ADD  1  TO  Ｌ.                                                 
000000     GO TO CX00065.                                                       
000000 CX00066.                                                                 
           DISPLAY "CX00066" UPON CONSOLE
000000 CX00008. EXIT.                                                           
000000 BN05-RTN .                                                               
000000 CX00071. IF NOT(Ｍ < IDXC-TYPE + 3)GO TO CX00072.                         
           DISPLAY "CX00071" UPON CONSOLE
000000     MOVE ＷＫ申込数字 (Ｍ) TO Ｂ                                                 
000000     COMPUTE ＷＫインデックス４ = ＷＫインデックス３ + ＩＮＤＥＸ (4 Ｂ)                          
000000     COMPUTE Ｎ = Ｍ + 1 .                                                  
000000     IF NOT(IDXC-BUNSI = 5)GO TO CX00073.                                 
000000 CX00074. IF NOT(Ｎ < IDXC-TYPE + 4)GO TO CX00075.                         
           DISPLAY "CX00074" UPON CONSOLE
000000     MOVE ＷＫ申込数字 (Ｎ) TO Ｂ                                                 
000000     COMPUTE IDXC-IDX (Ａ) = ＷＫインデックス４ + ＩＮＤＥＸ (IDXC-BUNSI Ｂ)              
000000                 ADD  1  TO  Ａ.                                           
000000                 ADD  1  TO  Ｎ.                                           
000000     GO TO CX00074.                                                       
000000 CX00075.                                                                 
           DISPLAY "CX00075" UPON CONSOLE
000000     GO TO CX00076.                                                       
000000 CX00073.                                                                 
           DISPLAY "CX00073" UPON CONSOLE
000000     PERFORM BN06-RTN THRU CX00010 .                                      
000000 CX00076.                                                                 
           DISPLAY "CX00076" UPON CONSOLE
000000           ADD  1  TO  Ｍ.                                                 
000000     GO TO CX00071.                                                       
000000 CX00072.                                                                 
           DISPLAY "CX00072" UPON CONSOLE
000000 CX00009. EXIT.                                                           
000000 BN06-RTN .                                                               
000000 CX00077. IF NOT(Ｎ < IDXC-TYPE + 4)GO TO CX00078.                         
           DISPLAY "CX00077" UPON CONSOLE
000000     MOVE ＷＫ申込数字 (Ｎ) TO Ｂ                                                 
000000     COMPUTE ＷＫインデックス５ = ＷＫインデックス４ + ＩＮＤＥＸ (5 Ｂ)                          
000000     COMPUTE Ｏ = Ｎ + 1 .                                                  
000000     IF NOT(IDXC-BUNSI = 6)GO TO CX00079.                                 
000000 CX00080. IF NOT(Ｏ < IDXC-TYPE + 5)GO TO CX00081.                         
           DISPLAY "CX00080" UPON CONSOLE
000000     MOVE ＷＫ申込数字 (Ｏ) TO Ｂ                                                 
000000     COMPUTE IDXC-IDX (Ａ) = ＷＫインデックス５ + ＩＮＤＥＸ (IDXC-BUNSI Ｂ)              
000000                 ADD  1  TO  Ａ.                                           
000000                 ADD  1  TO  Ｏ.                                           
000000     GO TO CX00080.                                                       
000000 CX00081.                                                                 
           DISPLAY "CX00081" UPON CONSOLE
000000     GO TO CX00082.                                                       
000000 CX00079.                                                                 
           DISPLAY "CX00079" UPON CONSOLE
000000     PERFORM BN07-RTN THRU CX00011 .                                      
000000 CX00082.                                                                 
           DISPLAY "CX00082" UPON CONSOLE
000000           ADD  1  TO  Ｎ.                                                 
000000     GO TO CX00077.                                                       
000000 CX00078.                                                                 
           DISPLAY "CX00078" UPON CONSOLE
000000 CX00010. EXIT.                                                           
000000 BN07-RTN .                                                               
000000 CX00083. IF NOT(Ｏ < IDXC-TYPE + 5)GO TO CX00084.                         
           DISPLAY "CX00083" UPON CONSOLE
000000     MOVE ＷＫ申込数字 (Ｏ) TO Ｂ                                                 
000000     COMPUTE ＷＫインデックス６ = ＷＫインデックス５ + ＩＮＤＥＸ (6 Ｂ)                          
000000     COMPUTE Ｐ = Ｏ + 1 .                                                  
000000     IF NOT(IDXC-BUNSI = 7)GO TO CX00085.                                 
000000 CX00086. IF NOT(Ｐ < IDXC-TYPE + 6)GO TO CX00087.                         
           DISPLAY "CX00086" UPON CONSOLE
000000     MOVE ＷＫ申込数字 (Ｐ) TO Ｂ                                                 
000000     COMPUTE IDXC-IDX (Ａ) = ＷＫインデックス６ + ＩＮＤＥＸ (IDXC-BUNSI Ｂ)              
000000                 ADD  1  TO  Ａ.                                           
000000                 ADD  1  TO  Ｐ.                                           
000000     GO TO CX00086.                                                       
000000 CX00087.                                                                 
           DISPLAY "CX00087" UPON CONSOLE
000000     GO TO CX00088.                                                       
000000 CX00085.                                                                 
           DISPLAY "CX00085" UPON CONSOLE
000000     PERFORM BN08-RTN THRU CX00012 .                                      
000000 CX00088.                                                                 
           DISPLAY "CX00088" UPON CONSOLE
000000           ADD  1  TO  Ｏ.                                                 
000000     GO TO CX00083.                                                       
000000 CX00084.                                                                 
           DISPLAY "CX00084" UPON CONSOLE
000000 CX00011. EXIT.                                                           
000000 BN08-RTN .                                                               
000000 CX00089. IF NOT(Ｐ < IDXC-TYPE + 6)GO TO CX00090.                         
           DISPLAY "CX00089" UPON CONSOLE
000000     MOVE ＷＫ申込数字 (Ｐ) TO Ｂ                                                 
000000     COMPUTE ＷＫインデックス７ = ＷＫインデックス６ + ＩＮＤＥＸ (7 Ｂ)                          
000000     COMPUTE Ｑ = Ｐ + 1 .                                                  
000000     IF NOT(IDXC-BUNSI = 8)GO TO CX00091.                                 
000000 CX00092. IF NOT(Ｑ < IDXC-TYPE + 7)GO TO CX00093.                         
           DISPLAY "CX00092" UPON CONSOLE
000000     MOVE ＷＫ申込数字 (Ｑ) TO Ｂ                                                 
000000     COMPUTE IDXC-IDX (Ａ) = ＷＫインデックス７ + ＩＮＤＥＸ (IDXC-BUNSI Ｂ)              
000000                 ADD  1  TO  Ａ.                                           
000000                 ADD  1  TO  Ｑ.                                           
000000     GO TO CX00092.                                                       
000000 CX00093.                                                                 
           DISPLAY "CX00093" UPON CONSOLE
000000     GO TO CX00094.                                                       
000000 CX00091.                                                                 
           DISPLAY "CX00091" UPON CONSOLE
000000     PERFORM BN09-RTN THRU CX00013 .                                      
000000 CX00094.                                                                 
           DISPLAY "CX00094" UPON CONSOLE
000000           ADD  1  TO  Ｐ.                                                 
000000     GO TO CX00089.                                                       
000000 CX00090.                                                                 
           DISPLAY "CX00090" UPON CONSOLE
000000 CX00012. EXIT.                                                           
000000 BN09-RTN .                                                               
000000 CX00095. IF NOT(Ｑ < IDXC-TYPE + 7)GO TO CX00096.                         
           DISPLAY "CX00095" UPON CONSOLE
000000     MOVE ＷＫ申込数字 (Ｑ) TO Ｂ                                                 
000000     COMPUTE ＷＫインデックス８ = ＷＫインデックス７ + ＩＮＤＥＸ (8 Ｂ)                          
000000     COMPUTE Ｒ = Ｑ + 1 .                                                  
000000     IF NOT(IDXC-BUNSI = 9)GO TO CX00097.                                 
000000 CX00098. IF NOT(Ｒ < IDXC-TYPE + 8)GO TO CX00099.                         
           DISPLAY "CX00098" UPON CONSOLE
000000     MOVE ＷＫ申込数字 (Ｒ) TO Ｂ                                                 
000000     COMPUTE IDXC-IDX (Ａ) = ＷＫインデックス８ + ＩＮＤＥＸ (IDXC-BUNSI Ｂ)              
000000                 ADD  1  TO  Ａ.                                           
000000                 ADD  1  TO  Ｒ.                                           
000000     GO TO CX00098.                                                       
000000 CX00099.                                                                 
           DISPLAY "CX00099" UPON CONSOLE
000000 CX00097.                                                                 
           DISPLAY "CX00097" UPON CONSOLE
000000           ADD  1  TO  Ｑ.                                                 
000000     GO TO CX00095.                                                       
000000 CX00096.                                                                 
           DISPLAY "CX00096" UPON CONSOLE
000000 CX00013. EXIT.                                                           
000000 N_I-RTN .                                                                
000000     COMPUTE Ｉ = IDXC-BUNSI + IDXC-TYPE - 2 .                             
000000 CX00100. IF NOT(Ｉ > ZERO)GO TO CX00101.                                  
           DISPLAY "CX00100" UPON CONSOLE
000000     MOVE ＷＫ申込数字 (Ｉ) TO Ｐ                                                 
000000     COMPUTE ＷＫインデックス = ＷＫインデックス + ＩＮＤＥＸ (Ｉ Ｐ)                            
000000     COMPUTE Ｉ = Ｉ - 1 .                                                  
000000     GO TO CX00100.                                                       
000000 CX00101.                                                                 
           DISPLAY "CX00101" UPON CONSOLE
000000 CX00014. EXIT.                                                           
000000 N_B-RTN .                                                                
000000     COMPUTE Ｉ = IDXC-BUNSI + IDXC-TYPE - 2 .                             
000000 CX00102. IF NOT(Ｉ > ZERO)GO TO CX00103.                                  
           DISPLAY "CX00102" UPON CONSOLE
000000     MOVE ＷＫ申込数字 (Ｉ) TO Ｐ                                                 
      *20141029修正開始
000000*           COMBINE  ＷＫビット列  EQUAL  ,      
                 COMBINE  ＷＫビット列  =                                
      *20141029修正終了
000000                    ＷＫビット列  OR  ＢＩＴ(Ｐ).                                   
000000     COMPUTE Ｉ = Ｉ - 1 .                                                  
000000     GO TO CX00102.                                                       
000000 CX00103.                                                                 
           DISPLAY "CX00103" UPON CONSOLE
000000 CX00015. EXIT.                                                           

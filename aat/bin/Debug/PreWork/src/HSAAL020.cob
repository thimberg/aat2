000000 IDENTIFICATION DIVISION.                                                 
000000 PROGRAM-ID. HSAAL020 .                                                   
000000 DATE-WRITTEN.                                                            
000000 DATE-COMPILED.                                                           
000000 ENVIRONMENT DIVISION.                                                    
000000 CONFIGURATION SECTION.                                                   
000000 SOURCE-COMPUTER.        ACOS.                                            
000000 OBJECT-COMPUTER.        ACOS.                                            
000000 DATA DIVISION.
       WORKING-STORAGE SECTION.                                                      
000000 01  WK-CHENKNUM.
           03  WK-NUMRBITR          OCCURS  13.
             05  WK-NUMRBYTE        PIC X(01).
      *
       01  ÇvÇjÅ|ìYéöÇP             PIC 9(02).
       01  ÇvÇjÅ|ìYéöÇQ             PIC 9(02).
       01  ÇvÇjÅ|ìYéöÇR             PIC 9(02).
       01  WK-COUNT                 PIC 9(03).
       01  SHIFT1                   PIC X(01).
       01  SHIFT2                   PIC X(01).
       01  WK-ADDR.
           03 WK-ADDRMAIN           OCCURS  12.
              05 WK-WINADDR         PIC X(02).
000000 LINKAGE SECTION.                                                         
       01  NUMC-PARAM.                                                          
           COPY CLNUMC.                                                        
000000 PROCEDURE DIVISION USING NUMC-PARAM .                                   
      * PROCEDURE DIVISION.
000000 MAIN-RTN .
           PERFORM S000_RTN.                                                               
000000     PERFORM P000-RTN THRU CX00002.
           PERFORM E000_RTN THRU CX00004.                                      
000000 CX00001. EXIT PROGRAM.
           DISPLAY "CX00001" UPON CONSOLE
       S000_RTN.
      * ÉèÅ[ÉNïœêîèâä˙âª *
           INITIALIZE  WK-CHENKNUM
           MOVE ZERO TO  WK-COUNT
           MOVE ZERO TO ÇvÇjÅ|ìYéöÇP
           MOVE ZERO TO ÇvÇjÅ|ìYéöÇQ
           MOVE ZERO TO ÇvÇjÅ|ìYéöÇR
           INITIALIZE WK-ADDR.                                             
000000 P000-RTN .
      *í«â¡äJén
           MOVE 43 TO NUMC-BUNBO
           MOVE ""80000000000000000000000000"" TO NUMC-CHECKNUM
      *í«â¡èIóπ
           MOVE NUMC-CHECKNUM TO WK-CHENKNUM
       CX00003.
           IF   ÇvÇjÅ|ìYéöÇP > 11 GO TO  CX00002
              IF  ÇvÇjÅ|ìYéöÇQ > 7 GO TO  CX00003
                  COMBINE SHIFT1 = WK-NUMRBYTE(ÇvÇjÅ|ìYéöÇQ)  AND ""80""
                  IF  SHIFT1 > 0 THEN
                      COMPUTE WK-COUNT = WK-COUNT + 1
                      COMBINE WK-NUMRBYTE(ÇvÇjÅ|ìYéöÇQ) = ""80"" SHIFTED LEFT BY 1
                      MOVE ÇvÇjÅ|ìYéöÇP TO WK-WINADDR(ÇvÇjÅ|ìYéöÇQ)
                  COMPUTE ÇvÇjÅ|ìYéöÇQ = ÇvÇjÅ|ìYéöÇQ + 1.
              COMPUTE ÇvÇjÅ|ìYéöÇP = ÇvÇjÅ|ìYéöÇP + 1.
              GO TO  CX00003.                                                                     
       CX00002.
           DISPLAY "CX00002" UPON CONSOLE
           IF  ÇvÇjÅ|ìYéöÇR > 2 GO TO  CX00006
               COMBINE SHIFT2 = WK-NUMRBYTE(13) AND ""80""
               IF SHIFT2 > 0 THEN
                   COMPUTE WK-COUNT = WK-COUNT + 1
                   COMBINE WK-NUMRBYTE(ÇvÇjÅ|ìYéöÇR) = ""80"" SHIFTED LEFT BY 1
                   MOVE ÇvÇjÅ|ìYéöÇR TO WK-WINADDR(12)
       CX00006.
       E000_RTN.
      * àÍívêîï‘ãp *
           MOVE WK-COUNT TO NUMC-WINTIMES
           MOVE WK-ADDR  TO NUMC-WINADDR
      *     DISPLAY  NUMC-WINTIMES UPON CONSOLE
      *     DISPLAY  NUMC-WINADDR  UPON CONSOLE.
000000 CX00004. EXIT.                                                                           

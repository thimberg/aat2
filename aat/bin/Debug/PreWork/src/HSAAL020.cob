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
       01  �v�j�|�Y���P             PIC 9(02).
       01  �v�j�|�Y���Q             PIC 9(02).
       01  �v�j�|�Y���R             PIC 9(02).
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
      * ���[�N�ϐ������� *
           INITIALIZE  WK-CHENKNUM
           MOVE ZERO TO  WK-COUNT
           MOVE ZERO TO �v�j�|�Y���P
           MOVE ZERO TO �v�j�|�Y���Q
           MOVE ZERO TO �v�j�|�Y���R
           INITIALIZE WK-ADDR.                                             
000000 P000-RTN .
      *�ǉ��J�n
           MOVE 43 TO NUMC-BUNBO
           MOVE ""80000000000000000000000000"" TO NUMC-CHECKNUM
      *�ǉ��I��
           MOVE NUMC-CHECKNUM TO WK-CHENKNUM
       CX00003.
           IF   �v�j�|�Y���P > 11 GO TO  CX00002
              IF  �v�j�|�Y���Q > 7 GO TO  CX00003
                  COMBINE SHIFT1 = WK-NUMRBYTE(�v�j�|�Y���Q)  AND ""80""
                  IF  SHIFT1 > 0 THEN
                      COMPUTE WK-COUNT = WK-COUNT + 1
                      COMBINE WK-NUMRBYTE(�v�j�|�Y���Q) = ""80"" SHIFTED LEFT BY 1
                      MOVE �v�j�|�Y���P TO WK-WINADDR(�v�j�|�Y���Q)
                  COMPUTE �v�j�|�Y���Q = �v�j�|�Y���Q + 1.
              COMPUTE �v�j�|�Y���P = �v�j�|�Y���P + 1.
              GO TO  CX00003.                                                                     
       CX00002.
           DISPLAY "CX00002" UPON CONSOLE
           IF  �v�j�|�Y���R > 2 GO TO  CX00006
               COMBINE SHIFT2 = WK-NUMRBYTE(13) AND ""80""
               IF SHIFT2 > 0 THEN
                   COMPUTE WK-COUNT = WK-COUNT + 1
                   COMBINE WK-NUMRBYTE(�v�j�|�Y���R) = ""80"" SHIFTED LEFT BY 1
                   MOVE �v�j�|�Y���R TO WK-WINADDR(12)
       CX00006.
       E000_RTN.
      * ��v���ԋp *
           MOVE WK-COUNT TO NUMC-WINTIMES
           MOVE WK-ADDR  TO NUMC-WINADDR
      *     DISPLAY  NUMC-WINTIMES UPON CONSOLE
      *     DISPLAY  NUMC-WINADDR  UPON CONSOLE.
000000 CX00004. EXIT.                                                                           

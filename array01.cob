       IDENTIFICATION DIVISION.
       PROGRAM-ID. array01.
      * A GnuCOBOL program
      * Simple array.
      * Important things: REDEFINES, OCCURS, PERFORM VARYING
      *
      * On: 03/10/2019
      * By: Bill Blasingim
      *             
       ENVIRONMENT DIVISION.      
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.

       DATA DIVISION.
       FILE SECTION.
   
       WORKING-STORAGE SECTION.
         01 WORK-AREA.
           05 ALPHA        PIC X(26) VALUE "ABCDEFGHIJKLMNOPQRSTUVWXYZ".
           05 FILLER REDEFINES ALPHA. 
               10 CHAR     PIC X OCCURS 26 TIMES
                           INDEXED BY INDEX-1.
       PROCEDURE DIVISION.
           PERFORM PRINT-CHARS VARYING INDEX-1 FROM 1 BY 1
               UNTIL INDEX-1 > 26.
           STOP RUN.
         
         PRINT-CHARS.
               DISPLAY CHAR (INDEX-1).

         


*&---------------------------------------------------------------------*
*& Report zdrs_id_04
*&---------------------------------------------------------------------*
******Instructions:
***
***Declare an internal table of strings inline using DATA(...).
***Fill it with 3 values: 'Apple', 'Banana', 'Cherry' using VALUE constructor.
***Loop through the table using LOOP AT ... INTO DATA(...) and display each fruit with WRITE:.
*&---------------------------------------------------------------------*
REPORT zdrs_id_04.


DATA(ITAB)  =  VALUE string_table(
( |Apple| )
( |Banana| )
( |Cherry| )
)  .

LOOP AT ITAB[] ASSIGNING   FIELD-SYMBOL(<FS_TAB>) .
WRITE : / <fs_tab> .
ENDLOOP .

CLASS zcl_ey_sc_first_aoc_class DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_ey_sc_first_aoc_class IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    "write: 'chalga kya?'.

    out->write( 'hello abap on cloud developers' ).

  ENDMETHOD.
ENDCLASS.

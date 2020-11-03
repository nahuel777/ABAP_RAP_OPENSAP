CLASS zcl_rap_eml_huel DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_rap_eml_huel IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    " setp 1 - READ
    READ ENTITIES OF zi_rap_travel_huel
        ENTITY Travel
            FROM VALUE #( ( TravelUUID = 'CF910E305CB6B44917000C0214639CF0' ) )
        RESULT DATA(travels).

    out->write( travels ).

    CLEAR travels[].

    " setp 2 - READ with Fields
    READ ENTITIES OF zi_rap_travel_huel
        ENTITY Travel
            FIELDS (  AgencyID CustomerID )
            WITH VALUE #( ( TravelUUID = 'CF910E305CB6B44917000C0214639CF0' ) )
        RESULT travels.

    out->write( travels ).

  ENDMETHOD.

ENDCLASS.

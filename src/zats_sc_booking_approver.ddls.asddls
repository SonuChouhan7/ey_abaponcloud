@EndUserText.label: 'My Travel APPROVER projection'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity ZATS_SC_BOOKING_APPROVER as projection on ZATS_SC_BOOKING
{
    key TravelId,
    key BookingId,
    BookingDate,
    @Consumption.valueHelpDefinition: [{ 
        entity.name: '/DMO/I_Customer',
        entity.element: 'CustomerID'
     }]
    CustomerId,
    @Consumption.valueHelpDefinition: [{ 
        entity.name: '/DMO/I_Carrier',
        entity.element: 'AirlineID'
     }]
    CarrierId,
    @Consumption.valueHelpDefinition: [{ 
        entity.name: '/DMO/I_Connection',
        entity.element: 'ConnectionID',
        additionalBinding: [
                            { localElement: 'CarrierId',
                              element: 'AirlineID' }
                           ]
     }]
    ConnectionId,
    FlightDate,
    FlightPrice,
    CurrencyCode,
    @Consumption.valueHelpDefinition: [{ 
        entity.name: '/DMO/I_Booking_Status_VH',
        entity.element: 'BookingStatus'
     }]
    BookingStatus,
    LastChangedAt,
    /* Associations */
    _BookingStatus,
    _BookingSupplement: redirected to composition child ZATS_SC_BOOKSUPPL_APPROVER,
    _Carrier,
    _Connection,
    _Customer,
    _Travel: redirected to parent ZATS_SC_TRAVEL_APPROVER
}

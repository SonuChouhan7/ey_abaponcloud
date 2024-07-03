@EndUserText.label: 'My Travel APPROVER projection'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity ZATS_SC_BOOKSUPPL_APPROVER 
    as projection on ZATS_SC_BOOKSUPPL
{
    key TravelId,
    key BookingId,
    key BookingSupplementId,
    SupplementId,
    Price,
    CurrencyCode,
    LastChangedAt,
    /* Associations */
    _Booking: redirected to parent ZATS_SC_BOOKING_APPROVER,
    _Travel: redirected to ZATS_SC_TRAVEL_APPROVER
}

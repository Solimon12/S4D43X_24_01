@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Demo 9: Path Expressions'

define view entity Z_20_Demo09
  as select from Z_20_DEMO08
{
  key CarrierID,
  key ConnectionID,
      CityFrom,
      CityTo,
      _Carrier.carrname as CarrierName,
      
      /* Associations */
      _Flights
}

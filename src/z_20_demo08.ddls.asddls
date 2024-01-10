@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Demo 8: Associations'
define view entity Z_20_DEMO08
  as select from spfli as Connection
  association [1..1] to scarr   as _Carrier on  _Carrier.carrid = Connection.carrid
  association [0..*] to sflight as _Flights on  _Flights.carrid = Connection.carrid
                                            and _Flights.connid = Connection.connid

{
  key Connection.carrid   as CarrierID,
  key Connection.connid   as ConnectionID,
      Connection.cityfrom as CityFrom,
      Connection.cityto   as CityTo,

      /*Associations*/
      _Carrier,
      _Flights
}

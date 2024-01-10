@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Demo 7: Outer Joins'

define view entity Z_20_DEMO07
  as select from    spfli   as Connection
    left outer join scarr   as Carrier on Carrier.carrid = Connection.carrid
    left outer join sflight as Flight  on  Flight.carrid = Connection.carrid
                                       and Flight.connid = Connection.connid

{
  key Connection.carrid   as CarrierID,
  key Connection.connid   as ConnectionID,
  key Flight.fldate       as FlightDate,
      Carrier.carrname    as CarrierName,
      Connection.cityfrom as CityFrom,
      Connection.cityto   as CityTo
}

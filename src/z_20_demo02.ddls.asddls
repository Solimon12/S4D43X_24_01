@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Demo 2: Selections and Inner Joins'

define view entity Z_20_Demo02
  as select from spfli   as Connection
    inner join   scarr   as Carrier on Carrier.carrid = Connection.carrid
    inner join   sflight as Flight  on  Flight.carrid = Connection.carrid
                                    and Flight.connid = Connection.connid

{
  key Carrier.carrid      as CarrierID,
  key Flight.connid       as ConnectionID,
  key Flight.fldate       as FlightDate,
      Carrier.carrname    as CarrierName,
      Connection.cityfrom as CityFrom,
      Connection.cityto   as CityTo
}
where
  Connection.fltype <> 'X' // no charter flights

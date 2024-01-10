@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Demo 6: Nested Views'
define view entity Z_20_Demo06
  as select from Z_20_Demo05
{
  count(*) as NumberOfCarriersWithMoreThan4MRevenue
}

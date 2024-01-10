@EndUserText.label: 'Booking'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity ZC_20_BOOKING
  as projection on ZI_20_Booking
{
  key Carrid,
  key Connid,
  key Fldate,
  key Bookid,
      Customid,
      Custtype,
      Smoker,
      Luggweight,
      Wunit,
      Invoice,
      Class,
      Forcuram,
      Forcurkey,
      Loccuram,
      Loccurkey,
      OrderDate,
      Counter,
      Agencynum,
      Cancelled,
      Reserved,
      Passname,
      Passform,
      Passbirth,
      
      /* Associations */
      _Flight : redirected to parent ZC_20_Flight
}

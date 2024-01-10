@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Demo 4: Built in Functions'

define view entity Z_20_Demo04
  as select from sflight
{
  /* Numeric Funtions */
  5.0 / 3.0                              as Divide1,
  division(5,3,2)                        as Divide2,
  price,
  currency,
  @Semantics.amount.currencyCode: 'currency'
  round(price, -1)                       as Round1,
  @Semantics.amount.currencyCode: 'currency'
  round(price, 1)                        as Round2,

  /* String Functions */
  concat_with_space('Hello', 'World', 1) as Concatenation1,
  concat('Hello', 'World')               as Concatenation2,
  length('X  ')                          as LengthXSS,
  length(' X')                           as LenthSSX,
  length('  ')                           as LengthSSS,

  /* Unit- and Currency Conversions */
  @Semantics.amount.currencyCode: 'currency'
  currency_conversion(
  amount => price,
  source_currency => currency,
  target_currency => cast('EUR' as abap.cuky),
  exchange_rate_date => fldate )         as ConvertedPrice,
  cast('EUR' as abap.cuky)               as ConvertedCurrencyCode,

  /* Date- and Time Functions */
  fldate,
  dats_add_days(fldate, 14, 'FAIL')      as DatsDays1
}

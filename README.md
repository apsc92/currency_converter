Run this rake task : 
rake currency:fetch_latest_conversion_factor
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
For console App : 

* input = 100 (Any amount you want to put as input)
* from_currency = Currency.where(name: 'USD').first
* to_currency = Currency.where(name: 'INR').first
* from_currency.conversion_rate(to_currency) * input
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

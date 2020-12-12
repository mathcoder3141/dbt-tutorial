{% docs status %}

One of the following values:

| status  | description                     |
|---------|---------------------------------|
| success | The payment method went through |
| fail    | There was an error in payment   |

{% enddocs status %}

{% docs payment %}

One of the following values: 

| payment method | description                 |
|----------------|-----------------------------|
| credit_card    | Paid with a credit card     |
| bank_transfer  | Paid with a bank account    | 
| coupon         | Paid with a coupon          |
| gift_card      | Paid with a gift card       |

{% enddocs payment %}
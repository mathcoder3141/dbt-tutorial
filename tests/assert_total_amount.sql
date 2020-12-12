select
	sum(amount) as total_amount
from {{ ref('fct_orders') }}
having not(total_amount = 1672)
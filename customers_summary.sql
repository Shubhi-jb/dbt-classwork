select 
    country,
    count(customer_id) as total_customers,
    sum(total_spend) as total_revenue
from {{ ref('stg_customers') }}
group by country

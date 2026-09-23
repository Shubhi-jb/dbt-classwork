with raw_customers as (
    select 1 as customer_id, 'Alice' as customer_name, 'India' as country, 250 as total_spend
    union all
    select 2 as customer_id, 'Bob' as customer_name, 'USA' as country, 120 as total_spend
    union all
    select 3 as customer_id, 'Charlie' as customer_name, 'India' as country, 450 as total_spend
)

select 
    country,
    count(customer_id) as total_customers,
    sum(total_spend) as total_revenue
from raw_customers
group by country


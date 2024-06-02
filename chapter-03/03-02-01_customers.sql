with customers as (select * from `dbt-tutorial`.jaffle_shop.customers),

orders as (select * from `dbt-tutorial`.jaffle_shop.orders),

orders_grouped_by_customer_id as (
	select
    	user_id,
    	count(id) as number_of_orders
	from orders
	group by user_id
),

customers_joined_with_orders as (
	select
    	t0.id as customer_id,
    	t0.first_name,
    	t0.last_name,
    	coalesce(t1.number_of_orders, 0) as number_of_orders
	from customers as t0
	left join
    	orders_grouped_by_customer_id as t1
    	on t0.id = t1.user_id
)

select * from customers_joined_with_orders

---10 Question Using Regex

select * from sales

select order_line,order_id from sales where order_id ~* 'ca'

select customer_id,order_date from sales where order_date::varchar ~*'^201(6|5)'

select customer_id,quantity from sales where quantity::varchar ~'^[0-3]$'

select customer_id,product_id from sales where product_id ~* 'off-la'

select order_id,profit from sales where profit::varchar ~*'^[0-9][1-5].[0-9]{3}(4|2)$'
	
select customer_id,sales from sales where sales::varchar ~*'^[0-9][3-5](1|7).[0-9]{2}$'

select order_id,product_id from sales
where product_id ~*'^[a-z]{3}-[a-t]{2}-[0-6]{7}(6|3)$'

select order_line,ship_date from sales 
where ship_date::varchar ~*'^201(6|4|5)-[0-4]{2}-(1|8|4){2}$'

select order_line,customer_id from sales 
where customer_id ~* '^cg-[0-9]{5}$' or customer_id ~*'^so-[0-9]{5}$'

select * from customer

select customer_id,customer_name from customer  where customer_name ~*'^G(e|t|d)'

select customer_id,age,city from customer where age::varchar ~*'^[0-5](9|5|8)$' and city = 'New York City'

select customer_id,postal_code from customer where postal_code::varchar ~*'^[0-9][1-7][0-5]{2}(0|5|9)$'
	
select customer_id,state,region from customer
where state::varchar ~*'^Texas' and region::varchar ~*'^Central'




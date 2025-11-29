create database delivery_logistics_db
use delivery_logistics_db

select top 5 * from delivery
-------------
--total delivery cost
select round(sum(delivery_cost),0) as total_delivery_cost
from delivery
----------------
--avg delivery cost
select round(avg(delivery_cost),2) as avg_delivery_cost
from delivery

--------------
--avg delivery distance-km
select round(avg(distance_km),2) as avg_delivery_distance
from delivery
---------------
--avg package weight-kg
select round(avg(package_weight_kg),2) as avg_package_weight
from delivery
-----------------
--avg delivery rating
select avg(delivery_rating) as avg_delivery_rating
from delivery
---------
--total deliveries
select count(delivery_id) as total_deliveries
from delivery
---------
--how many deliveries delivery_partners did?
select delivery_partner , count(*) as total_delivery
from delivery
group by delivery_partner
order by total_delivery desc
-------------
--Categorize package type in each delivery
select package_type , count(*) as total_delivery
from delivery
group by package_type
order by total_delivery desc
------------------
--avg delivery cost of all vehicle types
select vehicle_type , round(avg(delivery_cost),2) as avg_delivery_cost
from delivery
group by vehicle_type
order by avg_delivery_cost desc
-----------------
--total number of deliveries to each delivery mode
select delivery_mode , count(*) as total_deliveries
from delivery
group by delivery_mode
order by total_deliveries desc
-----------------
--total number of deliveries to each delivery mode
select region , count(*) as total_deliveries
from delivery
group by region
order by total_deliveries desc
--------------
--number of deliveries in each weather condition
select weather_condition, count(*) as total_deliveries
from delivery
group by weather_condition
order by total_deliveries desc
-------------------
--how many times delivery delayed or not?
select delayed , count(*) as total_count
from delivery
group by delayed
order by total_count desc
-----------
--Categorize delivery status with total count of each status happend
select delivery_status,count(*) as total_count
from delivery
group by delivery_status
order by total_count desc
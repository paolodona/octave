select sum(location_bookings) bookings, 
       max(location_hosts_searchable) hosts,
       sum(location_searches) searches, 
       max(location_daily_price) daily_price,
       sum(location_unique_searches) unique_searches, 
       avg(location_avg_results) avg_results, 
       sum(location_requests) requests, 
       sum(location_requests_accepted) requests_accepted, 
       sum(location_requests_per_guest) requests_per_guest, 
       sum(location_hosts_searchable_0_5km) hosts5, 
       sum(location_hosts_searchable_5_10km) hosts10,
       sum(location_hosts_searchable_10_15km) hosts15,
       sum(location_hosts_searchable_15_20km) hosts20,
	   sum(location_hosts_searchable_20_pluskm) hosts20p
from dwh_locations
where location_marketplace = 'Homestay.com'
and location_hosts_searchable != 0
and year IN (2016, 2017)
group by year, month, location_country, location_city
order by year, month, location_country, location_city
limit 999999;

desc dwh_locations;

desc dwh_hosts;

select host_bookings,
       host_has_reviews, 
       host_review_count, 
       host_daily_price,
       host_is_featured, 
       host_score, 
       host_days_live,
       host_has_promotional_price
from dwh_hosts
where host_is_live
and !host_is_hidden
and host_country = 'United Kingdom'
and host_marketplace = 'Homestay.com'
limit 999999;
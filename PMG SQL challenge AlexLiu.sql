select * from marketing_data;
select * from store_revenue;
#0 
select * from marketing_data limit 2;​
#1 Generate a query to get the sum of the clicks of the marketing data​
select sum(clicks) from marketing_data;
# THERE are 1792 clicks in total
 #2 Generate a query to gather the sum of revenue by store_location from the store_revenue table​
 select store_location, sum(revenue) as 'total revenue'
 from store_revenue
 group by store_location
 order by 'total revenue' desc;
  #3 Merge these two datasets so we can see impressions, clicks, and revenue 
  #together by date and geo. Please ensure all records from each table are accounted for.​
 select marketing_data.date, right(store_location,2) AS 'GEO2', GEO,impressions, revenue, clicks from marketing_data
 inner join store_revenue on marketing_data.date= store_revenue.date 
 group by GEO,geo2; #I'm not sure on this one, I tried to join these 2 tables on geo = geo2 as well, 
 #but they don't work, I don't want to ask people or google for helps, so this is what I got.
#4 In your opinion, what is the most efficient store and why?​
select geo, clicks/impressions as 'Efficiency' from marketing_data
group by geo order by efficiency desc;
#Although the CA store has the highest revenue from question2, but in terms of efficiency, the MN marketing team
#have the highest efficiency. 
 #5 (Challenge) Generate a query to rank in order the top 10 revenue producing states​
select store_location, sum(revenue) as 'total revenue'
 from store_revenue
 group by store_location
 order by 'total revenue' desc ;
 #CA is 1 NY 2 TX 3
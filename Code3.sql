Select 	Customer.Country , count(*) As 'Count of Custmers'
From Customer 
group by Customer.Country
order by 2 desc
limit 5 


select Customer.City , avg(Orders.TotalAmount) as 'AVG'
from Customer 
join Orders 
on Orders.CustomerId = Customer.Id
where Customer.Country = "USA"
group by Customer.City
having avg(Orders.TotalAmount) > 2000
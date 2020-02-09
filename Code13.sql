select Supplier.CompanyName , sum(Orders.TotalAmount) As 'Sum of TotalAmount'
from Supplier
join Product
on Supplier.Id = Product.SupplierId
join OrderItem 
on OrderItem.ProductId = Product.Id
join Orders 
on OrderItem.OrderId = Orders.Id
group by Supplier.CompanyName
order by sum(Orders.TotalAmount) desc
limit 5

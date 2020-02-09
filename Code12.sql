select Customer.FirstName , Supplier.CompanyName
From Customer
Join Orders
on Customer.Id = Orders.CustomerId
Join OrderItem 
on OrderItem.OrderId = OrderItem.Id
join Product 
on OrderItem.ProductId = Product.Id
join Supplier 
on Product.SupplierId = Supplier.Id
where Product.UnitPrice > 18
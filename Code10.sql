select OrderItem.*, Supplier.Country
From OrderItem 
join Product 
on OrderItem.ProductId = Product.Id
join Supplier 
on Product.SupplierId = Supplier.Id
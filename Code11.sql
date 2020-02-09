select Product.ProductName , Supplier.Phone , Supplier.CompanyName as "Supplier Name"
from Product 
join Supplier
on Product.SupplierId = Supplier.Id
where Supplier.Country in ('Japan','USA')
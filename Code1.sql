select AVG(Product.UnitPrice) As 'AVG'
From Product
Join Supplier
on Supplier.Id = Product.SupplierId
where Supplier.CompanyName = "Tokyo Traders"
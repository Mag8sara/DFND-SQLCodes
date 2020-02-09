select Count(*) As 'Count of order',
case  when Product.IsDiscontinued = 0 then "No" else "Yes" end As 'Have Discontinued'
From Orders 
join OrderItem
on OrderItem.OrderId = Orders.Id
join Product
on Product.Id = OrderItem.ProductId
group by Product.IsDiscontinued


--Satış miktarı 1500$ ile 2500$ arasında olan siparişleri listeleyelim
--(ORder details)
select
	OrderID,
	sum((Quantity*UnitPrice) * (1-Discount)) as Price

from [Order Details]
group by OrderID
having
	sum((Quantity*UnitPrice) * (1-Discount)) >=1500 and
	sum((Quantity*UnitPrice) * (1-Discount)) <=2500
order by Price asc
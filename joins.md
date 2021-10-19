# INNER JOIN (alle Orders, mit Kunden-Informationen)

* select orders.OrderID, customers.CustomerID, customers.CompanyName from orders inner join customers ON orders.CustomerID = customers.CustomerID;

# LEFT JOIN (alle Orders mit und ohne Kundeninformationen)
* select orders.OrderID, customers.CustomerID, customers.CompanyName from orders left join customers ON orders.CustomerID = customers.CustomerID order by customers.CompanyName ;

# RIGHT JOIN (Alle Kundeninformationen mit Orders und Kunden ohne Orders

* select orders.OrderID, customers.CustomerID, customers.CompanyName from orders right join customers ON orders.CustomerID = customers.CustomerID order by orders.OrderID;

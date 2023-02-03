INSERT INTO classicmodels.customers VALUES (1000,'Gabriel Martini','Gabriel','Martini ','40.32.2555','54, rue Royale',NULL,'Nantes',NULL,'44000','Brasil',1370,'21000.00');

SELECT * FROM classicmodels.customers WHERE customerNumber=1000;

UPDATE classicmodels.customers SET customerName='Gabriel Martini update' WHERE customerNumber=1000;

DELETE FROM classicmodels.customers WHERE customerNumber=1000;
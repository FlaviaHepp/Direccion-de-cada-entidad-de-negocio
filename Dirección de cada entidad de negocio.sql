USE AdventureWorks2019
GO

--Se desea conocer la dirección de cada entidad de negocio

SELECT pb.BusinessEntityID, psp.Name AS Condado, pa.City As Ciudad, pa.PostalCode AS Codigo_postal, pa.AddressLine1 AS Direccion
FROM Person.StateProvince psp
INNER JOIN Person.Address pa
on psp.StateProvinceID = pa.StateProvinceID
INNER JOIN Person.BusinessEntityAddress pb
ON pa.AddressID = pb.AddressID
ORDER BY BusinessEntityID
--? 1. Penggunaan ORDER BY
-- Klausa ORDER BY untuk mengurutkan hasil query.
-- Sintaks: ORDER BY kolom ASC|DESC
-- Contoh:

SELECT CustomerName, Country FROM Customers WHERE Country = "Germany" ORDER BY CustomerName ASC;

--? 2. Agregasi dengan GROUP BY dan HAVING
-- GROUP BY mengelompokkan data berdasarkan kolom tertentu.
-- HAVING digunakan untuk filter hasil agregat (berbeda dengan WHERE).
-- Contoh:

SELECT Country, COUNT(CustomerName) AS TotalCustomers 
FROM Customers 
GROUP BY Country 
HAVING COUNT(CustomerName) > 5;

-- Fungsi agregat seperti COUNT(), SUM(), AVG(), MAX(), MIN() harus menggunakan HAVING untuk filter setelah pengelompokan.

--? 3. JOIN: INNER JOIN vs LEFT JOIN
-- INNER JOIN hanya menampilkan data yang punya kecocokan di kedua tabel.
-- LEFT JOIN menampilkan semua data dari tabel kiri, dan data dari tabel kanan yang cocok (NULL jika tidak ada).
-- Contoh LEFT JOIN dan COUNT:

SELECT c.CustomerName, COUNT(o.OrderID) as TotalPesanan 
FROM Customers c 
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID 
GROUP BY c.CustomerName;


--? Query yang Sudah Ditulis

-- ORDER BY contoh
SELECT CustomerName, Country FROM Customers WHERE Country = "Germany" ORDER BY CustomerName ASC;

-- GROUP BY dan HAVING
SELECT Country, COUNT(CustomerName) AS TotalCustomers 
FROM Customers 
GROUP BY Country 
HAVING COUNT(CustomerName) > 5;

-- JOIN dan COUNT dengan LEFT JOIN
SELECT c.CustomerName, COUNT(o.OrderID) as TotalPesanan 
FROM Customers c 
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID 
GROUP BY c.CustomerName;
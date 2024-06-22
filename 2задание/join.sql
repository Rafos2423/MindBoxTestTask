select p."ProductName", c."CategoryName"
FROM schema."Products" p
LEFT JOIN schema."ProductCategories" pc ON p."ProductId" = pc."ProductId"
LEFT JOIN schema."Categories" c ON pc."CategoryId" = c."CategoryId"
ORDER BY ('p.ProductName', 'c.CategoryName');

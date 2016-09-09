SELECT (CheapestItemPrice - Discount), CheapestItem, Keywords, Shop, URL AS 'Price' 
FROM processed 
WHERE Discount IS NOT NULL 
	AND  BestCouponDifference < 1
ORDER BY (CheapestItemPrice - Discount)  ASC
USE CPGSALES;

--- SAFETY STOCK CALCULATION

--- Safety stock in Consumer Packaged Goods (CPG) is extra inventory kept to mitigate risks of stockouts caused by demand spikes or supply delays, 
 -- acting as a buffer against uncertainty. Lead time is the total time between placing an order with a supplier and receiving the inventory.

 --- SAFETY STOCK=(MAX DAILY SALES * MAX LEAD TIME)-(AVG DAILY SALES * AVG LEAD TIME)


 SELECT 
    PRODUCT_NAME,
    -- Assuming Max Lead Time = 10 days, Avg Lead Time = 5 days
    CAST((MAX(TOTAL_DAILY_QTY) * 10) - (AVG(TOTAL_DAILY_QTY) * 5) AS INT) AS SAFETY_STOCK_TARGET
FROM (
    -- Subquery: Aggregating order-level quantity into daily-level quantity
    SELECT 
        PRODUCT_NAME, 
        ORDER_DATE, 
        SUM(QUANTITY) AS TOTAL_DAILY_QTY
    FROM ORDERS
    GROUP BY PRODUCT_NAME, ORDER_DATE
) AS DAILYAGGREGATION
GROUP BY PRODUCT_NAME
ORDER BY SAFETY_STOCK_TARGET DESC;
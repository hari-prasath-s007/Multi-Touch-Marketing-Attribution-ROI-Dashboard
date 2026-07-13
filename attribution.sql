-- ==========================================
-- Multi-Touch Marketing Attribution Project
-- KPI Calculations
-- ==========================================

--===========================================
--Total Spend    
SELECT SUM(SPEND) FROM AD_SPEND;

--Cost Per Click (CPC)    
SELECT SUM(SPEND) / SUM(CLICKS) AS CPC FROM AD_SPEND; 

--Customer Acquisition Cost (CAC)   
SELECT SUM(A.SPEND) / COUNT(DISTINCT C.USER_ID) AS CAC 
FROM AD_SPEND A, CONVERSIONS C;

--ROAS
SELECT SUM(C.REVENUE) / SUM(A.SPEND) AS ROAS FROM CONVERSIONS C,AD_SPEND A;
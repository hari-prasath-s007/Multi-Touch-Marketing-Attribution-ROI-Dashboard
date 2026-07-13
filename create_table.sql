-- ==========================================
-- Multi-Touch Marketing Attribution Project
-- Important SQL JOIN Queries
-- ==========================================

---------------------------------------------------------
-- 1. Customer Journey with Conversion Revenue
---------------------------------------------------------

SELECT
    U.USER_ID,
    U.CHANNEL,
    U.EVENT_TIME,
    C.CONVERSION_DATE,
    C.REVENUE
FROM USER_JOURNEY U
INNER JOIN CONVERSIONS C
ON U.USER_ID = C.USER_ID;

---------------------------------------------------------
-- 2. Marketing Spend by Channel
---------------------------------------------------------

SELECT
    A.CHANNEL,
    SUM(A.SPEND) AS TOTAL_SPEND,
    SUM(C.REVENUE) AS TOTAL_REVENUE
FROM AD_SPEND A
INNER JOIN USER_JOURNEY U
ON A.CHANNEL = U.CHANNEL
INNER JOIN CONVERSIONS C
ON U.USER_ID = C.USER_ID
GROUP BY A.CHANNEL;

---------------------------------------------------------
-- 3. Complete Marketing Performance
---------------------------------------------------------

SELECT
    U.USER_ID,
    U.CHANNEL,
    A.SPEND,
    C.REVENUE
FROM USER_JOURNEY U
INNER JOIN AD_SPEND A
ON U.CHANNEL = A.CHANNEL
INNER JOIN CONVERSIONS C
ON U.USER_ID = C.USER_ID;


-- ==========================================
-- Multi-Touch Marketing Attribution Project
-- SQL Views for Power BI
-- ==========================================

---------------------------------------------------------
-- 1. First-Touch Attribution View
---------------------------------------------------------

CREATE OR REPLACE VIEW VW_FIRST_TOUCH AS
SELECT
    USER_ID,
    CHANNEL,
    EVENT_TIME
FROM
(
    SELECT
        USER_ID,
        CHANNEL,
        EVENT_TIME,
        ROW_NUMBER() OVER (
            PARTITION BY USER_ID
            ORDER BY EVENT_TIME
        ) RN
    FROM USER_JOURNEY
)
WHERE RN = 1;

---------------------------------------------------------
-- 2. Last-Touch Attribution View
---------------------------------------------------------

CREATE OR REPLACE VIEW VW_LAST_TOUCH AS
SELECT
    USER_ID,
    CHANNEL,
    EVENT_TIME
FROM
(
    SELECT
        USER_ID,
        CHANNEL,
        EVENT_TIME,
        ROW_NUMBER() OVER (
            PARTITION BY USER_ID
            ORDER BY EVENT_TIME DESC
        ) RN
    FROM USER_JOURNEY
)
WHERE RN = 1;

---------------------------------------------------------
-- 3. Channel Revenue View
---------------------------------------------------------

CREATE OR REPLACE VIEW VW_CHANNEL_REVENUE AS
SELECT
    U.CHANNEL,
    SUM(C.REVENUE) AS TOTAL_REVENUE
FROM USER_JOURNEY U
JOIN CONVERSIONS C
ON U.USER_ID = C.USER_ID
GROUP BY U.CHANNEL;

---------------------------------------------------------
-- 4. ROAS View
---------------------------------------------------------

CREATE OR REPLACE VIEW VW_ROAS AS
SELECT
    A.CHANNEL,
    ROUND(SUM(C.REVENUE) / SUM(A.SPEND),2) AS ROAS
FROM AD_SPEND A
JOIN USER_JOURNEY U
ON A.CHANNEL = U.CHANNEL
JOIN CONVERSIONS C
ON U.USER_ID = C.USER_ID
GROUP BY A.CHANNEL;

---------------------------------------------------------
-- 5. CAC View
---------------------------------------------------------

CREATE OR REPLACE VIEW VW_CAC AS
SELECT
    A.CHANNEL,
    ROUND(SUM(A.SPEND)/COUNT(DISTINCT C.USER_ID),2) AS CAC
FROM AD_SPEND A
JOIN USER_JOURNEY U
ON A.CHANNEL = U.CHANNEL
JOIN CONVERSIONS C
ON U.USER_ID = C.USER_ID
GROUP BY A.CHANNEL;
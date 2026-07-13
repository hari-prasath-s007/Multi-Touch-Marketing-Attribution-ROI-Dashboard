-- ==========================================
-- Multi-Touch Marketing Attribution Project
-- Attribution Models
-- ==========================================

---------------------------------------------------------
-- 1. First-Touch Attribution
---------------------------------------------------------

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
-- 2. Last-Touch Attribution
---------------------------------------------------------

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
-- 3. Linear Attribution
---------------------------------------------------------

SELECT
    USER_ID,
    CHANNEL,
    EVENT_TIME,
    ROUND(
        1 / COUNT(*) OVER (PARTITION BY USER_ID),
        2
    ) AS ATTRIBUTION_WEIGHT
FROM USER_JOURNEY
ORDER BY USER_ID, EVENT_TIME;


-- Column names were changed for the table.

SELECT 
    PRD_ID AS ProductID,
    left(replace(PRD_KEY, '-', '_'), 5) AS Product_Key,                 -- values truncated to reflect product key in other tables, and - replaced with _
    PRD_NM AS Product_name,
    coalesce(PRD_COST, 0) AS Product_cost,                              -- replaced null with '0' as placeholder
    PRD_LINE AS Production_line,
    PRD_START_DT AS Production_start_date,
    coalesce(PRD_END_DT, PRD_START_DT) AS Prodcution_end_date           -- null values were replaced with production start date
FROM RAW.CRM.PRD_INFO



-- Column names were changed for the table.

SELECT
    SLS_ORD_NUM AS Order_number,
    left((SLS_PRD_KEY), 5) AS Product_key,                                  --truncated product key values
    SLS_CUST_ID AS Customer_id,
    to_date(to_char(SLS_ORDER_DT), 'YYYYMMDD') AS Order_date,
    to_date(to_char(SLS_SHIP_DT), 'YYYYMMDD') AS Shipment_date,
    to_date(to_char(SLS_DUE_DT), 'YYYYMMDD') AS Due_date,
    SLS_SALES,                                                              --column name unknown
    SLS_Quantity AS Quantity,
    SLS_PRICE AS Price
FROM RAW.CRM.SALES_DETAILS

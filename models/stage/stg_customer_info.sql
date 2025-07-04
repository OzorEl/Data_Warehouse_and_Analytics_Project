-- Column names were changed for the table.
-- Customer first and last name was concated to Customer_name

SELECT
    CST_ID AS CustomerID,
    CST_KEY as Customer_key,
    concat(CST_FIRSTNAME, ' ', CST_LASTNAME) AS Customer_name,
    CST_MARITAL_STATUS AS MARITAL_STATUS,
    CST_GNDR AS Gender,
    CST_CREATE_DATE AS Date_created
 FROM RAW.CRM.CUST_INFO

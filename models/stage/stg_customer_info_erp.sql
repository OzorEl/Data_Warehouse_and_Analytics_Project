
SELECT
    right(CID,5) AS CustomerID,            --character value reduced to 5 to match Custmer_id values in other table
    BDATE AS Customer_Birthday,
    GEN AS Gender
FROM RAW.ERP.CUST_AZ12



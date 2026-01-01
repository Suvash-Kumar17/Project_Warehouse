

/* =======================================================
Load data from local file from crm cust info
  ========================================================
*/
load data local infile 
'/Users/suvashkumar/Desktop/Desktop/Suvash Kumar/MySQL/Warehouse/source_crm/cust_info.csv'
into table A_bronze.crm_cust_info
fields terminated by ','
enclosed by '"'
lines terminated by '\r\n'
ignore 1 rows
(
@cst_id,
cst_key,
cst_firstname,
cst_lastname,
cst_marital_status ,
cst_gndr,
@cst_create_date 
)
 set
 cst_id = NULLIF(@cst_id, ''),

	cst_create_date =
    case when @cst_create_date is null or trim(@cst_create_date) = '' then null
		when left(@cst_create_date, 10) = '0000-00-00' then null
        else str_to_date(left(@cst_create_date, 10), '%Y-%m-%d')
        end;
        
-- select *from A_bronze.crm_cust_info;


/* =======================================================
Load data from local file crm prd_info
  ========================================================
*/

load data local infile 
'/Users/suvashkumar/Desktop/Desktop/Suvash Kumar/MySQL/Warehouse/source_crm/prd_info.csv'
into table A_bronze.crm_prd_info
fields terminated by ','
enclosed by '"'
lines terminated by '\r\n'
ignore 1 rows
(
prd_id,
prd_key,
prd_nm,
@prd_cost,
prd_line,
@prd_start_dt,
@prd_end_dt
)
set prd_cost = NULLIF(@prd_cost, ''),
    prd_start_dt = STR_TO_DATE(NULLIF(@prd_start_dt, ''), '%Y-%m-%d'),
    prd_end_dt   = STR_TO_DATE(NULLIF(@prd_end_dt, ''), '%Y-%m-%d');

-- truncate table A_bronze.crm_prd_info;
/* =======================================================
Load data from local file crm_sales_details
  ========================================================
*/

-- truncate table A_bronze.crm_sales_details;
load data local infile
'/Users/suvashkumar/Desktop/Desktop/Suvash Kumar/MySQL/Warehouse/source_crm/sales_details.csv'
into table A_bronze.crm_sales_details
fields terminated by ','
enclosed by '"'
lines terminated by '\r\n'
ignore 1 rows
(
sls_ord_num,
sls_prd_key,
sls_cust_id,
sls_order_dt,
sls_ship_dt,
sls_due_dt,
@sls_sales,
sls_quantity,
@sls_price
)
set sls_price = nullif(@sls_price,''),
	sls_sales = NULLIF(@sls_sales, '');
	
 -- select * from A_bronze.crm_sales_details;
 
 /* =======================================================
Load data from local file erp_cust
  ========================================================
*/
-- truncate table A_bronze.erp_CUST_AZ12;
 load data local infile
 '/Users/suvashkumar/Desktop/Desktop/Suvash Kumar/MySQL/Warehouse/source_erp/CUST_AZ12.csv'
 into table A_bronze.erp_CUST_AZ12
 fields terminated by ','
 enclosed by '"'
 lines terminated by '\r\n'
 ignore 1 rows
 (
CID,
@BDATE,
@GEN
)
SET
bdate = NULLIF(@bdate, ''),
gen   = NULLIF(@gen, '');

-- select * from A_bronze.erp_CUST_AZ12;


/* =======================================================
Load data from local file location
  ========================================================
*/

load data local infile
'/Users/suvashkumar/Desktop/Desktop/Suvash Kumar/MySQL/Warehouse/source_erp/LOC_A101.csv'
into table A_bronze.erp_LOC_A101
fields terminated by ','
enclosed by '"'
lines terminated by '\r\n'
ignore 1 rows
(
CID,
CNTRY
);

load data local infile
'/Users/suvashkumar/Desktop/Desktop/Suvash Kumar/MySQL/Warehouse/source_erp/PX_CAT_G1V2.csv'
into table A_bronze.erp_PX_CAT_G1V2
fields terminated by ','
enclosed by '"'
lines terminated by '\r\n'
ignore 1 rows
(
ID,
CAT,
SUBCAT,
MAINTENANCE
);

select * from  A_bronze.erp_PX_CAT_G1V2;

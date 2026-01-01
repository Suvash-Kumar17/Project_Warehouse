/* ===============================================================
		Creating crm_cust_info table 
   ===============================================================
*/
-- create database A_bronze;
create table A_bronze.crm_cust_info (
cst_id int,
cst_key varchar(50),
cst_firstname varchar(50),
cst_lastname varchar(50),
cst_marital_status varchar(50),
cst_gndr varchar(50),
cst_create_date datetime
)
;
select 
* from  A_bronze.crm_cust_info;

/* ===============================================================
		Creating crm_prd_info table 
   ===============================================================
*/
create table A_bronze.crm_prd_info 
( prd_id int,
prd_key varchar(50),
prd_nm varchar(50),
prd_cost int,
prd_line varchar(50),
prd_start_dt datetime,
prd_end_dt datetime
);

select 
* from  A_bronze.crm_prd_info ;

/* ===============================================================
		Creating sales_details table 
   ===============================================================
*/

create table A_bronze.crm_sales_details
(
sls_ord_num varchar(50),
sls_prd_key varchar(50),
sls_cust_id int,
sls_order_dt int,
sls_ship_dt int,
sls_due_dt int,
sls_sales int,
sls_quantity int,
sls_price int 
)
;
-- drop table A_bronze.crm_sales_details ;

select 
* from A_bronze.crm_sales_details;

/* ===============================================================
		Creating erp_CUST_AZ12 table 
   ===============================================================
*/

create table  A_bronze.erp_CUST_AZ12
( 
CID varchar(50),
BDATE datetime,
GEN varchar(50)
)
;
 drop table 
/* ===============================================================
		Creating erp_erp_LOC_A101 table 
   ===============================================================
*/

create table A_bronze.erp_LOC_A101
(
CID varchar(50),
CNTRY varchar(50)
)
;
/* ===============================================================
		Creating PX_CAT_G1V2 table 
   ===============================================================
*/
create table A_bronze.erp_PX_CAT_G1V2
(
ID varchar(50),
CAT varchar(50),
SUBCAT varchar(50),
MAINTENANCE varchar(50)
)
;

-- drop table A_bronze.PX_CAT_G1V2;
/*
=====================================================================
Creating silver table
=====================================================================
*/

-- create database A_silver;
-- use silver;

/* ===============================================================
		Creating silver crm_cust_info table 
   ===============================================================
*/
create table A_silver.crm_cust_info (
cst_id int,
cst_key varchar(50),
cst_firstname varchar(50),
cst_lastname varchar(50),
cst_marital_status varchar(50),
cst_gndr varchar(50),
cst_create_date datetime
)
;
select 
* from  A_silver.crm_cust_info;

/* ===============================================================
		Creating silver crm_prd_info table 
   ===============================================================
*/
create table A_silver.crm_prd_info 
( prd_id int,
prd_key varchar(50),
prd_nm varchar(50),
prd_cost int,
prd_line varchar(50),
prd_start_dt datetime,
prd_end_dt datetime
);

select 
* from  A_silver.crm_prd_info ;

/* ===============================================================
		Creating silver sales_details table 
   ===============================================================
*/

create table A_silver.crm_sales_details
(
sls_ord_num varchar(50),
sls_prd_key varchar(50),
sls_cust_id int,
sls_order_dt int,
sls_ship_dt int,
sls_due_dt int,
sls_sales int,
sls_quantity int,
sls_price int 
)
;
select 
* from A_silver.crm_sales_details;

/* ===============================================================
		Creating silver erp_CUST_AZ12 table 
   ===============================================================
*/

create table  A_silver.erp_CUST_AZ12
( 
CID varchar(50),
BDATE datetime,
GEN varchar(50)
)
;
 select * from A_silver.erp_CUST_AZ12;
/* ===============================================================
		Creating erp_erp_LOC_A101 table 
   ===============================================================
*/

create table A_silver.erp_LOC_A101
(
CID varchar(50),
CNTRY varchar(50)
)
;
select * from A_silver.erp_LOC_A101;
/* ===============================================================
		Creating PX_CAT_G1V2 table 
   ===============================================================
*/
create table A_silver.erp_PX_CAT_G1V2
(
ID varchar(50),
CAT varchar(50),
SUBCAT varchar(50),
MAINTENANCE varchar(50)
)
;

select * from A_silver.erp_LOC_A101;

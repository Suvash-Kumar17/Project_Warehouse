/* ===============================================================
		Creating crm_cust_info table 
   ===============================================================
*/

create table bronze.b_crm_cust_info (
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
* from bronze.b_crm_cust_info;

/* ===============================================================
		Creating crm_prd_info table 
   ===============================================================
*/
create table bronze.b_crm_prd_info 
( prd_id int,
prd_key varchar(50),
prd_nm varchar(50),
prd_cost int,
prd_line varchar(50),
prd_start_dt datetime,
prd_end_dt datetime
);

select 
*
from bronze.b_crm_prd_info ;

/* ===============================================================
		Creating sales_details table 
   ===============================================================
*/

create table bronze.b_crm_sales_details
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
* from bronze.b_crm_sales_details;

/* ===============================================================
		Creating erp_CUST_AZ12 table 
   ===============================================================
*/

create table  bronze.erp_CUST_AZ12
( 
CID varchar(50),
BDATE datetime,
GEN varchar(50)
)
;

/* ===============================================================
		Creating erp_erp_LOC_A101 table 
   ===============================================================
*/

create table bronze.erp_LOC_A101
(
CID varchar(50),
CNTRY varchar(50)
)
;
/* ===============================================================
		Creating PX_CAT_G1V2 table 
   ===============================================================
*/
create table bronze.PX_CAT_G1V2
(
ID varchar(50),
CAT varchar(50),
SUBCAT varchar(50),
MAINTENANCE varchar(50)
)
;

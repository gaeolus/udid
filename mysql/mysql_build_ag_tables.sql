/* create premarket submissions table*/
drop table if exists ag_premarket_submissions;
create table ag_premarket_submissions
(
  primary_di  varchar(24) not null,
  submission_number varchar(30) not null,
  supplement_number varchar(30) not null
)
;

/* create device size table*/
drop table if exists ag_device_sizes;
create table ag_device_sizes
(
   primary_di varchar(24) not null,
   size_type  varchar(100),
   size_unit  varchar(200),
   size_value varchar(200),
   size_text  varchar(200)
)
;


/* create contact information table */
drop table if exists ag_contacts;
create table ag_contacts
(
  primary_di  varchar(24) not null,
  phone_number  varchar(20),
  phone_extension varchar(10),
  email varchar(100)
)
;


/* create sterilization method type table */
drop table if exists ag_sterilization_methods;
create table ag_sterilization_methods
(
  primary_di  varchar(24) not null,
  sterilization_method  varchar(200)
)
;


/* create product code table */
drop table if exists ag_product_codes;
create table ag_product_codes
(
  primary_di  varchar(24) not null,
  product_code  varchar(3),
  product_code_name varchar(300)
)
;

/* create identifier table */
drop table if exists ag_identifiers;
create table ag_identifiers
(
  primary_di  varchar(24) not null,
  device_id varchar(24),
  device_id_type varchar(20),
  device_id_issuing_agency  varchar(10),
  contains_di_number varchar(24),
  pkg_quantity  integer,
  pkg_discontinued_date date,
  pkg_status varchar(30)
)
;

/* create gmdn term table */
drop table if exists ag_gmdn_terms;
create table ag_gmdn_terms
(
  primary_di  varchar(24) not null,
  gmdn_pt_name  varchar(150),
  gmdn_pt_definition varchar(2000)
)
;

/* create environmental condition table */
drop table if exists ag_environmental_conditions;
create table ag_environmental_conditions
(
  primary_di  varchar(24) not null,
  storage_handling_type varchar(200),
  storage_handling_high_unit varchar(200),
  storage_handling_high_value varchar(200),
  storage_handling_low_unit varchar(200),
  storage_handling_low_value varchar(200),
  special_condition_text varchar(200)
)
;


/* create device (main) table */
drop table if exists ag_device;
create table ag_device
(
  primary_di  varchar(24) not null,
  public_device_record_key varchar(50) not null,
  public_version_status varchar(12),  
  device_record_status  varchar(12),
  public_version_number integer,
  public_version_date date,  
  device_publish_date date,
  comm_distribution_end_date date,
  comm_distribution_status varchar(200),
  brand_name varchar(80),
  version_model_number varchar(80),
  catalog_number  varchar(80),
  duns_number varchar(16),  
  company_name varchar(120),
  device_count integer,
  device_description varchar(2000),
  dm_exempt varchar(5),
  premarket_exempt  varchar(5),
  device_hctp varchar(5),
  device_kit varchar(5),
  device_combination_product varchar(5),
  single_use varchar(5),
  lot_batch varchar(5),
  serial_number varchar(5),
  manufacturing_date varchar(5),
  expiration_date varchar(5),
  donation_id_number varchar(5),
  labeled_contains_nrl varchar(5),
  labeled_no_nrl  varchar(5),
  mri_safety_status varchar(50),
  rx varchar(5),
  otc varchar(5),
  device_sterile varchar(5),
  sterilization_prior_to_use varchar(5)
)
;


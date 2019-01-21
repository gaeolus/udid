select count(*) from ag_device ;
select count(*) from ag_device where version_model_number!=catalog_number;
select primary_di, version_model_number,catalog_number from ag_device where version_model_number!=catalog_number;
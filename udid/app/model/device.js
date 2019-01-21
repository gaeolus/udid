'use strict';

module.exports = app => {
  const { STRING, INTEGER, DATE, UUID } = app.Sequelize;

  const Device = app.model.define('ag_device', {
    id: {
      type: UUID,
      primaryKey: true,
      field: 'public_device_record_key'
    },
    primary_di: STRING(24),
    comm_distribution_end_date: DATE,
    brand_name: STRING(80),
    version_model_number: STRING(80),
    catalog_number: STRING(80),
    company_name: STRING(80),
    device_count: INTEGER,
    device_description: STRING(2000),
    device_kit: STRING(5),
  device_combination_product: STRING(5),
  single_use: STRING(5),
  lot_batch: STRING(5),
  serial_number: STRING(5),
  manufacturing_date: STRING(5),
  expiration_date: STRING(5),
  device_sterile: STRING(5),
  sterilization_prior_to_use: STRING(5),
  created_at: {
    type: DATE,
    field: 'device_publish_date'
  },
  updated_at: {
   type: DATE,
   field: 'public_version_date'
  }
  },{
        freezeTableName: true, //使用默认表名，不会变以collects
    });

  

  return Device;
};

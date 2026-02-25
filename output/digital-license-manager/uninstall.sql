-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dlm_tools', 'dlm_needs_permalinks_flush', 'time_formt', 'nc_info_dlm_lmfwc', 'dlm_settings_general', 'dlm_lmfw_migration_generator_map', 'dlm_db_version', 'lmfwc_settings_general', 'lmfwc_settings_order_status', 'dlm_database_migration_lmfw', 'dlm_consumer_key', 'dlm_api_key', 'dlm_permalinks_needs_flush', 'dlm_error');
DELETE FROM wp_options WHERE option_name LIKE 'dlm_settings_%';
DELETE FROM wp_options WHERE option_name LIKE 'dlm_database_migration_%';
DELETE FROM wp_options WHERE option_name LIKE 'dlm_notice_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lmfwc_licensed_product_delivered_quantity', 'lmfwc_licensed_product_use_generator', 'lmfwc_licensed_product_assigned_generator', 'dlm_licensed_product_use_stock', 'dlm_licensed_product_use_generator', 'dlm_licensed_product_assigned_generator', 'dlm_licensed_product_licenses_source');
DELETE FROM wp_usermeta WHERE meta_key IN ('lmfwc_licensed_product_delivered_quantity', 'lmfwc_licensed_product_use_generator', 'lmfwc_licensed_product_assigned_generator', 'dlm_licensed_product_use_stock', 'dlm_licensed_product_use_generator', 'dlm_licensed_product_assigned_generator', 'dlm_licensed_product_licenses_source');
DELETE FROM wp_termmeta WHERE meta_key IN ('lmfwc_licensed_product_delivered_quantity', 'lmfwc_licensed_product_use_generator', 'lmfwc_licensed_product_assigned_generator', 'dlm_licensed_product_use_stock', 'dlm_licensed_product_use_generator', 'dlm_licensed_product_assigned_generator', 'dlm_licensed_product_licenses_source');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lmfwc_licensed_product_delivered_quantity', 'lmfwc_licensed_product_use_generator', 'lmfwc_licensed_product_assigned_generator', 'dlm_licensed_product_use_stock', 'dlm_licensed_product_use_generator', 'dlm_licensed_product_assigned_generator', 'dlm_licensed_product_licenses_source');


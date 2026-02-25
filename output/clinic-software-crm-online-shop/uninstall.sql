-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('main-settings', 'jal_db_version');
DELETE FROM wp_options WHERE option_name LIKE '%_last_contacts_export_sync';
DELETE FROM wp_options WHERE option_name LIKE '%_last_contacts_import_sync';
DELETE FROM wp_options WHERE option_name LIKE '%_last_coupons_export_sync';
DELETE FROM wp_options WHERE option_name LIKE '%_last_coupons_import_sync';
DELETE FROM wp_options WHERE option_name LIKE '%_last_orders_export_sync';
DELETE FROM wp_options WHERE option_name LIKE '%_last_orders_sync';
DELETE FROM wp_options WHERE option_name LIKE '%_last_services_export_sync';
DELETE FROM wp_options WHERE option_name LIKE '%_last_services_import_sync';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cs_client_id', 'cs_order_id', 'cs_user_id', 'cs_import_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('cs_client_id', 'cs_order_id', 'cs_user_id', 'cs_import_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('cs_client_id', 'cs_order_id', 'cs_user_id', 'cs_import_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cs_client_id', 'cs_order_id', 'cs_user_id', 'cs_import_id');


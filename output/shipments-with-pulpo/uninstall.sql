-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pulpo_send_to_pulpo_state', 'pulpo_force_shipping', 'pulpo_test_mode', 'pulpo_shipping_db_version', 'pulpo_send_order_state');
DELETE FROM wp_options WHERE option_name LIKE '%_tenant_id';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_updated_for_pulpo', '_barcode', '_management_type', '_variable_barcode', '_variable_management_type', '_pulpo_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_updated_for_pulpo', '_barcode', '_management_type', '_variable_barcode', '_variable_management_type', '_pulpo_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_updated_for_pulpo', '_barcode', '_management_type', '_variable_barcode', '_variable_management_type', '_pulpo_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_updated_for_pulpo', '_barcode', '_management_type', '_variable_barcode', '_variable_management_type', '_pulpo_id');


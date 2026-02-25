-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('holnix_conf', 'holnix_api_token', 'holnix_import_total_chunks', 'holnix_import_start_time', 'woocommerce_dimension_unit', 'woocommerce_weight_unit', 'holnix_update_message', 'holnix_api_translations');


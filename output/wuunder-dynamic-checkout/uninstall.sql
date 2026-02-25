-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wuunder_checkout_force_update_fields', 'wuunder_use_custom_backup', 'wuunder_plugin_status', 'wuunder_plugin_environment', 'woocommerce_enable_shipping_calc', 'wuunder_enable_shipping_calc_disabled', 'wuunder_plugin_version', 'wuunder_checkout_status', 'wuunder_api_environment', 'wuunder_api_key', 'wuunder_test_api_key', 'wuunder_webshop_id', 'wuunder_test_webshop_id', 'wuunder_btn_css', 'wuunder_btn_text', 'wuunder_checkout_description', 'wuunder_custom_backup_price', 'wuunder_setup_success');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wuunder_checkout_token');
DELETE FROM wp_usermeta WHERE meta_key IN ('wuunder_checkout_token');
DELETE FROM wp_termmeta WHERE meta_key IN ('wuunder_checkout_token');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wuunder_checkout_token');


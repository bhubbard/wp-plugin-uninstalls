-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('amdsp_auto_fixed_settings', 'amdsp_auto_fix_type', 'amdsp_settings', 'amdsp_wc_fields', 'amdsp_shipping_rules', 'amdsp_auth_token', 'amdsp_user_data', 'amdsp_token_expires_at', 'amdsp_refresh_token', 'amdsp_auth_mobile', 'amdsp_block_other_city_scripts', 'amdsp_version', 'amdsp_install_cities', 'woocommerce_dimension_unit', 'amdsp_delete_data_on_uninstall', 'amd_version', 'amdsp_wizard_completed', 'woocommerce_weight_unit', 'amdsp_admin_installing', 'amdsp_shipping_method_check', 'amdsp_provinces', 'amdsp_cities', 'amdsp_admin_updating');
DELETE FROM wp_options WHERE option_name LIKE 'amdsp_auto_fix_backup_%';
DELETE FROM wp_options WHERE option_name LIKE 'amdsp_%';


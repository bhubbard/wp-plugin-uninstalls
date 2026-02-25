-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'woocommerce_modena_slice_settings', 'woocommerce_modena_credit_settings', 'woocommerce_modena_business_leasing_settings', 'woocommerce_modena_click_settings', 'modena_plugin_version');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chataiwd_module_settings', 'config_telephone', 'woocommerce_myaccount_page_id');


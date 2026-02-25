-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'woocommerce_shipping_debug_mode');
DELETE FROM wp_options WHERE option_name LIKE 'wcsdm_data_version_%';


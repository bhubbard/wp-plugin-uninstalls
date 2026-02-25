-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'woocommerce_woocommerce_grow_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';


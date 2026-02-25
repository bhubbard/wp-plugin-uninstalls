-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_weight_unit', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';


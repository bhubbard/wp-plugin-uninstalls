-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_dibsy_version', 'woocommerce_dibsy-v2_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';


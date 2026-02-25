-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sslcommerz_easy_version', 'woocommerce_sslcommerz_settings');


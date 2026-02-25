-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('phoeniixx_create_custom_btn', 'phoen_woocommerce_catlog_mode');


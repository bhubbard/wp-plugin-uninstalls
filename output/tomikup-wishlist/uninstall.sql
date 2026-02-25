-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tmk-woocommerce-position', 'tmk-data', 'tmk-status', 'tmk-default-script', 'tmk-button-design');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_ew_wise_settings', 'woocommerce_ew_wise_accounts');


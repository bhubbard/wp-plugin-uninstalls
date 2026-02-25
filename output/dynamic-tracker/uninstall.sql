-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('google_dynamic_conversion_tracking_for_woocommerce_option_name');


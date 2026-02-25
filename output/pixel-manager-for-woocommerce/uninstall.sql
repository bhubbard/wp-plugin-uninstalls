-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pmw_pixels_option', 'woocommerce_default_country', 'woocommerce_currency', 'pmw_conversion_api_logs', 'pmw_admin_notices', 'pmw_api_store', 'pmw_migration');


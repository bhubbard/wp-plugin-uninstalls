-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pmw_pixels_option', 'wcor_option', 'woocommerce_default_country', 'woocommerce_currency', 'woocommerce_custom_orders_table_enabled', 'wcor_api_store');


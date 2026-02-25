-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('say2eat_token', 'say2eat_delivery_time', 'say2eat_week_days', 'say2eat_pickup_time', 'woocommerce_default_country', 'woocommerce_store_address_2', 'woocommerce_store_address', 'woocommerce_store_city', 'woocommerce_store_postcode', 'say2eat_app_id', 'say2eat_plugin_configured', 'say2eat_store_token', 'say2eat_store_config');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';


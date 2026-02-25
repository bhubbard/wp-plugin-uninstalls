-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fincart_use_default_pickup_loc', 'fincart_api_token', 'fincart_city_area', 'fincart_show_tracking_info_on_frontend', 'fincart_send_orders_automatically', 'fincart_open_package', 'fincart_description_format', 'fincart_api_token_validation');


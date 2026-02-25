-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pactic_connect__home_delivery_settings', 'pactic_connect__parcel_point_settings', 'active_sitewide_plugins', 'pactic_connect__status', 'pactic_connect__debug', 'pactic_connect__parcel_point_display_type', 'pactic_connect__google_map_api_key', 'pactic_connect__country_codes', 'pactic_connect__save_parcel_points_sync_date', 'pactic_connect__country_codes_sync_date', 'pactic_connect__country_codes_sync_status', 'pactic_connect__cod_payment_methods', 'pactic_connect__welcome_notice');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_shipping_price_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_last_sync_date';
DELETE FROM wp_options WHERE option_name LIKE '%_last_sync_status';
DELETE FROM wp_options WHERE option_name LIKE '%_shipping_cod_price_settings';


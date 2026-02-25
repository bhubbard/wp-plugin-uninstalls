-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cppw_email_info', 'cppw_hide_shipping_address', 'cppw_instructions', 'cppw_checkout_default_empty', 'cppw_nearby_points', 'cppw_total_points', 'cppw_mapbox_public_token', 'cppw_google_api_key', 'cppw_display_phone', 'cppw_display_schedule', 'cppw_points_last_update_try_datetime', 'cppw_points', 'cppw_points_last_update_datetime', 'cppw_points_last_update_server', 'webdados_dpd_portugal_pro_nag', 'webdados_dpd_pickup_pro_nag');
DELETE FROM wp_options WHERE option_name LIKE 'flexible_shipping_methods_%';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE 'betrs_shipping_options-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_was_shipping_method');
DELETE FROM wp_usermeta WHERE meta_key IN ('_was_shipping_method');
DELETE FROM wp_termmeta WHERE meta_key IN ('_was_shipping_method');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_was_shipping_method');


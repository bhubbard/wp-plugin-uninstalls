-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mga_client_id', 'mga_client_secret', 'mga_access_token', 'mga_refresh_token', 'mga_tracking_id', 'mga_property_id', 'mga_tracking_ids', 'mga_disable_tracking', 'mga_track_logged_users', 'mga_track_power_users', 'meowapps_hide_ads', 'mga_expires_at', 'force_sslverify', 'meowapps_hide_meowapps', 'litespeed.conf.cache-rest', 'mwai_options', 'meowapps_news', 'mga_message', 'mga_error');
DELETE FROM wp_options WHERE option_name LIKE '%_license';
DELETE FROM wp_options WHERE option_name LIKE '%_pro_serial';
DELETE FROM wp_options WHERE option_name LIKE '%_rating_date';


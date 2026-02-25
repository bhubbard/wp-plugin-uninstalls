-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('steady-wp_settings_connect_is_connected');
DELETE FROM wp_options WHERE option_name LIKE '%_connect_publication_title';
DELETE FROM wp_options WHERE option_name LIKE '%_connect_campaign_url';
DELETE FROM wp_options WHERE option_name LIKE '%_connect_widget_url';
DELETE FROM wp_options WHERE option_name LIKE '%_connect_api_key';


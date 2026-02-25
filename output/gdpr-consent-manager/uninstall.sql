-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gdprconsentmanager_api_status', 'gdprconsentmanager_schedular_options', 'gdprconsentmanager_options', ' gdprconsentmanager_cookie_widget_options', 'gdprconsentmanager_website_connections_options', 'gdprconsentmanager_webupdate_options');


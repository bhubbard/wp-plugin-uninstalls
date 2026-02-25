-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('autonettv_relay_api_settings_fields', 'autonettv_relay_api_settings_categories_fields', 'autonettv_relay_api_categories', 'autonettv_relay_api_settings_schedule_fields', 'autonettv-relay-api-categories');


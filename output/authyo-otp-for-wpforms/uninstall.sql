-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('authyo_wpforms_settings', 'authyo_wpforms_countries_cache', 'authyo_wpforms_enabled_channels', 'authyo_wpforms_form_settings', 'authyo_wpforms_trigger_tracking');


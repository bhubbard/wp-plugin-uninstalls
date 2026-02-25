-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gwfc_google_api_key', 'google_api_key', 'gwfc_plugin_version');


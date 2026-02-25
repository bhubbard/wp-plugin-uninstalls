-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pick_settings_latest_version', 'pick_settings_version', 'pick_settings_url', 'twp_api_key');


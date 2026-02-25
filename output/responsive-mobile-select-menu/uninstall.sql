-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('responsive_mobile_select_version', 'rms_plugin_settings_v2', 'responsive_mobile_select_update_completed');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sknh_settings', 'sknh_version', 'sknh_activation_time', 'sknh_last_settings_update', 'sknh_update_data', 'sknh_notice_cache', 'sknh_auto_update_status');


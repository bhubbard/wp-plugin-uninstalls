-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('teachable_general_settings', 'teachable_data', 'teachable_activated', 'transient_teachable_general_settings_wp_key', 'transient_teachable_general_settings_sync_now', 'transient_teachable_general_settings_sync_data_form');


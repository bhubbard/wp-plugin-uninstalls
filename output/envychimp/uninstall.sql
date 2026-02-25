-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('new_settings3', 'new_settings2', 'new_settings1', 'new_settings', 'background_picture', 'new_settings_two', 'background_picture_two', 'new_settings4');


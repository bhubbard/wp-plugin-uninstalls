-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('live_2d_settings_user_token', 'live_2d_settings_option_name', 'live_2d_advanced_option_name');


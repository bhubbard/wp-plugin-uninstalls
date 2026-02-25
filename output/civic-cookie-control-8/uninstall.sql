-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('civic_cookiecontrol_settings', 'civic_cookiecontrol_apikey_version', 'civic_cookie_control_version', 'civic_cookiecontrol_settings_v9', 'cookiecontrol_settings', 'civic_cookiecontrol_productval');


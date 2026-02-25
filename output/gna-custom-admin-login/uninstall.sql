-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('g_customadminlogin_configs', 'g_custom_adminlogin_configs');


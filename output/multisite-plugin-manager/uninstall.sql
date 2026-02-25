-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pm_auto_activate_list', 'pm_user_control_list', 'pm_supporter_control_list', 'pm_plugin_override_list', 'site_name');


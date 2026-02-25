-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('uptimemonster_site_monitor_api_keys', 'uptimemonster_first_installed', 'uptimemonster_need_setup', 'auto_update_plugins', 'auto_update_themes', 'umsm_site_monitor_api_keys', 'roxwp_site_monitor_api_keys', 'uptimemonster_site_monitor_version', 'update_core', 'uptimemonster-setting-status', 'uptimemonster-is-connected', 'update_plugins', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'uptimemonster_plugin_data_%';
DELETE FROM wp_options WHERE option_name LIKE 'uptimemonster_theme_data_%';


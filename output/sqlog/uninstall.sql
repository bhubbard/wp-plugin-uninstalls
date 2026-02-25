-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sqlog_install', 'sqlog_install_date', 'sqlog_uninstall_date', 'sqlog_enabled', 'sqlog_purge_interval', 'sqlog_plugin_version', 'sqlog_settings_update');


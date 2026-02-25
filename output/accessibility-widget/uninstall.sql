-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cya11y_widget_settings', 'widget_accesstxt', 'cya11y_banners', 'cya11y_version', 'cya11y_first_time_activated_plugin', '_cya11y_first_time_install', 'cya11y_first_time_install');


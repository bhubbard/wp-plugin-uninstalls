-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bisteinoff_plugin_robots_custom', 'bisteinoff_plugin_robots_custom_google', 'bisteinoff_plugin_robots_enable_yandex', 'bisteinoff_plugin_robots_custom_yandex', 'bisteinoff_plugin_robots_custom_other');


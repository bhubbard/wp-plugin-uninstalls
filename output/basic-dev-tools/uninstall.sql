-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('basic_dev_tools_hide_admin_bar', 'basic_dev_tools_disable_theme_updates', 'basic_dev_tools_disable_plugin_updates', 'basic_dev_tools_disable_core_updates');


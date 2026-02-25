-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bmc_plugin_activated', 'BMC_Widget_disconnect', 'widget_buymeacoffee_widget', 'my_plugin_db_version');


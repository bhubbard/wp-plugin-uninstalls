-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('debug_toggle_monitoring_interval', 'debug_toggle_monitoring', 'debug_toggle_admin_bar', 'debug_toggle_remove_data_on_uninstall');


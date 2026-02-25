-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('debug_log_inspector_plugins', 'debug_log_inspector_settings', 'debug_log_inspector_notice');


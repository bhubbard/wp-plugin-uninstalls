-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('weld_logFolder', 'weld_status', 'weld_remote_status_override', 'weld_process_list', 'weld_server_array', 'weld_enableLogging', 'weld_logDuration', 'weld_warningInterval', 'weld_hardening_wpadmin', 'weld_hardening_pluginexcludes', 'weld_statusServerArray', 'weld_statusTime', 'weld_warningIntervalSent');


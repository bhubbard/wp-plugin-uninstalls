-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('logaction_enable_logs_deletion', 'logaction_delete_logs_after_days', 'logaction_enable_logs_export', 'logaction_settings');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('printpilot_printnode_printers', 'printpilot_gzd_free_documents', 'printpilot_gzd_free_printer_id', 'printpilot_shiptastic_printer_map', 'printpilot_shiptastic_free_printer_id', 'printpilot_shiptastic_free_providers', 'printpilot_shiptastic_printer_settings', 'printpilot_wcdn_free_trigger_status', 'printpilot_wcdn_free_printer_id', 'printpilot_wcdn_free_documents', 'printpilot_wcdn_printer_settings', 'printpilot_printnode_api_key', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');


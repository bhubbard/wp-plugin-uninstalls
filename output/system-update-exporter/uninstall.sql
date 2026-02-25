-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('systupex_default_export_format', 'systupex_show_system_status', 'systupex_allowed_roles', 'systupex_export_format', 'systupex_export_summary', 'systupex_export_summary_text', 'systupex_settings', 'system_update_exporter_settings', 'update_core', 'update_plugins', 'update_themes');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('audit_export_settings', 'audit_export_remote_post_settings', 'sidebars_widgets', 'audit_export_db_version', 'audit_export_last_cron_run', 'audit_export_preserve_data_on_uninstall', 'update_plugins', 'update_themes');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('als_forms_admin_emails', 'als_forms_admin_subject', 'als_forms_admin_message', 'als_forms_admin_cc', 'als_forms_admin_bcc', 'als_forms_user_subject', 'als_forms_user_message', 'als_forms_send_admin_email', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');


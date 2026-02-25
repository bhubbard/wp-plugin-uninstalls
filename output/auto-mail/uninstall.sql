-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('auto_mail_export_filename', 'auto_mail_global_settings', 'auto_mail_activation_hook', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'auto_mail_texts', 'date-format', '_auto_mail_activation_redirect', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '_auto_mail_bulk_import_%';
DELETE FROM wp_options WHERE option_name LIKE '_auto_mail_bulk_import_errors_%';
DELETE FROM wp_options WHERE option_name LIKE '_auto_mail_bulk_import%';
DELETE FROM wp_options WHERE option_name LIKE 'auto_mail_importer_credentials_%';
DELETE FROM wp_options WHERE option_name LIKE 'auto_mail_mailchimp_api_request_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('auto_mail_form', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('auto_mail_form', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('auto_mail_form', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('auto_mail_form', 'first_name', 'last_name');


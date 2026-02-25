-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%enable_multiple_environments';
DELETE FROM wp_options WHERE option_name LIKE '%plugin_owner';
DELETE FROM wp_options WHERE option_name LIKE '%is_review_notification_must_shown';
DELETE FROM wp_options WHERE option_name LIKE '%redirect_to';
DELETE FROM wp_options WHERE option_name LIKE '%sp_x509_certificate';
DELETE FROM wp_options WHERE option_name LIKE '%login_button_styles';
DELETE FROM wp_options WHERE option_name LIKE '%selected_provider';
DELETE FROM wp_options WHERE option_name LIKE '%sp_org_name';
DELETE FROM wp_options WHERE option_name LIKE '%sp_org_display_name';
DELETE FROM wp_options WHERE option_name LIKE '%sp_org_url';
DELETE FROM wp_options WHERE option_name LIKE '%sp_technical_name';
DELETE FROM wp_options WHERE option_name LIKE '%sp_technical_email';
DELETE FROM wp_options WHERE option_name LIKE '%sp_support_name';
DELETE FROM wp_options WHERE option_name LIKE '%sp_support_email';
DELETE FROM wp_options WHERE option_name LIKE '%sp_enable_signing';
DELETE FROM wp_options WHERE option_name LIKE '%sp_enable_encryption';
DELETE FROM wp_options WHERE option_name LIKE '%is_7days_leave_review_notification_shown';
DELETE FROM wp_options WHERE option_name LIKE '%latest_action';
DELETE FROM wp_options WHERE option_name LIKE '%plugin_activation_date';
DELETE FROM wp_options WHERE option_name LIKE '%sp_entity_id';
DELETE FROM wp_options WHERE option_name LIKE '%is_plugin_activated';
DELETE FROM wp_options WHERE option_name LIKE '%admin_environment';
DELETE FROM wp_options WHERE option_name LIKE '%active_editable_environment';
DELETE FROM wp_options WHERE option_name LIKE '%sp_acs_url';
DELETE FROM wp_options WHERE option_name LIKE '%sp_slo_url';
DELETE FROM wp_options WHERE option_name LIKE '%sp_name_id_format';
DELETE FROM wp_options WHERE option_name LIKE '%sp_metadata_url';
DELETE FROM wp_options WHERE option_name LIKE '%sp_metadata_download_url';
DELETE FROM wp_options WHERE option_name LIKE '%sp_x509_cert_download_url';
DELETE FROM wp_options WHERE option_name LIKE '%sp_x509_private_key';
DELETE FROM wp_options WHERE option_name LIKE '%current_environment';
DELETE FROM wp_options WHERE option_name LIKE '%last_error';
DELETE FROM wp_options WHERE option_name LIKE '%count_logins';
DELETE FROM wp_options WHERE option_name LIKE '%buttons_as_widget';
DELETE FROM wp_options WHERE option_name LIKE '%buttons_on_login_page';
DELETE FROM wp_options WHERE option_name LIKE '%buttons_as_short_code';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_avatar';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_avatar';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_avatar';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_avatar';


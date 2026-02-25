-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('psei_salesforce_token', 'psei_salesforce_instance_url', 'psei_salesforce_username', 'psei_salesforce_password', 'psei_salesforce_client_id', 'psei_salesforce_client_secret', 'psei_salesforce_login_table', 'psei_salesforce_access_token', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_active_plugins', 'fs_storage_logger', 'elementor_form_fields', 'psei_salesforce_data', 'psei_otp_type', 'fs_snooze_period', 'update_plugins', 'update_themes', '_fs_api_connection_retry_counter');


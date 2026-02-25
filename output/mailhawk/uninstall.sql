-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mailhawk_default_from_name', 'mailhawk_default_from_email_address', 'mailhawk_log_retention_in_days', 'mailhawk_disable_email_logging', 'mailhawk_retry_failed_emails', 'mailhawk_failed_email_retries', 'mailhawk_mta_credential_key', 'mailhawk_license_server_token', 'mailhawk_delete_all_data', 'mailhawk_ms_sender_domain', 'mailhawk_is_connected', 'mailhawk_access_token', 'active_sitewide_plugins', 'mailhawk_is_suspended', 'mailhawk_email_usage');
DELETE FROM wp_options WHERE option_name LIKE '%_db_version';
DELETE FROM wp_options WHERE option_name LIKE '%_dates';


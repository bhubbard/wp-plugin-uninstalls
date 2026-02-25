-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('siteground_migrator_temp_directory', 'siteground_migrator_encryption_key', 'siteground_migrator_is_siteground_env', 'siteground_migrator_transfer_id', 'siteground_migrator_transfer_psk', 'siteground_migrator_transfer_token', 'siteground_migrator_transfer_status', 'wp_background_process_pid', 'siteground_migrator_progress', 'siteground_migrator_email_recipient', 'siteground_migrator_send_email_notification', 'sg_migrator_colibri', 'siteground_migrator_current_step');
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';


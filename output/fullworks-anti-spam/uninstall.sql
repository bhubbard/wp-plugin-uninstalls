-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fullworks-anti-spam', 'fullworks_anti_spam_db_version', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fullworks-anti-spam-utility-data', 'fullworks_anti_spam_key_name', 'fullworks_anti_spam_key_value', 'fwantispam_training_data_obj', 'fullworks_anti_spam_random_version', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fwas_upgrade_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('fwas_upgrade_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('fwas_upgrade_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fwas_upgrade_notice_dismissed');


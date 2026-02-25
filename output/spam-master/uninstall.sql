-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spam_master_keys_db_version', 'spam_master_connection', 'blacklist_keys_bk', 'spam_master_whitelist', 'spam_master_upgrade_to_6', 'spam_master_license_data', 'spam_master_repo_license_data', 'spam_master_all_settings');


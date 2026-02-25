-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nifty_backups_api_secret_token', 'nifty_backup_options', 'nifty_bu_version', 'nifty-bu-first-time', 'nifty_backup_files');


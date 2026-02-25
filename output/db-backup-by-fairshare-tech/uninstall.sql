-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('db_backup_frequency', 'db_backup_send_email', 'db_backup_key', 'db_backup_last_timestamp');


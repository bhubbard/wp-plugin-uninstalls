-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bamboo_backups_time', 'bamboo_backups_history', 'bamboo_backups_last_run');


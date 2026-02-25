-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('paranoid911_check_database', 'paranoid911_check_filesystem', 'paranoid911_file_method', 'paranoid911_check_interval');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('futusign_option_name', 'futusign_db_version', 'futusign_monitor_option_name');


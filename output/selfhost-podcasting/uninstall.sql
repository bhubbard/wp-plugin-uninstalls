-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_recent_dispatch';
DELETE FROM wp_options WHERE option_name LIKE '%_dispatch_count';
DELETE FROM wp_options WHERE option_name LIKE '%_consecutive_errors';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';


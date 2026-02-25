-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sptc_settings', 'woothemes-sensei-version', 'sensei-version');
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';


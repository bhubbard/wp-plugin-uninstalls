-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cookspin_log_db_version', 'cookspin_has_log');
DELETE FROM wp_options WHERE option_name LIKE 'cookspin_wppref_dummy_%';


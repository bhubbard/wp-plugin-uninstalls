-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('furikake_mode', 'furikake_yahoo_app_id', 'furikake_dictionary', 'furikake_grade', 'furikake_cache');
DELETE FROM wp_options WHERE option_name LIKE 'furikake_%';


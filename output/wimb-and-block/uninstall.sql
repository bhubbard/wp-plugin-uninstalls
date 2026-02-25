-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wimbblock_always', 'wimbblock_deleting', 'wimbblock_emergency', 'wimbblock_exclude', 'wimbblock_anon', 'wimbblock_anon_', 'wimbblock_logfile', 'wimbblock_log', 'wimbblock_settings', 'wimbblock_systems', 'wimbblock_browsers', 'wimbblock_db_version', 'wimbblock_logfile');


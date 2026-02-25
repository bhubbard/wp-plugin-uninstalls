-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tcsb_enable_protection', 'tcsb_enable_logging', 'tcsb_notification_email', 'tcsb_time_threshold', 'tcsb_badwords_list', 'tcsb_enable_japanese_skip', 'tcsb_log_filename');


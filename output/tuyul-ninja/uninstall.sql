-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpty_db_version', 'wpty_priority', 'wpty_email', 'wpty_period', 'options', 'doing_cron');


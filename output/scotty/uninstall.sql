-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('doing_cron', 'scotty_debug_sizes');
DELETE FROM wp_options WHERE option_name LIKE 'default_%';


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lsq_notifications_enabled', 'lsq_threshold', 'lsq_notify_email', 'lsq_send_immediately', 'lsq_send_by_cron', 'lsq_cron_time', 'lsq_cron_frequency', 'dits-lost-search-query_general');


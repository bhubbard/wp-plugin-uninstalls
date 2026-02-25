-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('queue_posts_time_from', 'queue_posts_time_to', 'queue_posts_minimum_interval', 'queue_posts_minimum_interval_type', 'queue_posts_last_queued');


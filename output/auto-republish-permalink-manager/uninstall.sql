-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('arpmp_post_type_cron', 'arpmp_republish_interval', 'arpmp_posts_per_batch', 'arpmp_max_republish_per_day', 'arpmp_enable_permalink_change', 'arpmp_pause_auto_republish', 'arpmp_date_update_mode', 'arpmp_republish_order', 'arpmp_republish_count_today');


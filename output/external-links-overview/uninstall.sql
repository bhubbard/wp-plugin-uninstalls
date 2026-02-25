-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('seokelo_last_external_check_time', 'seokelo_batch_offset', 'seokelo_batch_offset_check', 'seokelo_cache_timestamp', 'seokelo_posts_to_update', 'seokelo_widget_enabled', 'seokelo_total_posts_to_scan', 'seokelo_last_error', 'seokelo_last_external_check_count', 'seokelo_last_external_broken_count');


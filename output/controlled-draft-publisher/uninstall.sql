-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cdp_log_autoload_fixed', 'cdp_log', 'cdp_interval', 'cdp_post_types', 'cdp_logging', 'cdp_posts_per_run', 'cdp_categories', 'cdp_last_publish_error');


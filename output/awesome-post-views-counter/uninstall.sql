-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('post_views_counter_settings_general', 'post_views_counter_settings_display', 'post_views_counter_version', 'post_views_counter_activated_blogs', 'post_views_counter_ip_cache');


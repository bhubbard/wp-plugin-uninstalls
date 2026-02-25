-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('custom_post_type_widget_blocks_calendar_has_published_posts', 'post_count');


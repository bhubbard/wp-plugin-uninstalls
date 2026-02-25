-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woopra', 'woopra_auto_tag_commentators', 'woopra_ignore_admin', 'woopra_track_admin', 'woopra_show_comments', 'woopra_show_searches', 'woopra_api_key', 'woopra_analytics_tab');


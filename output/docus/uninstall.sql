-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('apikey', 'play_list_id', 'video_limit', 'page_layout_style');


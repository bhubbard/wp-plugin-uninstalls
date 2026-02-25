-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jcorgytce_mode', 'jcorgytce_thumbnail_width', 'jcorgytce_video_width', 'jcorgytce_show_title', 'jcorgytce_max_results', 'jcorgytce_start_index', 'jcorgytce_order_by', 'jcorgytce_filter_by_keyword', 'jcorgytce_channel_name', 'jcorgytce_thumb_quality', 'jcorgytce_use', 'jcorgytce_linkback', 'jcorgytce_ytkey', 'jcorgytce_playlist', 'jcorgytce_filter_by_videos', 'jcorgytce_linkback_text');


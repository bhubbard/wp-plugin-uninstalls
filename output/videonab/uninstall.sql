-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%enable_comments';
DELETE FROM wp_options WHERE option_name LIKE '%include_pagination';
DELETE FROM wp_options WHERE option_name LIKE '%video_per_page';
DELETE FROM wp_options WHERE option_name LIKE '%video_page';
DELETE FROM wp_options WHERE option_name LIKE '%facebook_app_id';
DELETE FROM wp_options WHERE option_name LIKE '%video_details_page';
DELETE FROM wp_options WHERE option_name LIKE '%newest';
DELETE FROM wp_options WHERE option_name LIKE '%popular';
DELETE FROM wp_options WHERE option_name LIKE '%enable_listing_filter';
DELETE FROM wp_options WHERE option_name LIKE '%-address';
DELETE FROM wp_options WHERE option_name LIKE '%date_filter';
DELETE FROM wp_options WHERE option_name LIKE '%date_filter_fixed';
DELETE FROM wp_options WHERE option_name LIKE '%date_filter_before';
DELETE FROM wp_options WHERE option_name LIKE '%date_filter_after';
DELETE FROM wp_options WHERE option_name LIKE '%date_filter_last_days';
DELETE FROM wp_options WHERE option_name LIKE '%google_developer_key';
DELETE FROM wp_options WHERE option_name LIKE '%youtube_term';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('video_id', 'video_service', '_block_video', 'thumbnail', 'published_time', '_wp_page_template', 'duration', 'published', 'watch_page', 'flash_player_url', 'youtube_view_count', 'rating', 'fb_likes', 'fb_comments', 'fb_comments_total');
DELETE FROM wp_usermeta WHERE meta_key IN ('video_id', 'video_service', '_block_video', 'thumbnail', 'published_time', '_wp_page_template', 'duration', 'published', 'watch_page', 'flash_player_url', 'youtube_view_count', 'rating', 'fb_likes', 'fb_comments', 'fb_comments_total');
DELETE FROM wp_termmeta WHERE meta_key IN ('video_id', 'video_service', '_block_video', 'thumbnail', 'published_time', '_wp_page_template', 'duration', 'published', 'watch_page', 'flash_player_url', 'youtube_view_count', 'rating', 'fb_likes', 'fb_comments', 'fb_comments_total');
DELETE FROM wp_commentmeta WHERE meta_key IN ('video_id', 'video_service', '_block_video', 'thumbnail', 'published_time', '_wp_page_template', 'duration', 'published', 'watch_page', 'flash_player_url', 'youtube_view_count', 'rating', 'fb_likes', 'fb_comments', 'fb_comments_total');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-address';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-address';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-address';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-address';


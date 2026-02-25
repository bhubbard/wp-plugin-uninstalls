-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yt2wp_youtube_api_key', 'yt2wp_auto_import', 'yt2wp_cron_job_schedule', 'yt2wp_youtube_user_id', 'yt2wp_post_category', 'yt2wp_import_attempt', 'yt2wp_youtube_next_page_token');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('yt2wp_youtube_video_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('yt2wp_youtube_video_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('yt2wp_youtube_video_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('yt2wp_youtube_video_id');


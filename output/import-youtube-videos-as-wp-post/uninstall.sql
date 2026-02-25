-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yt_to_posts_query', 'yt_to_posts_query_type', 'yt_to_posts_number', 'yt_to_posts_cat', 'yt_to_posts_use_video_date', 'yt_to_posts_post_type', 'yt_to_posts_post_status', 'yt_to_posts_author', 'yt_to_posts_ck', 'yt_to_posts_title_format', 'yt_to_posts_content_format');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('media_url', 'yt_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('media_url', 'yt_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('media_url', 'yt_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('media_url', 'yt_id');


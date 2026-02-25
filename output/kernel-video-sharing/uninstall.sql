-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kvs_feed_last_run', 'kvs_feed_last_update', 'kvs_feed_last_insert', 'kvs_feed_last_delete', 'kvs_feed_last_id', 'kvs_feed_meta', 'kvs_feed_meta_update_time', 'kvs_taxonomy_category', 'kvs_taxonomy_tag', 'kvs_taxonomy_model', 'kvs_taxonomy_source', 'kvs_video_filter_by', 'kvs_video_filter_category', 'kvs_video_filter_source', 'kvs_video_screenshot', 'kvs_video_locale', 'kvs_update_limit', 'kvs_post_import_featured_image', 'kvs_post_type', 'kvs_post_date', 'kvs_post_body_template', 'kvs_post_status', 'kvs_log_level', 'kvs_feed_url', 'kvs_library_path', 'kvs_update_period', 'kvs_update_full', 'kvs_delete_period', 'kvs_full_period', 'kvs_custom1_name', 'kvs_custom1_value', 'kvs_custom2_name', 'kvs_custom2_value', 'kvs_custom3_name', 'kvs_custom3_value', 'kvs_custom4_name', 'kvs_custom4_value', 'kvs_custom5_name', 'kvs_custom5_value', 'kvs-admin-notice', 'kvs-meta-notice-success', 'kvs-import-notice-empty', 'kvs-import-notice-success');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('kvs-video-link', 'kvs-video-screenshot', 'kvs-video-id', 'kvs-video-file-url');
DELETE FROM wp_usermeta WHERE meta_key IN ('kvs-video-link', 'kvs-video-screenshot', 'kvs-video-id', 'kvs-video-file-url');
DELETE FROM wp_termmeta WHERE meta_key IN ('kvs-video-link', 'kvs-video-screenshot', 'kvs-video-id', 'kvs-video-file-url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('kvs-video-link', 'kvs-video-screenshot', 'kvs-video-id', 'kvs-video-file-url');


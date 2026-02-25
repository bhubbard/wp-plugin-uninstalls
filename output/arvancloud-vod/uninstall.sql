-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('arvan-cloud-vod-status', 'arvan-cloud-vod-selected_channel_id', 'vod_prevent_saving_video_on_local', 'arvan-cloud-vod-api_key', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('acv_video_data_after_upload', 'acv_video_data', 'ar-vod-media-id', 'acv_video_data_last_fetch', 'arvan_video_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('acv_video_data_after_upload', 'acv_video_data', 'ar-vod-media-id', 'acv_video_data_last_fetch', 'arvan_video_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('acv_video_data_after_upload', 'acv_video_data', 'ar-vod-media-id', 'acv_video_data_last_fetch', 'arvan_video_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('acv_video_data_after_upload', 'acv_video_data', 'ar-vod-media-id', 'acv_video_data_last_fetch', 'arvan_video_data');


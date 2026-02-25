-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_videogate_video_id', '_videogate_video_source', '_clicks_data', '_total_clicks');
DELETE FROM wp_usermeta WHERE meta_key IN ('_videogate_video_id', '_videogate_video_source', '_clicks_data', '_total_clicks');
DELETE FROM wp_termmeta WHERE meta_key IN ('_videogate_video_id', '_videogate_video_source', '_clicks_data', '_total_clicks');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_videogate_video_id', '_videogate_video_source', '_clicks_data', '_total_clicks');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wb_video_VY_page_len', 'class_wb_video_pager', 'class_wb_video_pager_a', 'class_wb_video_container', 'class_wb_video_item', 'class_wb_video_image_link', 'class_wb_video_image_img', 'class_wb_video_title', 'class_wb_video_description', 'class_wb_video_count_in_line', 'wb_video_disable_play_button');
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%_db_upgraded';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('video_source', 'video_url', 'video_type', 'video_thumb');
DELETE FROM wp_usermeta WHERE meta_key IN ('video_source', 'video_url', 'video_type', 'video_thumb');
DELETE FROM wp_termmeta WHERE meta_key IN ('video_source', 'video_url', 'video_type', 'video_thumb');
DELETE FROM wp_commentmeta WHERE meta_key IN ('video_source', 'video_url', 'video_type', 'video_thumb');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'sortorder%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'sortorder%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'sortorder%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'sortorder%';


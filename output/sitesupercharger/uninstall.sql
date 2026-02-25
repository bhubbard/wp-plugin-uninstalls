-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ssc_guid', 'ssc_404_inactive_url', 'ssc_301_redirect_url', 'ssc_main_phone', 'ssc_alt_phone', 'ssc_interlinking_keywords', 'ssc_interlinking_links', 'ssc_config_last_modified', 'ssc_last_check', 'ssc_last_update', 'ssc_last_update_completion', 'ssc_image_count', 'ssc_page_count', 'ssc_post_count', 'ssc_plugin_version', 'ssc_force_update', 'ssc_group_size', 'ssc_last_check_result', 'ssc_locked', 'ssc_log', 'ssc_queue', 'ssc_queue_cancel', 'ssc_queue_current_page', 'ssc_queue_current_page_timestamp', 'ssc_queue_hook_timestamp', 'ssc_queue_length', 'ssc_queue_length_total', 'ssc_queue_page_processed', 'ssc_queue_page_skipped', 'ssc_queue_post_processed', 'ssc_queue_post_skipped', 'ssc_update_end', 'ssc_update_method', 'ssc_update_result', 'ssc_update_start', 'ssc_readConfig_lock', 'ssc_processQueue_lock', 'ssc_processCompleted_lock');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ssc_guid', '_wp_page_template', '_thumbnail_id', 'kd_featured-image-2_post_id', 'kd_featured-image-3_post_id', 'kd_featured-image-4_post_id', 'kd_featured-image-5_post_id', '_ssc_parent_page', '_ssc_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ssc_guid', '_wp_page_template', '_thumbnail_id', 'kd_featured-image-2_post_id', 'kd_featured-image-3_post_id', 'kd_featured-image-4_post_id', 'kd_featured-image-5_post_id', '_ssc_parent_page', '_ssc_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ssc_guid', '_wp_page_template', '_thumbnail_id', 'kd_featured-image-2_post_id', 'kd_featured-image-3_post_id', 'kd_featured-image-4_post_id', 'kd_featured-image-5_post_id', '_ssc_parent_page', '_ssc_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ssc_guid', '_wp_page_template', '_thumbnail_id', 'kd_featured-image-2_post_id', 'kd_featured-image-3_post_id', 'kd_featured-image-4_post_id', 'kd_featured-image-5_post_id', '_ssc_parent_page', '_ssc_image');


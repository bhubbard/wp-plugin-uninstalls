-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'wpgs_form', 'woocommerce_placeholder_image', 'rsfv_queue_flush_rewrite_rules', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'rsfv_rollback_versions_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_elementor_data', '_product_url', '_rsfv_fv_display_type', '_rsfv_fv_page_ids', '_rsfv_fv_target_post_types', '_rsfv_fv_target_taxonomies', '_rsfv_fv_video_source', '_rsfv_fv_video_id', '_rsfv_fv_embed_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_elementor_data', '_product_url', '_rsfv_fv_display_type', '_rsfv_fv_page_ids', '_rsfv_fv_target_post_types', '_rsfv_fv_target_taxonomies', '_rsfv_fv_video_source', '_rsfv_fv_video_id', '_rsfv_fv_embed_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_elementor_data', '_product_url', '_rsfv_fv_display_type', '_rsfv_fv_page_ids', '_rsfv_fv_target_post_types', '_rsfv_fv_target_taxonomies', '_rsfv_fv_video_source', '_rsfv_fv_video_id', '_rsfv_fv_embed_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_elementor_data', '_product_url', '_rsfv_fv_display_type', '_rsfv_fv_page_ids', '_rsfv_fv_target_post_types', '_rsfv_fv_target_taxonomies', '_rsfv_fv_video_source', '_rsfv_fv_video_id', '_rsfv_fv_embed_url');


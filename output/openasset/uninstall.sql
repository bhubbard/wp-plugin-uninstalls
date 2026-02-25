-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('openasset_settings', 'openasset_data', 'openasset_sync_running', 'openasset_cpts_first_run_complete', 'openasset_project_sync_count', 'openasset_employee_sync_count', 'openasset_last_project_updated', 'openasset_last_employee_updated', 'openasset_total_project_count', 'openasset_total_employee_count', 'openasset_text_assets_sync_count', 'openasset_sync_error_count', 'openasset_employee_posts_deleted', 'openasset_project_posts_deleted', 'jetpack_protect_active', 'wpcom_public_coming_soon', 'openasset_queue_initiating', 'openasset_sync_trigger_source', 'openasset_force_full_sync', 'openasset_sync_type_override', 'openasset_migration_notice', 'jetpack_is_single_user');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('openasset_id', '_oa_last_synced', 'openasset_data', '_oa_content_hash', 'openasset_parent_id', 'sort_value', 'openasset_file_id', '_is_oa_video', '_video_poster_id', '_is_video_poster', '_poster_for_video_id', 'md5_at_upload', '_oa_image_updated', '_oa_size_id', '_source_url', '_wp_attachment_image_alt', 'photographer', 'copyright_holder', 'created', 'updated', 'uploaded', 'rank', 'project_display_order');
DELETE FROM wp_usermeta WHERE meta_key IN ('openasset_id', '_oa_last_synced', 'openasset_data', '_oa_content_hash', 'openasset_parent_id', 'sort_value', 'openasset_file_id', '_is_oa_video', '_video_poster_id', '_is_video_poster', '_poster_for_video_id', 'md5_at_upload', '_oa_image_updated', '_oa_size_id', '_source_url', '_wp_attachment_image_alt', 'photographer', 'copyright_holder', 'created', 'updated', 'uploaded', 'rank', 'project_display_order');
DELETE FROM wp_termmeta WHERE meta_key IN ('openasset_id', '_oa_last_synced', 'openasset_data', '_oa_content_hash', 'openasset_parent_id', 'sort_value', 'openasset_file_id', '_is_oa_video', '_video_poster_id', '_is_video_poster', '_poster_for_video_id', 'md5_at_upload', '_oa_image_updated', '_oa_size_id', '_source_url', '_wp_attachment_image_alt', 'photographer', 'copyright_holder', 'created', 'updated', 'uploaded', 'rank', 'project_display_order');
DELETE FROM wp_commentmeta WHERE meta_key IN ('openasset_id', '_oa_last_synced', 'openasset_data', '_oa_content_hash', 'openasset_parent_id', 'sort_value', 'openasset_file_id', '_is_oa_video', '_video_poster_id', '_is_video_poster', '_poster_for_video_id', 'md5_at_upload', '_oa_image_updated', '_oa_size_id', '_source_url', '_wp_attachment_image_alt', 'photographer', 'copyright_holder', 'created', 'updated', 'uploaded', 'rank', 'project_display_order');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'oa_field_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'oa_field_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'oa_field_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'oa_field_%';


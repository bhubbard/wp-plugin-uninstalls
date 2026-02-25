-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('extendify_site_id', 'gform_enable_noconflict', 'ngg_options', 'imagify_old_version', 'ms_files_rewriting', 'imagifyp_id', 'imagify_settings', 'imagify_files_db_version', 'imagify_folders_db_version', 'imagify_data', 'ngg_imagify_data_db_version', 'plugin_family_dismiss_promote_imagify', 'imagify_custom-folders_optimize_running', 'imagify_wp_optimize_running', 'imagify_bulk_optimization_complete', 'imagify_missing_next_gen_total', 'imagify_bulk_optimization_result', 'imagify_stat_without_next_gen', 'imagify_bulk_optimization_infos', 'do_imagify_rating_cron', 'imagify_user_images_count', 'imagify_seen_rating_notice', 'imagify_activation', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count', 'imagify_themes_plugins_to_sync', 'imagify_user_cache', 'update_plugins', 'imagify_check_licence_1', 'imagify_attachments_number_modal', 'imagify_large_library', 'imagify_user', 'imagify_max_image_size', 'imagify_bulk_optimization_level');
DELETE FROM wp_options WHERE option_name LIKE '%ngg_imagify_data_db_version';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';
DELETE FROM wp_options WHERE option_name LIKE 'imagify_rpc_%';
DELETE FROM wp_options WHERE option_name LIKE 'imagify-auto-optimize-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_metadata', '_wp_attached_file', '_imagify_data', '_imagify_status', '_imagify_optimization_level', 'wpos3_filesize_total', 'amazonS3_info', '_imagify_ignore_ads', '_wp_attachment_backup_sizes', '_imagify_ignore_notices');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_metadata', '_wp_attached_file', '_imagify_data', '_imagify_status', '_imagify_optimization_level', 'wpos3_filesize_total', 'amazonS3_info', '_imagify_ignore_ads', '_wp_attachment_backup_sizes', '_imagify_ignore_notices');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_metadata', '_wp_attached_file', '_imagify_data', '_imagify_status', '_imagify_optimization_level', 'wpos3_filesize_total', 'amazonS3_info', '_imagify_ignore_ads', '_wp_attachment_backup_sizes', '_imagify_ignore_notices');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_metadata', '_wp_attached_file', '_imagify_data', '_imagify_status', '_imagify_optimization_level', 'wpos3_filesize_total', 'amazonS3_info', '_imagify_ignore_ads', '_wp_attachment_backup_sizes', '_imagify_ignore_notices');


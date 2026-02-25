-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('goft-wpjm-activated', 'goft-wpjm-error', 'goft-wpjm-samples-installed', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'job_manager_submission_duration', '_goft-rss-feed-chunks', '_wp_sh_plugin_browser-list-info', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_goft_wpjm_is_external', 'bc_screen_options', '_goft_source_data', '_goft_wpjm_import_params', '_goft_wpjm_other', '_goft_jobfeed', '_goft_external_link', '_goft_wpjm_original_item', 'dismissed_wp_pointers', '_log_messages', '_job_apply_type', '_company_name', '_company_id', '_company_manager_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_goft_wpjm_is_external', 'bc_screen_options', '_goft_source_data', '_goft_wpjm_import_params', '_goft_wpjm_other', '_goft_jobfeed', '_goft_external_link', '_goft_wpjm_original_item', 'dismissed_wp_pointers', '_log_messages', '_job_apply_type', '_company_name', '_company_id', '_company_manager_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_goft_wpjm_is_external', 'bc_screen_options', '_goft_source_data', '_goft_wpjm_import_params', '_goft_wpjm_other', '_goft_jobfeed', '_goft_external_link', '_goft_wpjm_original_item', 'dismissed_wp_pointers', '_log_messages', '_job_apply_type', '_company_name', '_company_id', '_company_manager_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_goft_wpjm_is_external', 'bc_screen_options', '_goft_source_data', '_goft_wpjm_import_params', '_goft_wpjm_other', '_goft_jobfeed', '_goft_external_link', '_goft_wpjm_original_item', 'dismissed_wp_pointers', '_log_messages', '_job_apply_type', '_company_name', '_company_id', '_company_manager_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_error_data_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_error_data_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_error_data_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_error_data_%';


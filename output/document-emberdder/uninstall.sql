-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('csf_demo_mode', 'ppv_pro_import', '_ppt_', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bplde_settings', 'ppv', '_groupped_ppv_file_url', '_groupped_ppv_ext_url', 'ppt_ppv_width', 'ppt_ppv_height', 'ppt_ppv_file_name', 'conditinal_fields', 'ppt_ppv_download', 'ppt_ppv_disable', 'ppt_ppv_download_btn_text', 'nickname');
DELETE FROM wp_usermeta WHERE meta_key IN ('bplde_settings', 'ppv', '_groupped_ppv_file_url', '_groupped_ppv_ext_url', 'ppt_ppv_width', 'ppt_ppv_height', 'ppt_ppv_file_name', 'conditinal_fields', 'ppt_ppv_download', 'ppt_ppv_disable', 'ppt_ppv_download_btn_text', 'nickname');
DELETE FROM wp_termmeta WHERE meta_key IN ('bplde_settings', 'ppv', '_groupped_ppv_file_url', '_groupped_ppv_ext_url', 'ppt_ppv_width', 'ppt_ppv_height', 'ppt_ppv_file_name', 'conditinal_fields', 'ppt_ppv_download', 'ppt_ppv_disable', 'ppt_ppv_download_btn_text', 'nickname');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bplde_settings', 'ppv', '_groupped_ppv_file_url', '_groupped_ppv_ext_url', 'ppt_ppv_width', 'ppt_ppv_height', 'ppt_ppv_file_name', 'conditinal_fields', 'ppt_ppv_download', 'ppt_ppv_disable', 'ppt_ppv_download_btn_text', 'nickname');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%';


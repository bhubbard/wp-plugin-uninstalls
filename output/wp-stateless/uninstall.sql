-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sm_root_dir', 'sm_mode', 'stateless-modules', 'sm_bucket', 'sm_key_json', 'active_sitewide_plugins', 'wp_sm_version', 'sm_on_fly', 'sm.mode', 'sm.service_account_name', 'sm_service_account_name', 'sm.key_file_path', 'sm_key_file_path', 'sm.bucket', 'sm.app_name', 'sm.body_rewrite', 'sm.bucket_url_path', 'sm.post_content_rewrite', 'dismissed_notice_stateless_cache_busting', 'sm_hashify_file_name', 'sm_dynamic_image_support', 'wp_stateless_jwt_key', 'dismissed_ud_notices', 'ud_api_key', 'recently_activated', 'wp_stateless_google_sdk_conflict', 'sm::is_connected_to_gs', 'random_seed');
DELETE FROM wp_options WHERE option_name LIKE 'dismissed_notice_%';
DELETE FROM wp_options WHERE option_name LIKE '%-url';
DELETE FROM wp_options WHERE option_name LIKE '%-activated';
DELETE FROM wp_options WHERE option_name LIKE 'ud_ping_%';
DELETE FROM wp_options WHERE option_name LIKE '%_no_key';
DELETE FROM wp_options WHERE option_name LIKE '%_no_subscription';
DELETE FROM wp_options WHERE option_name LIKE '%_exp_license';
DELETE FROM wp_options WHERE option_name LIKE '%_hold_subscription';
DELETE FROM wp_options WHERE option_name LIKE '%_cancelled_subscription';
DELETE FROM wp_options WHERE option_name LIKE '%_exp_subscription';
DELETE FROM wp_options WHERE option_name LIKE '%_suspended_subscription';
DELETE FROM wp_options WHERE option_name LIKE '%_pending_subscription';
DELETE FROM wp_options WHERE option_name LIKE '%_trash_subscription';
DELETE FROM wp_options WHERE option_name LIKE '%_no_activation';
DELETE FROM wp_options WHERE option_name LIKE '%_download_revoked';
DELETE FROM wp_options WHERE option_name LIKE '%_switched_subscription';
DELETE FROM wp_options WHERE option_name LIKE 'dismissed_warning_%';
DELETE FROM wp_options WHERE option_name LIKE '%-current-version';
DELETE FROM wp_options WHERE option_name LIKE '%-splash-version';
DELETE FROM wp_options WHERE option_name LIKE 'stateless_url_to_postid_%';
DELETE FROM wp_options WHERE option_name LIKE 'sm-wp-smush-backup-exists-%';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';
DELETE FROM wp_options WHERE option_name LIKE '%_ping';
DELETE FROM wp_options WHERE option_name LIKE '%-more-a';
DELETE FROM wp_options WHERE option_name LIKE '%-more';
DELETE FROM wp_options WHERE option_name LIKE '%-request-error';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_metadata', '_wp_attached_file', 'sm_cloud', '_wp_attachment_backup_sizes', 'sm_cloud:name', 'sm_cloud:fileLink', 'sm_cloud:id', 'sm_cloud:storageClass', 'sm_cloud:mediaLink', 'sm_cloud:selfLink', 'sm_cloud:bucket', 'sm_cloud:object', '_wp_page_template', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_metadata', '_wp_attached_file', 'sm_cloud', '_wp_attachment_backup_sizes', 'sm_cloud:name', 'sm_cloud:fileLink', 'sm_cloud:id', 'sm_cloud:storageClass', 'sm_cloud:mediaLink', 'sm_cloud:selfLink', 'sm_cloud:bucket', 'sm_cloud:object', '_wp_page_template', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_metadata', '_wp_attached_file', 'sm_cloud', '_wp_attachment_backup_sizes', 'sm_cloud:name', 'sm_cloud:fileLink', 'sm_cloud:id', 'sm_cloud:storageClass', 'sm_cloud:mediaLink', 'sm_cloud:selfLink', 'sm_cloud:bucket', 'sm_cloud:object', '_wp_page_template', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_metadata', '_wp_attached_file', 'sm_cloud', '_wp_attachment_backup_sizes', 'sm_cloud:name', 'sm_cloud:fileLink', 'sm_cloud:id', 'sm_cloud:storageClass', 'sm_cloud:mediaLink', 'sm_cloud:selfLink', 'sm_cloud:bucket', 'sm_cloud:object', '_wp_page_template', '_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%:name';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%:name';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%:name';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%:name';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%:fileLink';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%:fileLink';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%:fileLink';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%:fileLink';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%:id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%:id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%:id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%:id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%:mediaLink';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%:mediaLink';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%:mediaLink';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%:mediaLink';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%:selfLink';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%:selfLink';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%:selfLink';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%:selfLink';


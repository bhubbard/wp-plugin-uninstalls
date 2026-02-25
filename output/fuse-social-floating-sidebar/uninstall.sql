-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'ReduxFrameworkPlugin', 'ReduxFrameworkPlugin_ACTIVATED_NOTICES', 'redux-framework_extendify_plugin_notice', 'redux_pro_license_key', 'woocommerce_shop_page_id', 'auto_update_redux_google_fonts', '_redux_content_width', 'fuse_click_data', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'fs_storage_logger', 'fs_active_plugins', 'fuse', 'fuse_social_options', 'update_plugins', 'fs_snooze_period', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%ense_key';
DELETE FROM wp_options WHERE option_name LIKE '%icense_status';
DELETE FROM wp_options WHERE option_name LIKE '%-transients';
DELETE FROM wp_options WHERE option_name LIKE '%-transient';
DELETE FROM wp_options WHERE option_name LIKE '%-transients-metaboxes';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('extendifysdk_user_data', 'ignore_hints', '_visibility', '_stock_status', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('extendifysdk_user_data', 'ignore_hints', '_visibility', '_stock_status', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('extendifysdk_user_data', 'ignore_hints', '_visibility', '_stock_status', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('extendifysdk_user_data', 'ignore_hints', '_visibility', '_stock_status', '_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ignore_%';


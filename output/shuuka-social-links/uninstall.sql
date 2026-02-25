-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shuuka_plugin_do_activation_redirect', 'shuuka_user_page_setting', 'r_notice_data', 'ReduxFrameworkPlugin_ACTIVATED_NOTICES', 'active_sitewide_plugins', 'ReduxFrameworkPlugin', 'redux-framework-tracking', 'redux_version_upgraded_from', 'redux_support_hash', 'redux_tracking_cache', 'redux-extensions-fetch', 'redux_contributors', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%-transients';
DELETE FROM wp_options WHERE option_name LIKE '%-transient';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'ignore_hints');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'ignore_hints');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'ignore_hints');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'ignore_hints');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ignore_%';


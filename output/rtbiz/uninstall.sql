-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rtbiz_activation_redirect', 'rtbiz_acl_module_permissions', 'rt_product_plugin_sync', 'p2p_storage', 'rthd_googleapi_redirecturl', 'rthd_googleapi_clientid', 'rthd_googleapi_clientsecret', 'rtbiz_taxonomy_metadata_migration_complete', 'r_notice_data', 'active_sitewide_plugins', 'ReduxFrameworkPlugin', 'redux-framework-tracking', 'redux_version_upgraded_from', 'redux_support_hash', 'ReduxFrameworkPlugin_ACTIVATED_NOTICES', 'redux_tracking_cache', 'redux-extensions-fetch', '_redux_activation_redirect', 'redux_contributors', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%-meta';
DELETE FROM wp_options WHERE option_name LIKE '%-transients';
DELETE FROM wp_options WHERE option_name LIKE '%-transient';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rtbiz_profile_permissions', 'rtbiz_is_staff_member', 'rtbiz_show_welcome_panel', 'dismissed_wp_pointers', '_rtlib_messageid', '_rtlib_references', 'ignore_hints');
DELETE FROM wp_usermeta WHERE meta_key IN ('rtbiz_profile_permissions', 'rtbiz_is_staff_member', 'rtbiz_show_welcome_panel', 'dismissed_wp_pointers', '_rtlib_messageid', '_rtlib_references', 'ignore_hints');
DELETE FROM wp_termmeta WHERE meta_key IN ('rtbiz_profile_permissions', 'rtbiz_is_staff_member', 'rtbiz_show_welcome_panel', 'dismissed_wp_pointers', '_rtlib_messageid', '_rtlib_references', 'ignore_hints');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rtbiz_profile_permissions', 'rtbiz_is_staff_member', 'rtbiz_show_welcome_panel', 'dismissed_wp_pointers', '_rtlib_messageid', '_rtlib_references', 'ignore_hints');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_error_data_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_error_data_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_error_data_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_error_data_%';


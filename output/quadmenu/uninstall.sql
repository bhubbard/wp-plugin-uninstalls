-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jetpack_protect_active', 'jetpack_offline_mode', 'wpcom_public_coming_soon', '_quadmenu_compiler', 'quadmenu_admin_notices', 'quadmenu_redux_notices', 'r_notice_data', 'ReduxFrameworkPlugin_ACTIVATED_NOTICES', 'active_sitewide_plugins', 'ReduxFrameworkPlugin', 'redux-framework-tracking', 'redux_version_upgraded_from', 'redux_support_hash', 'jetpack_is_single_user', 'quadlayers_news_feed', '_quadmenu_redirect', '_quadmenu_first_rating', '_quadmenu_activation', '_quadmenu_saved_reload', 'reduxlegacy_tracking_cache', 'redux-extensions-fetch', 'redux_contributors');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';
DELETE FROM wp_options WHERE option_name LIKE '%-transients';
DELETE FROM wp_options WHERE option_name LIKE '%-transient';
DELETE FROM wp_options WHERE option_name LIKE 'ql_plugin_feedback_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_menu_item_url', '_menu_item_target', '_menu_item_classes', '_menu_item_xfn', 'ignore_hints');
DELETE FROM wp_usermeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_menu_item_url', '_menu_item_target', '_menu_item_classes', '_menu_item_xfn', 'ignore_hints');
DELETE FROM wp_termmeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_menu_item_url', '_menu_item_target', '_menu_item_classes', '_menu_item_xfn', 'ignore_hints');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_menu_item_url', '_menu_item_target', '_menu_item_classes', '_menu_item_xfn', 'ignore_hints');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ignore_%';


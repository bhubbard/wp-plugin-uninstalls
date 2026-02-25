-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alith_option', 'r_notice_data', 'active_sitewide_plugins', 'ReduxFrameworkPlugin', 'redux-framework-tracking', 'wbc_imported_demos', 'wbc_import_progress', 'sidebars_widgets', 'redux_version_upgraded_from', 'redux_support_hash', 'redux_tracking_cache', 'redux-extensions-fetch', '_redux_activation_redirect', 'redux_contributors', 'aliththeme_alith_tweet_feed');
DELETE FROM wp_options WHERE option_name LIKE '%-transients';
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';
DELETE FROM wp_options WHERE option_name LIKE '%-transient';
DELETE FROM wp_options WHERE option_name LIKE 'st_instagram_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('facebook', 'twitter', 'pinterest', 'instagram', 'google', 'ignore_hints', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('facebook', 'twitter', 'pinterest', 'instagram', 'google', 'ignore_hints', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('facebook', 'twitter', 'pinterest', 'instagram', 'google', 'ignore_hints', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('facebook', 'twitter', 'pinterest', 'instagram', 'google', 'ignore_hints', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ignore_%';


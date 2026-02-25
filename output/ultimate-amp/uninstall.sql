-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('r_notice_data', 'active_sitewide_plugins', 'ReduxFrameworkPlugin', 'redux-framework-tracking', 'redux_version_upgraded_from', 'redux_support_hash', 'recently_activated', 'amp_customizer', 'uamp_content_width', 'uamp_endpoint', 'redux_tracking_cache', 'redux-extensions-fetch', 'redux_contributors', 'update_plugins', 'settings_errors');
DELETE FROM wp_options WHERE option_name LIKE '%-transients';
DELETE FROM wp_options WHERE option_name LIKE '%-transient';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ignore_hints', 'uamp-override-content', 'uamp-custom-content', 'uamp-override-title', 'uamp-custom-title', 'uamp_featured_image_id', '_thumbnail_id', 'uamp-exclude', '_menu_item_object_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('ignore_hints', 'uamp-override-content', 'uamp-custom-content', 'uamp-override-title', 'uamp-custom-title', 'uamp_featured_image_id', '_thumbnail_id', 'uamp-exclude', '_menu_item_object_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('ignore_hints', 'uamp-override-content', 'uamp-custom-content', 'uamp-override-title', 'uamp-custom-title', 'uamp_featured_image_id', '_thumbnail_id', 'uamp-exclude', '_menu_item_object_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ignore_hints', 'uamp-override-content', 'uamp-custom-content', 'uamp-override-title', 'uamp-custom-title', 'uamp_featured_image_id', '_thumbnail_id', 'uamp-exclude', '_menu_item_object_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';


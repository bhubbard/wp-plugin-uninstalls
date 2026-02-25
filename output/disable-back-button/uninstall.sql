-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('r_notice_data', 'active_sitewide_plugins', 'ReduxFrameworkPlugin', 'redux-framework-tracking', 'redux_version_upgraded_from', 'redux_support_hash', 'recently_activated', 'redux_tracking_cache', 'redux-extensions-fetch', '_redux_activation_redirect', 'redux_contributors', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%-transients';
DELETE FROM wp_options WHERE option_name LIKE '%-transient';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ignore_hints');
DELETE FROM wp_usermeta WHERE meta_key IN ('ignore_hints');
DELETE FROM wp_termmeta WHERE meta_key IN ('ignore_hints');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ignore_hints');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';


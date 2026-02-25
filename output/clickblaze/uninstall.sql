-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cb_license_key', 'r_notice_data', 'active_sitewide_plugins', 'ReduxFrameworkPlugin', 'redux-framework-tracking', 'redux_version_upgraded_from', 'redux_support_hash', 'redux_tracking_cache', 'redux-extensions-fetch', 'redux_contributors');
DELETE FROM wp_options WHERE option_name LIKE '%-transients';
DELETE FROM wp_options WHERE option_name LIKE '%-transient';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hn_eliio_copy', 'hn_eliio_cta', 'hn_eliio_link', 'hn_eliio_tracking', 'ignore_hints');
DELETE FROM wp_usermeta WHERE meta_key IN ('hn_eliio_copy', 'hn_eliio_cta', 'hn_eliio_link', 'hn_eliio_tracking', 'ignore_hints');
DELETE FROM wp_termmeta WHERE meta_key IN ('hn_eliio_copy', 'hn_eliio_cta', 'hn_eliio_link', 'hn_eliio_tracking', 'ignore_hints');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hn_eliio_copy', 'hn_eliio_cta', 'hn_eliio_link', 'hn_eliio_tracking', 'ignore_hints');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ignore_%';


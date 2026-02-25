-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('redux-framework-tracking', 'aio_avada', 'ReduxFrameworkPlugin_ACTIVATED_NOTICES', 'redux-framework_tracking_notice', 'redux_support_hash', 'active_sitewide_plugins', 'ReduxFrameworkPlugin', 'auto_update_redux_google_fonts', 'activated_Redux');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';
DELETE FROM wp_options WHERE option_name LIKE '%ense_key';
DELETE FROM wp_options WHERE option_name LIKE '%icense_status';
DELETE FROM wp_options WHERE option_name LIKE '%-transients';
DELETE FROM wp_options WHERE option_name LIKE '%-transient';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ignore_hints', '_sale_price_dates_to');
DELETE FROM wp_usermeta WHERE meta_key IN ('ignore_hints', '_sale_price_dates_to');
DELETE FROM wp_termmeta WHERE meta_key IN ('ignore_hints', '_sale_price_dates_to');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ignore_hints', '_sale_price_dates_to');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ignore_%';


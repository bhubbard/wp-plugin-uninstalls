-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wb_bsl_ver', 'bsl_version', 'wb_bsl_promote', 'wb_idx_data_updated', 'wb_bsl_check_all', 'bsl_yandex_token', 'bsl_yandex_error', 'bsl_bing_updateCrawlStats', 'wb_bsl_db_ver', 'bsl_google_jwt_token', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%ver';
DELETE FROM wp_options WHERE option_name LIKE 'wb_bsl_cnf_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wb_bsl_daily_push', 'url_in_baidu', 'url_in_baidu_ymd');
DELETE FROM wp_usermeta WHERE meta_key IN ('wb_bsl_daily_push', 'url_in_baidu', 'url_in_baidu_ymd');
DELETE FROM wp_termmeta WHERE meta_key IN ('wb_bsl_daily_push', 'url_in_baidu', 'url_in_baidu_ymd');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wb_bsl_daily_push', 'url_in_baidu', 'url_in_baidu_ymd');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('crawlwp_bing_indexing_rate_limit_expiration', 'crawlwp_google_indexing_rate_limit_expiration', 'crawlwp_yandex_indexing_rate_limit_expiration');
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_last_update';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_last_update';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_last_update';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_last_update';


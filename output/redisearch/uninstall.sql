-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_redisearch_last_indexed', 'wp_redisearch_need_upgrade_index', 'wp_redisearch_feature_settings', 'wp_redisearch_default_language', 'wp_redisearch_feature_requires_reindex', 'fj_tests_fea', 'fj_tests_fea_sl', 'fj_tests_fea_sett', 'wp_redisearch_index_meta', 'wp_redisearch_index_name', 'wp_redisearch_server', 'wp_redisearch_connection_scheme', 'wp_redisearch_port', 'wp_redisearch_password', 'wp_redisearch_search_in_admin', 'wp_redisearch_wpcli_indexing');


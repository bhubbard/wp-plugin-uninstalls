<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_redisearch_last_indexed');
delete_site_option('wp_redisearch_last_indexed');
delete_option('wp_redisearch_need_upgrade_index');
delete_site_option('wp_redisearch_need_upgrade_index');
delete_option('wp_redisearch_feature_settings');
delete_site_option('wp_redisearch_feature_settings');
delete_option('wp_redisearch_default_language');
delete_site_option('wp_redisearch_default_language');
delete_option('wp_redisearch_feature_requires_reindex');
delete_site_option('wp_redisearch_feature_requires_reindex');
delete_option('fj_tests_fea');
delete_site_option('fj_tests_fea');
delete_option('fj_tests_fea_sl');
delete_site_option('fj_tests_fea_sl');
delete_option('fj_tests_fea_sett');
delete_site_option('fj_tests_fea_sett');
delete_option('wp_redisearch_index_meta');
delete_site_option('wp_redisearch_index_meta');
delete_option('wp_redisearch_index_name');
delete_site_option('wp_redisearch_index_name');
delete_option('wp_redisearch_server');
delete_site_option('wp_redisearch_server');
delete_option('wp_redisearch_connection_scheme');
delete_site_option('wp_redisearch_connection_scheme');
delete_option('wp_redisearch_port');
delete_site_option('wp_redisearch_port');
delete_option('wp_redisearch_password');
delete_site_option('wp_redisearch_password');
delete_option('wp_redisearch_search_in_admin');
delete_site_option('wp_redisearch_search_in_admin');

// Delete Transients
delete_transient('wp_redisearch_wpcli_indexing');
delete_site_transient('wp_redisearch_wpcli_indexing');


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scm_option_woocommerce_status');
delete_site_option('scm_option_woocommerce_status');
delete_option('scm_option_advanced_driver_redis');
delete_site_option('scm_option_advanced_driver_redis');
delete_option('scm_option_advanced_driver_redis_connection_type');
delete_site_option('scm_option_advanced_driver_redis_connection_type');
delete_option('scm_option_advanced_driver_mongodb');
delete_site_option('scm_option_advanced_driver_mongodb');
delete_option('scm_option_advanced_driver_mongodb_connection_type');
delete_site_option('scm_option_advanced_driver_mongodb_connection_type');
delete_option('scm_option_advanced_driver_memcached');
delete_site_option('scm_option_advanced_driver_memcached');
delete_option('scm_option_advanced_driver_memcached_connection_type');
delete_site_option('scm_option_advanced_driver_memcached_connection_type');
delete_option('scm_option_driver');
delete_site_option('scm_option_driver');
delete_option('scm_config');
delete_site_option('scm_config');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'scm_option_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('scm_last_reset_time');
delete_site_option('scm_last_reset_time');
delete_option('scm_version');
delete_site_option('scm_version');
delete_option('scm_dir_hash');
delete_site_option('scm_dir_hash');
delete_option('scm_option_uninstall');
delete_site_option('scm_option_uninstall');
delete_option('scm_option_caching_status');
delete_site_option('scm_option_caching_status');
delete_option('option_caching_status');
delete_site_option('option_caching_status');
delete_option('scm_option_expert_mode_status');
delete_site_option('scm_option_expert_mode_status');
delete_option('scm_option_html_debug_comment');
delete_site_option('scm_option_html_debug_comment');
delete_option('scm_option_clear_cache');
delete_site_option('scm_option_clear_cache');
delete_option('scm_option_exclusion_status');
delete_site_option('scm_option_exclusion_status');
delete_option('scm_option_excluded_list');
delete_site_option('scm_option_excluded_list');
delete_option('scm_option_excluded_list_filtered');
delete_site_option('scm_option_excluded_list_filtered');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_vars' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('scm_option_benchmark_footer_text_display');
delete_site_option('scm_option_benchmark_footer_text_display');
delete_option('scm_option_benchmark_footer_text');
delete_site_option('scm_option_benchmark_footer_text');
delete_option('scm_option_benchmark_widget_display');
delete_site_option('scm_option_benchmark_widget_display');
delete_option('scm_option_benchmark_widget');
delete_site_option('scm_option_benchmark_widget');
delete_option('scm_option_statistics_status');
delete_site_option('scm_option_statistics_status');
delete_option('scm_option_excluded_cookie_vars');
delete_site_option('scm_option_excluded_cookie_vars');
delete_option('scm_option_excluded_get_vars');
delete_site_option('scm_option_excluded_get_vars');
delete_option('scm_option_excluded_post_vars');
delete_site_option('scm_option_excluded_post_vars');
delete_option('scm_option_post_archives');
delete_site_option('scm_option_post_archives');
delete_option('scm_option_post_homepage');
delete_site_option('scm_option_post_homepage');
delete_option('scm_option_post_types');
delete_site_option('scm_option_post_types');
delete_option('scm_option_ttl');
delete_site_option('scm_option_ttl');
delete_option('scm_option_visibility_guest');
delete_site_option('scm_option_visibility_guest');
delete_option('scm_option_visibility_login_user');
delete_site_option('scm_option_visibility_login_user');
delete_option('scm_option_woocommerce_event_payment_complete');
delete_site_option('scm_option_woocommerce_event_payment_complete');
delete_option('scm_option_woocommerce_post_archives');
delete_site_option('scm_option_woocommerce_post_archives');
delete_option('scm_option_woocommerce_post_types');
delete_site_option('scm_option_woocommerce_post_types');
delete_option('scm_blog_id');
delete_site_option('scm_blog_id');


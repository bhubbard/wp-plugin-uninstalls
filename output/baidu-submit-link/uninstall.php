<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wb_bsl_ver');
delete_site_option('wb_bsl_ver');
delete_option('bsl_version');
delete_site_option('bsl_version');
delete_option('wb_bsl_promote');
delete_site_option('wb_bsl_promote');
delete_option('wb_idx_data_updated');
delete_site_option('wb_idx_data_updated');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%ver' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wb_bsl_check_all');
delete_site_option('wb_bsl_check_all');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wb_bsl_cnf_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('bsl_yandex_token');
delete_site_option('bsl_yandex_token');
delete_option('bsl_yandex_error');
delete_site_option('bsl_yandex_error');
delete_option('bsl_bing_updateCrawlStats');
delete_site_option('bsl_bing_updateCrawlStats');
delete_option('wb_bsl_db_ver');
delete_site_option('wb_bsl_db_ver');
delete_option('bsl_google_jwt_token');
delete_site_option('bsl_google_jwt_token');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('bsl_check_all_404_url');
wp_clear_scheduled_hook('baidu_push_url_cron_action_v3');
wp_clear_scheduled_hook('bsl_single_push_url');
wp_clear_scheduled_hook('baidu_push_url_cron_action_v4');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wb_bsl_daily_push' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wb_bsl_daily_push' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wb_bsl_daily_push' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wb_bsl_daily_push' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'url_in_baidu' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'url_in_baidu' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'url_in_baidu' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'url_in_baidu' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'url_in_baidu_ymd' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'url_in_baidu_ymd' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'url_in_baidu_ymd' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'url_in_baidu_ymd' ) );


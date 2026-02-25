<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('speedguard_options');
delete_site_option('speedguard_options');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');

// Delete Transients
delete_transient('speedguard-notice-activation');
delete_site_transient('speedguard-notice-activation');
delete_transient('speedguard_tests_count');
delete_site_transient('speedguard_tests_count');
delete_transient('speedguard_notice_add_new_url_error_empty');
delete_site_transient('speedguard_notice_add_new_url_error_empty');
delete_transient('speedguard_notice_add_new_url_error_not_url');
delete_site_transient('speedguard_notice_add_new_url_error_not_url');
delete_transient('speedguard_notice_create_test');
delete_site_transient('speedguard_notice_create_test');
delete_transient('speedguard_notice_add_new_url_error_max_urls');
delete_site_transient('speedguard_notice_add_new_url_error_max_urls');
delete_transient('speedguard_notice_add_new_url_error_not_current_domain');
delete_site_transient('speedguard_notice_add_new_url_error_not_current_domain');
delete_transient('speedguard_notice_slow_down');
delete_site_transient('speedguard_notice_slow_down');
delete_transient('speedguard_notice_already_in_queue');
delete_site_transient('speedguard_notice_already_in_queue');
delete_transient('speedguard_notice_delete_guarded_pages');
delete_site_transient('speedguard_notice_delete_guarded_pages');
delete_transient('speedguard_tests_in_queue');
delete_site_transient('speedguard_tests_in_queue');
delete_transient('speedguard_last_test_is_done');
delete_site_transient('speedguard_last_test_is_done');
delete_transient('speedguard_not_production_environment');
delete_site_transient('speedguard_not_production_environment');
delete_transient('speedguard_no_cwv_data');
delete_site_transient('speedguard_no_cwv_data');
delete_transient('speedguard_notice_cwv_mobile_match');
delete_site_transient('speedguard_notice_cwv_mobile_match');
delete_transient('speedguard_test_in_progress');
delete_site_transient('speedguard_test_in_progress');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_speedguard_notice_%', '_site_transient_speedguard_notice_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('speedguard_notice_update_test');
delete_site_transient('speedguard_notice_update_test');
delete_transient('speedguard_sending_request_now');
delete_site_transient('speedguard_sending_request_now');
delete_transient(' speedguard_sending_request_now');
delete_site_transient(' speedguard_sending_request_now');
delete_transient('speedguard-tests-running');
delete_site_transient('speedguard-tests-running');
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('speedguard-notice-deactivation');
delete_site_transient('speedguard-notice-deactivation');

// Clear Cron Jobs
wp_clear_scheduled_hook('speedguard_update_results');
wp_clear_scheduled_hook('speedguard_email_test_results');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'guarded_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'guarded_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'guarded_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'guarded_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'speedguard_item_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'speedguard_item_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'speedguard_item_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'speedguard_item_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'guarded_post_blog_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'guarded_post_blog_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'guarded_post_blog_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'guarded_post_blog_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'speedguard_on' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'speedguard_on' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'speedguard_on' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'speedguard_on' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sg_test_result' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sg_test_result' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sg_test_result' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sg_test_result' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'speedguard_page_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'speedguard_page_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'speedguard_page_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'speedguard_page_url' ) );


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'duoshuo_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('duoshuo_connect_failed');
delete_site_option('duoshuo_connect_failed');
delete_option('duoshuo_secret');
delete_site_option('duoshuo_secret');
delete_option('duoshuo_synchronized');
delete_site_option('duoshuo_synchronized');
delete_option('duoshuo_notice');
delete_site_option('duoshuo_notice');
delete_option('duoshuo_sync_lock');
delete_site_option('duoshuo_sync_lock');
delete_option('duoshuo_short_name');
delete_site_option('duoshuo_short_name');
delete_option('wordpress_api_key');
delete_site_option('wordpress_api_key');
delete_option('dashboard_widget_options');
delete_site_option('dashboard_widget_options');
delete_option('duoshuo_comments_wrapper_intro');
delete_site_option('duoshuo_comments_wrapper_intro');
delete_option('duoshuo_seo_enabled');
delete_site_option('duoshuo_seo_enabled');
delete_option('duoshuo_comments_wrapper_outro');
delete_site_option('duoshuo_comments_wrapper_outro');
delete_option('disable_fsockopen');
delete_site_option('disable_fsockopen');
delete_option('duoshuo_postpone_print_scripts');
delete_site_option('duoshuo_postpone_print_scripts');
delete_option('duoshuo_cc_fix');
delete_site_option('duoshuo_cc_fix');
delete_option('duoshuo_sync_pingback_and_trackback');
delete_site_option('duoshuo_sync_pingback_and_trackback');
delete_option('duoshuo_theme');
delete_site_option('duoshuo_theme');
delete_option('duoshuo_api_hostname');
delete_site_option('duoshuo_api_hostname');
delete_option('duoshuo_cron_sync_enabled');
delete_site_option('duoshuo_cron_sync_enabled');
delete_option('duoshuo_style_patch');
delete_site_option('duoshuo_style_patch');
delete_option('duoshuo_social_login_enabled');
delete_site_option('duoshuo_social_login_enabled');
delete_option('duoshuo_debug');
delete_site_option('duoshuo_debug');
delete_option('duoshuo_widget_recent_comments');
delete_site_option('duoshuo_widget_recent_comments');
delete_option('duoshuo_widget_top_threads');
delete_site_option('duoshuo_widget_top_threads');
delete_option('duoshuo_widget_recent_visitors');
delete_site_option('duoshuo_widget_recent_visitors');
delete_option('duoshuo_widget_qqt_follow');
delete_site_option('duoshuo_widget_qqt_follow');

// Clear Cron Jobs
wp_clear_scheduled_hook('duoshuo_sync_log_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'duoshuo_access_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'duoshuo_access_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'duoshuo_access_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'duoshuo_access_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'duoshuo_user_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'duoshuo_user_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'duoshuo_user_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'duoshuo_user_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'duoshuo_thread_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'duoshuo_thread_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'duoshuo_thread_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'duoshuo_thread_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'duoshuo_parent_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'duoshuo_parent_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'duoshuo_parent_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'duoshuo_parent_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'duoshuo_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'duoshuo_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'duoshuo_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'duoshuo_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'duoshuo_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'duoshuo_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'duoshuo_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'duoshuo_status' ) );


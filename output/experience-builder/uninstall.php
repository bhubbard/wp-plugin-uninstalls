<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ml_local_cache');
delete_site_option('ml_local_cache');
delete_option('ml_anti_flicker');
delete_site_option('ml_anti_flicker');
delete_option('ml_content_delivery');
delete_site_option('ml_content_delivery');
delete_option('ml_timeout');
delete_site_option('ml_timeout');
delete_option('ml_postback_delay');
delete_site_option('ml_postback_delay');
delete_option('ml_spa_page_view_option');
delete_site_option('ml_spa_page_view_option');
delete_option('ml_token');
delete_site_option('ml_token');
delete_option('ml_use_quick_start');
delete_site_option('ml_use_quick_start');
delete_option('ml_quickstart_username');
delete_site_option('ml_quickstart_username');
delete_option('ml_quickstart_password');
delete_site_option('ml_quickstart_password');
delete_option('ml_account_name');
delete_site_option('ml_account_name');
delete_option('ml_cid');
delete_site_option('ml_cid');
delete_option('ml_lastsetting');
delete_site_option('ml_lastsetting');
delete_option('postback_delay');
delete_site_option('postback_delay');
delete_option('spa_pageview_option');
delete_site_option('spa_pageview_option');

// Clear Cron Jobs
wp_clear_scheduled_hook('ml_local_cache_refetch');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_monoloop_condition' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_monoloop_condition' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_monoloop_condition' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_monoloop_condition' ) );


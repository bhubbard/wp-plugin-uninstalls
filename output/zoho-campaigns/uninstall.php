<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zcwc_connect_time');
delete_site_option('zcwc_connect_time');
delete_option('zcwc_rated');
delete_site_option('zcwc_rated');
delete_option('zcwc_domname');
delete_site_option('zcwc_domname');
delete_option('zcwc_integration');
delete_site_option('zcwc_integration');
delete_option('zcwc_optin_setting');
delete_site_option('zcwc_optin_setting');
delete_option('zcwc_store_stats');
delete_site_option('zcwc_store_stats');
delete_option('zcwc_intergration_details');
delete_site_option('zcwc_intergration_details');
delete_option('zcwc_error_msg');
delete_site_option('zcwc_error_msg');
delete_option('zcwc_wc_token');
delete_site_option('zcwc_wc_token');
delete_option('zcwc_token_details');
delete_site_option('zcwc_token_details');
delete_option('zcwc_user');
delete_site_option('zcwc_user');
delete_option('zcwc_user_email');
delete_site_option('zcwc_user_email');
delete_option('zcwc_script');
delete_site_option('zcwc_script');
delete_option('zcwc_script_setting');
delete_site_option('zcwc_script_setting');

// Clear Cron Jobs
wp_clear_scheduled_hook('zcwc_track_order_event_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'zcwc_newsletter_subscription' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'zcwc_newsletter_subscription' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'zcwc_newsletter_subscription' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'zcwc_newsletter_subscription' ) );


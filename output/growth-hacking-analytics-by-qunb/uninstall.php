<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qunb_ga_token');
delete_site_option('qunb_ga_token');
delete_option('qunb_ga_refresh_token');
delete_site_option('qunb_ga_refresh_token');
delete_option('qunb_gp_emails');
delete_site_option('qunb_gp_emails');
delete_option('qunb_ga_profile');
delete_site_option('qunb_ga_profile');
delete_option('qunb_ga_profile_label');
delete_site_option('qunb_ga_profile_label');
delete_option('qunb_ga_profile_timezone');
delete_site_option('qunb_ga_profile_timezone');
delete_option('qunb_ga_web_property');
delete_site_option('qunb_ga_web_property');
delete_option('qunb_ga_account');
delete_site_option('qunb_ga_account');
delete_option('qunb_ghost_avg');
delete_site_option('qunb_ghost_avg');
delete_option('qunb_ghost_avg_cumul');
delete_site_option('qunb_ghost_avg_cumul');
delete_option('qunb_facebook_url');
delete_site_option('qunb_facebook_url');
delete_option('qunb_facebook_likes');
delete_site_option('qunb_facebook_likes');
delete_option('qunb_twitter_screen_name');
delete_site_option('qunb_twitter_screen_name');
delete_option('qunb_twitter_followers');
delete_site_option('qunb_twitter_followers');
delete_option('qunb_nb_connections');
delete_site_option('qunb_nb_connections');
delete_option('qunb_test');
delete_site_option('qunb_test');
delete_option('qunb_cron_error');
delete_site_option('qunb_cron_error');

// Clear Cron Jobs
wp_clear_scheduled_hook('qunb_single_cron_hook');
wp_clear_scheduled_hook('qunb_single_cron2_hook');
wp_clear_scheduled_hook('qunb_cron_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pageViews_cumul' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pageViews_cumul' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pageViews_cumul' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pageViews_cumul' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pageViews' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pageViews' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pageViews' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pageViews' ) );


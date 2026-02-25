<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('c247_registered');
delete_site_option('c247_registered');
delete_option('c247_replace_existing_links');
delete_site_option('c247_replace_existing_links');
delete_option('c247_token');
delete_site_option('c247_token');
delete_option('c247_username');
delete_site_option('c247_username');
delete_option('c247_user_id');
delete_site_option('c247_user_id');
delete_option('c247_profile_first_name');
delete_site_option('c247_profile_first_name');
delete_option('c247_profile_last_name');
delete_site_option('c247_profile_last_name');
delete_option('c247_profile_email');
delete_site_option('c247_profile_email');
delete_option('c247_website_id');
delete_site_option('c247_website_id');
delete_option('c247_profile_gender');
delete_site_option('c247_profile_gender');
delete_option('c247_site_logo');
delete_site_option('c247_site_logo');
delete_option('c247_site_title');
delete_site_option('c247_site_title');
delete_option('c247_create_new_links');
delete_site_option('c247_create_new_links');
delete_option('c247_show_offers');
delete_site_option('c247_show_offers');
delete_option('c247_new_window');
delete_site_option('c247_new_window');
delete_option('c247_post_process');
delete_site_option('c247_post_process');
delete_option('c247_ver');
delete_site_option('c247_ver');
delete_option('c247_db_ver');
delete_site_option('c247_db_ver');
delete_option('c247_no_follow_links');
delete_site_option('c247_no_follow_links');
delete_option('c247_total_posts');
delete_site_option('c247_total_posts');
delete_option('c247_current_post');
delete_site_option('c247_current_post');

// Delete Transients
delete_transient('c247_about_page_activated');
delete_site_transient('c247_about_page_activated');

// Clear Cron Jobs
wp_clear_scheduled_hook('c247_daily_update');
wp_clear_scheduled_hook('c247_hourly_update');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'c247_disabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'c247_disabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'c247_disabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'c247_disabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'c247_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'c247_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'c247_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'c247_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'c247_disable_offers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'c247_disable_offers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'c247_disable_offers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'c247_disable_offers' ) );


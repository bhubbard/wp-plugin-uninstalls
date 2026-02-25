<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('foodle_dem_categories');
delete_site_option('foodle_dem_categories');
delete_option('foodle_reminders');
delete_site_option('foodle_reminders');
delete_option('foodle_settings');
delete_site_option('foodle_settings');
delete_option('foodle_meta_fields');
delete_site_option('foodle_meta_fields');
delete_option('foodle_meta_defaults_sorting');
delete_site_option('foodle_meta_defaults_sorting');
delete_option('foodle_regex_main');
delete_site_option('foodle_regex_main');
delete_option('foodle_special_functions');
delete_site_option('foodle_special_functions');
delete_option('foodle_version');
delete_site_option('foodle_version');
delete_option('foodle_variables');
delete_site_option('foodle_variables');
delete_option('foodle_change_demCollectAnsw');
delete_site_option('foodle_change_demCollectAnsw');
delete_option('foodle_email_content');
delete_site_option('foodle_email_content');
delete_option('foodle_shortcode_usage_update');
delete_site_option('foodle_shortcode_usage_update');
delete_option('foodle_democracy_post_usage');
delete_site_option('foodle_democracy_post_usage');
delete_option('foodle_foodle_post_usage');
delete_site_option('foodle_foodle_post_usage');
delete_option('foodle_comments_post_usage');
delete_site_option('foodle_comments_post_usage');
delete_option('foodle_shortcode_usage_error_pages_posts');
delete_site_option('foodle_shortcode_usage_error_pages_posts');
delete_option('democracy_options');
delete_site_option('democracy_options');

// Clear Cron Jobs
wp_clear_scheduled_hook('foodle_cron_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'foodle_variables' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'foodle_variables' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'foodle_variables' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'foodle_variables' ) );


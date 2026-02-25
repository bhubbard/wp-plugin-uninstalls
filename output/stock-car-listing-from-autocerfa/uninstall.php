<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('autocerfa_debug');
delete_site_option('autocerfa_debug');
delete_option('autocerfa_processing');
delete_site_option('autocerfa_processing');
delete_option('car_per_page');
delete_site_option('car_per_page');
delete_option('single_page_slug');
delete_site_option('single_page_slug');
delete_option('autocerfa_theme_color_1');
delete_site_option('autocerfa_theme_color_1');
delete_option('autocerfa_theme_color_2');
delete_site_option('autocerfa_theme_color_2');
delete_option('autocerfa_theme_color_3');
delete_site_option('autocerfa_theme_color_3');
delete_option('daily_sync');
delete_site_option('daily_sync');
delete_option('autocerfa_view_style');
delete_site_option('autocerfa_view_style');
delete_option('filter_option');
delete_site_option('filter_option');
delete_option('cropping_image_as_aspect_ration');
delete_site_option('cropping_image_as_aspect_ration');
delete_option('autocerfa_requires_flush');
delete_site_option('autocerfa_requires_flush');
delete_option('ops_token');
delete_site_option('ops_token');
delete_option('autocerfa_shortcodes_settings');
delete_site_option('autocerfa_shortcodes_settings');
delete_option('autocerfa_single_page');
delete_site_option('autocerfa_single_page');
delete_option('autocerfa_car_list_page');
delete_site_option('autocerfa_car_list_page');
delete_option('autocerfa_reload');
delete_site_option('autocerfa_reload');
delete_option('sending_email');
delete_site_option('sending_email');
delete_option('opcodespace_subscription');
delete_site_option('opcodespace_subscription');
delete_option('autocerfa_price');
delete_site_option('autocerfa_price');
delete_option('autocerfa_plugin_version');
delete_site_option('autocerfa_plugin_version');
delete_option('version');
delete_site_option('version');
delete_option('autocerfa_log_file_code');
delete_site_option('autocerfa_log_file_code');
delete_option('autocerfa_token');
delete_site_option('autocerfa_token');
delete_option('autocerfa_no_of_cars');
delete_site_option('autocerfa_no_of_cars');
delete_option('lead_updated_date');
delete_site_option('lead_updated_date');
delete_option('autocerfa_username');
delete_site_option('autocerfa_username');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_process_lock', '_site_transient_%_process_lock' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('autocerfa_add_every_five_minutes');
wp_clear_scheduled_hook('autocerfa_daily_event');
wp_clear_scheduled_hook('autocerfa_twicedaily_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'badge_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'badge_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'badge_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'badge_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'hidden' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'hidden' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'hidden' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'hidden' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'raw_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'raw_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'raw_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'raw_images' ) );


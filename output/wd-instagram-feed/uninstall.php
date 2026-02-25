<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wdi_token_error_flag');
delete_site_option('wdi_token_error_flag');
delete_option('wdi_sample_feed_post_id');
delete_site_option('wdi_sample_feed_post_id');
delete_option('wdi_version');
delete_site_option('wdi_version');
delete_option('wdi_sample_feed_id');
delete_site_option('wdi_sample_feed_id');
delete_option('wdi_sample_feed_post_url');
delete_site_option('wdi_sample_feed_post_url');
delete_option('wdi_first_user_username');
delete_site_option('wdi_first_user_username');
delete_option('wdi_theme_keys');
delete_site_option('wdi_theme_keys');
delete_option('wdi_admin_notice');
delete_site_option('wdi_admin_notice');
delete_option('wdi_subscribe_done');
delete_site_option('wdi_subscribe_done');
delete_option('wdi_redirect_to_settings');
delete_site_option('wdi_redirect_to_settings');
delete_option('widget_wdi_instagram_widget');
delete_site_option('widget_wdi_instagram_widget');
delete_option('wdi_current_cache_time');
delete_site_option('wdi_current_cache_time');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wdi_cache_success_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('two-front-page-speed');
delete_site_option('two-front-page-speed');
delete_option('twb_images_total_size');
delete_site_option('twb_images_total_size');
delete_option('twb_speed_score');
delete_site_option('twb_speed_score');
delete_option('tenweb_domain_id');
delete_site_option('tenweb_domain_id');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_workspace_id' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_domain_id' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('tenweb_access_token');
delete_site_option('tenweb_access_token');
delete_option('twb_show_cta');
delete_site_option('twb_show_cta');
delete_option('twb_hompage_optimized');
delete_site_option('twb_hompage_optimized');
delete_option('wdi_instagram_options');
delete_site_option('wdi_instagram_options');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_admin_notice' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_subscribe_done' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('wdi_update_check');
delete_site_transient('wdi_update_check');
delete_transient('twb_optimized_pages');
delete_site_transient('twb_optimized_pages');
delete_transient('tenweb_subscription_id');
delete_site_transient('tenweb_subscription_id');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_overview_visited', '_site_transient_%_overview_visited' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('wdi_schedule_event_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'two_page_speed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'two_page_speed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'two_page_speed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'two_page_speed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_name' ) );


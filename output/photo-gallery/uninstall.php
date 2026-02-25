<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wd_bwg_options');
delete_site_option('wd_bwg_options');
delete_option('wd_bwg_version');
delete_site_option('wd_bwg_version');
delete_option('wd_bwg_initial_version');
delete_site_option('wd_bwg_initial_version');
delete_option('bwg_subscribe_done');
delete_site_option('bwg_subscribe_done');
delete_option('tenweb_notice_status');
delete_site_option('tenweb_notice_status');
delete_option('tenweb_notice_version');
delete_site_option('tenweb_notice_version');
delete_option('bwg_subscribe_email');
delete_site_option('bwg_subscribe_email');
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
delete_option('bwg_onboarding_step');
delete_site_option('bwg_onboarding_step');
delete_option('bwg_magic_data');
delete_site_option('bwg_magic_data');
delete_option('twb_hompage_optimized');
delete_site_option('twb_hompage_optimized');
delete_option('bwg_filemanager_sorting');
delete_site_option('bwg_filemanager_sorting');
delete_option('bwg_gallery_sorting');
delete_site_option('bwg_gallery_sorting');
delete_option('bwg_speed');
delete_site_option('bwg_speed');
delete_option('tenweb_admin_demo');
delete_site_option('tenweb_admin_demo');
delete_option('bwg_wp_editor_state');
delete_site_option('bwg_wp_editor_state');
delete_option('tenweb_user_info');
delete_site_option('tenweb_user_info');
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

// Delete Transients
delete_transient('twb_optimized_pages');
delete_site_transient('twb_optimized_pages');
delete_transient('tenweb_subscription_id');
delete_site_transient('tenweb_subscription_id');
delete_transient('bwg_update_check');
delete_site_transient('bwg_update_check');

// Clear Cron Jobs
wp_clear_scheduled_hook('bwg_schedule_event_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'bwg_photo_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'bwg_photo_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'bwg_photo_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'bwg_photo_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'two_page_speed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'two_page_speed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'two_page_speed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'two_page_speed' ) );


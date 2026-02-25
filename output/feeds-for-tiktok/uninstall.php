<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sbtt_statuses');
delete_site_option('sbtt_statuses');
delete_option('sbtt_resize_images_data');
delete_site_option('sbtt_resize_images_data');
delete_option('sbtt_global_settings');
delete_site_option('sbtt_global_settings');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('sbtt_rating_notice');
delete_site_option('sbtt_rating_notice');
delete_option('sbtt_review_consent');
delete_site_option('sbtt_review_consent');
delete_option('sbtt_one_click_upgrade');
delete_site_option('sbtt_one_click_upgrade');
delete_option('sbtt_islicence_upgraded');
delete_site_option('sbtt_islicence_upgraded');
delete_option('sbtt_upgraded_info');
delete_site_option('sbtt_upgraded_info');
delete_option('sbtt_db_version');
delete_site_option('sbtt_db_version');
delete_option('sbtt_usage_tracking_config');
delete_site_option('sbtt_usage_tracking_config');
delete_option('sbtt_settings');
delete_site_option('sbtt_settings');

// Delete Transients
delete_transient('tiktok_feed_rating_notice_waiting');
delete_site_transient('tiktok_feed_rating_notice_waiting');
delete_transient('sbtt_heic_capability');
delete_site_transient('sbtt_heic_capability');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_sbtt_new_source_data_%', '_site_transient_sbtt_new_source_data_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('sbtt_refresh_token_routine');
wp_clear_scheduled_hook('sbtt_feed_update_routine');
wp_clear_scheduled_hook('sbtt_usage_tracking_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sbtt_ignore_new_user_sale_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sbtt_ignore_new_user_sale_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sbtt_ignore_new_user_sale_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sbtt_ignore_new_user_sale_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sbtt_ignore_bfcm_sale_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sbtt_ignore_bfcm_sale_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sbtt_ignore_bfcm_sale_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sbtt_ignore_bfcm_sale_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_dismissed' ) );


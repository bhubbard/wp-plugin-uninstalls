<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'isladaco_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('isladaco_quran_enabled');
delete_site_option('isladaco_quran_enabled');
delete_option('isladaco_hadith_enabled');
delete_site_option('isladaco_hadith_enabled');
delete_option('isladaco_post_time');
delete_site_option('isladaco_post_time');
delete_option('isladaco_post_status');
delete_site_option('isladaco_post_status');
delete_option('isladaco_quran_category');
delete_site_option('isladaco_quran_category');
delete_option('isladaco_hadith_category');
delete_site_option('isladaco_hadith_category');

// Delete Transients
delete_transient('isladaco_activation_notice');
delete_site_transient('isladaco_activation_notice');

// Clear Cron Jobs
wp_clear_scheduled_hook('isladaco_daily_quran_post');
wp_clear_scheduled_hook('isladaco_daily_hadith_post');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_isladaco_content_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_isladaco_content_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_isladaco_content_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_isladaco_content_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_isladaco_surah' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_isladaco_surah' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_isladaco_surah' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_isladaco_surah' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_isladaco_ayah' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_isladaco_ayah' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_isladaco_ayah' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_isladaco_ayah' ) );


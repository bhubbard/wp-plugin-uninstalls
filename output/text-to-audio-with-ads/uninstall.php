<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('text_to_audio_with_ads_api_key');
delete_site_option('text_to_audio_with_ads_api_key');
delete_option('text_to_audio_with_ads_api_password');
delete_site_option('text_to_audio_with_ads_api_password');
delete_option('text_to_audio_with_ads_player_secret');
delete_site_option('text_to_audio_with_ads_player_secret');
delete_option('text_to_audio_with_ads_error_logging');
delete_site_option('text_to_audio_with_ads_error_logging');
delete_option('text_to_audio_with_ads_errors');
delete_site_option('text_to_audio_with_ads_errors');

// Delete Transients
delete_transient('text_to_audio_with_ads_admin_notice');
delete_site_transient('text_to_audio_with_ads_admin_notice');

// Clear Cron Jobs
wp_clear_scheduled_hook('text_to_audio_with_ads_send_post_data');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_previous_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_previous_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_previous_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_previous_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_previous_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_previous_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_previous_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_previous_content' ) );


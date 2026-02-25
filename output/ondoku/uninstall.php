<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ondokusan_do_activation_redirect');
delete_site_option('ondokusan_do_activation_redirect');
delete_option('ondokusan_settings');
delete_site_option('ondokusan_settings');
delete_option('ondokusan_last_result');
delete_site_option('ondokusan_last_result');
delete_option('ondokusan_token');
delete_site_option('ondokusan_token');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ondoku_mp3_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ondoku_mp3_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ondoku_mp3_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ondoku_mp3_url' ) );


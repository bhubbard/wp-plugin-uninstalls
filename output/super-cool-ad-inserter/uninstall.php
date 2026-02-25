<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scaip_settings_start');
delete_site_option('scaip_settings_start');
delete_option('scaip_settings_period');
delete_site_option('scaip_settings_period');
delete_option('scaip_settings_repetitions');
delete_site_option('scaip_settings_repetitions');
delete_option('scaip_settings_min_paragraphs');
delete_site_option('scaip_settings_min_paragraphs');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'scaip_prevent_shortcode_addition' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'scaip_prevent_shortcode_addition' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'scaip_prevent_shortcode_addition' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'scaip_prevent_shortcode_addition' ) );


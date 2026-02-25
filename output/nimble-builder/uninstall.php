<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nimble_version');
delete_site_option('nimble_version');
delete_option('nimble_version_upgraded_from');
delete_site_option('nimble_version_upgraded_from');
delete_option('nimble_started_with_version');
delete_site_option('nimble_started_with_version');
delete_option('nimble_start_date');
delete_site_option('nimble_start_date');
delete_option('nimble_last_update_notice');
delete_site_option('nimble_last_update_notice');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('nimble_api_news_data');
delete_site_option('nimble_api_news_data');
delete_option('__nimble_options__');
delete_site_option('__nimble_options__');
delete_option('nb_prebuild_section_json');
delete_site_option('nb_prebuild_section_json');
delete_option('wp_rocket_settings');
delete_site_option('wp_rocket_settings');

// Delete Transients
delete_transient('started_using_hueman');
delete_site_transient('started_using_hueman');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpgmza-first-run');
delete_site_option('wpgmza-first-run');
delete_option('wpgmza_pro_db_version');
delete_site_option('wpgmza_pro_db_version');
delete_option('wpgmza-engine-switch-toolbar-dismissed');
delete_site_option('wpgmza-engine-switch-toolbar-dismissed');
delete_option('wpgmza_db_version');
delete_site_option('wpgmza_db_version');
delete_option('WPGMZA_OTHER_SETTINGS');
delete_site_option('WPGMZA_OTHER_SETTINGS');
delete_option('wpgmza_google_maps_api_key');
delete_site_option('wpgmza_google_maps_api_key');
delete_option('wpgmza_xml_location');
delete_site_option('wpgmza_xml_location');
delete_option('wpgmza_xml_url');
delete_site_option('wpgmza_xml_url');
delete_option('wpgmza_temp_api');
delete_site_option('wpgmza_temp_api');
delete_option('wpgmza-installer-initial-procedure');
delete_site_option('wpgmza-installer-initial-procedure');
delete_option('wpgmza-installer-paused');
delete_site_option('wpgmza-installer-paused');
delete_option('wpgmza-installer-retrigger-event');
delete_site_option('wpgmza-installer-retrigger-event');
delete_option('wpgmza-review-nag-closed');
delete_site_option('wpgmza-review-nag-closed');
delete_option('wpgmza_welcome_screen_done');
delete_site_option('wpgmza_welcome_screen_done');
delete_option('wpgmza_global_settings');
delete_site_option('wpgmza_global_settings');
delete_option('wpgmza_last_rest_api_blocked');
delete_site_option('wpgmza_last_rest_api_blocked');
delete_option('WPGMZA_SETTINGS');
delete_site_option('WPGMZA_SETTINGS');
delete_option('wpgmza-tour-ftu-complete');
delete_site_option('wpgmza-tour-ftu-complete');
delete_option('wpgmza_permission');
delete_site_option('wpgmza_permission');
delete_option('wpgmza_review_nag');
delete_site_option('wpgmza_review_nag');
delete_option('wpgmza_stats');
delete_site_option('wpgmza_stats');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpgmza_hide_chat' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpgmza_hide_chat' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpgmza_hide_chat' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpgmza_hide_chat' ) );


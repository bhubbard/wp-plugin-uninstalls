<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('emailoctopus_api_key');
delete_site_option('emailoctopus_api_key');

// Delete Transients
delete_transient('emailoctopus_form_settings_saved_status');
delete_site_transient('emailoctopus_form_settings_saved_status');
delete_transient('emailoctopus_api_refresh_status');
delete_site_transient('emailoctopus_api_refresh_status');
delete_transient('emailoctopus_load_forms');
delete_site_transient('emailoctopus_load_forms');
delete_transient('emailoctopus_api_disconnect_status');
delete_site_transient('emailoctopus_api_disconnect_status');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_emailoctopus_form_automatic_display' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_emailoctopus_form_automatic_display' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_emailoctopus_form_automatic_display' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_emailoctopus_form_automatic_display' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_emailoctopus_form_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_emailoctopus_form_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_emailoctopus_form_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_emailoctopus_form_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_emailoctopus_form_post_types' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_emailoctopus_form_post_types' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_emailoctopus_form_post_types' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_emailoctopus_form_post_types' ) );


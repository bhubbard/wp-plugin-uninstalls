<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('trafficontent_channel_id');
delete_site_option('trafficontent_channel_id');
delete_option('trafficontent_consent_given');
delete_site_option('trafficontent_consent_given');
delete_option('trafficontent_logo_attachment_id');
delete_site_option('trafficontent_logo_attachment_id');
delete_option('trafficontent_connected');
delete_site_option('trafficontent_connected');
delete_option('trafficontent_do_activation_redirect');
delete_site_option('trafficontent_do_activation_redirect');
delete_option('trafficontent_ui_reset_needed');
delete_site_option('trafficontent_ui_reset_needed');
delete_option('trafficontent_token');
delete_site_option('trafficontent_token');

// Delete Transients
delete_transient('_trafficontent_activation_redirect');
delete_site_transient('_trafficontent_activation_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_application_passwords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_application_passwords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_application_passwords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_application_passwords' ) );


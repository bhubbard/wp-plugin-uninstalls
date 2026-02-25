<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('auth0_db_version');
delete_site_option('auth0_db_version');
delete_option('widget_wp_auth0_popup_widget');
delete_site_option('widget_wp_auth0_popup_widget');
delete_option('widget_wp_auth0_widget');
delete_site_option('widget_wp_auth0_widget');
delete_option('widget_wp_auth0_social_amplification_widget');
delete_site_option('widget_wp_auth0_social_amplification_widget');
delete_option('wp_auth0_client_grant_failed');
delete_site_option('wp_auth0_client_grant_failed');
delete_option('wp_auth0_grant_types_failed');
delete_site_option('wp_auth0_grant_types_failed');
delete_option('wp_auth0_client_grant_success');
delete_site_option('wp_auth0_client_grant_success');
delete_option('wp_auth0_grant_types_success');
delete_site_option('wp_auth0_grant_types_success');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_new_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_new_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_new_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_new_email' ) );


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('caldera_google_sheet_info');
delete_site_option('caldera_google_sheet_info');
delete_option('cf_gs_access_code');
delete_site_option('cf_gs_access_code');
delete_option('cf_gs_verify');
delete_site_option('cf_gs_verify');
delete_option('cf_gs_token');
delete_site_option('cf_gs_token');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('is_new_client_secret_calderagsc');
delete_site_option('is_new_client_secret_calderagsc');
delete_option('caldera_email_account');
delete_site_option('caldera_email_account');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'caldera_gs_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'caldera_gs_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'caldera_gs_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'caldera_gs_settings' ) );


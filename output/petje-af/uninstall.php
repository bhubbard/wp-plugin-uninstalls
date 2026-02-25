<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('petje_af_client_id');
delete_site_option('petje_af_client_id');
delete_option('petje_af_client_secret');
delete_site_option('petje_af_client_secret');
delete_option('petje_af_page_id');
delete_site_option('petje_af_page_id');
delete_option('petje_af_site_protection_plan');
delete_site_option('petje_af_site_protection_plan');
delete_option('petje_af_ignore_access_settings_for_admin');
delete_site_option('petje_af_ignore_access_settings_for_admin');
delete_option('petje_af_account_page');
delete_site_option('petje_af_account_page');
delete_option('petje_af_access_denied_page');
delete_site_option('petje_af_access_denied_page');
delete_option('petje_af_redirect_uri_page');
delete_site_option('petje_af_redirect_uri_page');
delete_option('petjeaf_connection_failed');
delete_site_option('petjeaf_connection_failed');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%refresh_token', '_site_transient_%refresh_token' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_petje_af_state_%', '_site_transient_petje_af_state_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'petje_af_page_plan_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'petje_af_page_plan_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'petje_af_page_plan_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'petje_af_page_plan_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'petjeaf_user_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'petjeaf_user_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'petjeaf_user_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'petjeaf_user_id' ) );


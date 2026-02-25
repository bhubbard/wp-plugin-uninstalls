<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lagersystemparcelpickup_apikey');
delete_site_option('lagersystemparcelpickup_apikey');
delete_option('lagersystemparcelpickup_gmapsapikey');
delete_site_option('lagersystemparcelpickup_gmapsapikey');
delete_option('lagersystemparcelpickup_removeprefix');
delete_site_option('lagersystemparcelpickup_removeprefix');
delete_option('lagersystemparcelpickup_daousername');
delete_site_option('lagersystemparcelpickup_daousername');
delete_option('lagersystemparcelpickup_daopassword');
delete_site_option('lagersystemparcelpickup_daopassword');
delete_option('lagersystemparcelpickup_dhlkey');
delete_site_option('lagersystemparcelpickup_dhlkey');
delete_option('lagersystemparcelpickup_upslicencekey');
delete_site_option('lagersystemparcelpickup_upslicencekey');
delete_option('lagersystemparcelpickup_upsuserid');
delete_site_option('lagersystemparcelpickup_upsuserid');
delete_option('lagersystemparcelpickup_upspassword');
delete_site_option('lagersystemparcelpickup_upspassword');
delete_option('lagersystemparcelpickup_bringuid');
delete_site_option('lagersystemparcelpickup_bringuid');
delete_option('lagersystemparcelpickup_bringapikey');
delete_site_option('lagersystemparcelpickup_bringapikey');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'Pakkeshop' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'Pakkeshop' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'Pakkeshop' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'Pakkeshop' ) );


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('linkcreator_plugin_activated');
delete_site_option('linkcreator_plugin_activated');
delete_option('linkcreator_api_token');
delete_site_option('linkcreator_api_token');
delete_option('meta_keywords');
delete_site_option('meta_keywords');
delete_option('linkcreator_api_key');
delete_site_option('linkcreator_api_key');
delete_option('linkcreator_api_status');
delete_site_option('linkcreator_api_status');
delete_option('linkcreator_first_activation');
delete_site_option('linkcreator_first_activation');
delete_option('linkcreator_redirect');
delete_site_option('linkcreator_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'linkcreator_app_password_slug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'linkcreator_app_password_slug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'linkcreator_app_password_slug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'linkcreator_app_password_slug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'linkcreator_app_password' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'linkcreator_app_password' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'linkcreator_app_password' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'linkcreator_app_password' ) );


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gp_machine_translate_provider');
delete_site_option('gp_machine_translate_provider');
delete_option('gp_machine_translate_key');
delete_site_option('gp_machine_translate_key');
delete_option('gp_machine_translate_client_id');
delete_site_option('gp_machine_translate_client_id');
delete_option('gp_machine_translate_extra_info');
delete_site_option('gp_machine_translate_extra_info');
delete_option('gp_machine_translate_version');
delete_site_option('gp_machine_translate_version');
delete_option('gp_google_translate_key');
delete_site_option('gp_google_translate_key');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'gp_machine_translate_client_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'gp_machine_translate_client_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'gp_machine_translate_client_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'gp_machine_translate_client_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'gp_machine_translate_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'gp_machine_translate_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'gp_machine_translate_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'gp_machine_translate_key' ) );


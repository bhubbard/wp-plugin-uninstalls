<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fcmdpplgpn_api');
delete_site_option('fcmdpplgpn_api');
delete_option('fcmdpplgpn_channel');
delete_site_option('fcmdpplgpn_channel');
delete_option('fcmdpplgpn_topic');
delete_site_option('fcmdpplgpn_topic');
delete_option('fcmdpplgpn_sound');
delete_site_option('fcmdpplgpn_sound');
delete_option('fcmdpplgpn_default_image');
delete_site_option('fcmdpplgpn_default_image');
delete_option('fcmdpplgpn_custom_fields');
delete_site_option('fcmdpplgpn_custom_fields');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fcmdpplgpn_posttype_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fcmdpplgpn_disable');
delete_site_option('fcmdpplgpn_disable');
delete_option('fcmdpplgpn_page_disable');
delete_site_option('fcmdpplgpn_page_disable');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'send-fcm-checkbox' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'send-fcm-checkbox' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'send-fcm-checkbox' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'send-fcm-checkbox' ) );


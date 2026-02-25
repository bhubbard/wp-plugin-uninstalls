<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpnakama_update_indicator');
delete_site_option('wpnakama_update_indicator');
delete_option('wpnakama_plugin_sale');
delete_site_option('wpnakama_plugin_sale');
delete_option('wpnakama_subscriber');
delete_site_option('wpnakama_subscriber');
delete_option('wpnakama_license');
delete_site_option('wpnakama_license');
delete_option('wpnakama_rating');
delete_site_option('wpnakama_rating');
delete_option('wpnakama_license_message');
delete_site_option('wpnakama_license_message');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_plugin_info', '_site_transient_%_plugin_info' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpnakama_board_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpnakama_board_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpnakama_board_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpnakama_board_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpnakama_feature_info_notice_dissmiss' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpnakama_feature_info_notice_dissmiss' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpnakama_feature_info_notice_dissmiss' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpnakama_feature_info_notice_dissmiss' ) );


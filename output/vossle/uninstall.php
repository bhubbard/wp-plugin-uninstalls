<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vossle_ar_api_key');
delete_site_option('vossle_ar_api_key');
delete_option('vossle_ar_user_id');
delete_site_option('vossle_ar_user_id');
delete_option('vos_tryon_button');
delete_site_option('vos_tryon_button');
delete_option('vos_tryon_button_title');
delete_site_option('vos_tryon_button_title');
delete_option('vos_tryon_button_position');
delete_site_option('vos_tryon_button_position');
delete_option('vossle_alert_code');
delete_site_option('vossle_alert_code');
delete_option('vossle_alert_msg');
delete_site_option('vossle_alert_msg');
delete_option('vossle-plugin-text');
delete_site_option('vossle-plugin-text');
delete_option('vos_tryon_button_color');
delete_site_option('vos_tryon_button_color');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'vossle_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'vossle_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'vossle_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'vossle_url' ) );


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('buy_button_plus_cart_id');
delete_site_option('buy_button_plus_cart_id');
delete_option('buy_button_plus_cart_access_validated');
delete_site_option('buy_button_plus_cart_access_validated');
delete_option('buy_button_plus_buttons');
delete_site_option('buy_button_plus_buttons');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'buy_button_plus_warning_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'buy_button_plus_warning_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'buy_button_plus_warning_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'buy_button_plus_warning_dismissed' ) );


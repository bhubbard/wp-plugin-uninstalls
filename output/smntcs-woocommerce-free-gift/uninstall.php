<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wfg_enable_free_gift');
delete_site_option('wfg_enable_free_gift');
delete_option('wfg_minimum_cart_value');
delete_site_option('wfg_minimum_cart_value');
delete_option('wfg_gift_category');
delete_site_option('wfg_gift_category');
delete_option('wfg_message_value_low');
delete_site_option('wfg_message_value_low');
delete_option('wfg_button_value_low');
delete_site_option('wfg_button_value_low');
delete_option('wfg_message_value_ok');
delete_site_option('wfg_message_value_ok');
delete_option('wfg_button_value_ok');
delete_site_option('wfg_button_value_ok');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_virtual' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_virtual' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_virtual' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_virtual' ) );


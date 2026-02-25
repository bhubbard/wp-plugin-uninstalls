<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gp_npwp_hide_admin_column');
delete_site_option('gp_npwp_hide_admin_column');
delete_option('gp_npwp_new_button_text');
delete_site_option('gp_npwp_new_button_text');
delete_option('gp_npwp_hide_wrapper');
delete_site_option('gp_npwp_hide_wrapper');
delete_option('gp_npwp_new_message_text');
delete_site_option('gp_npwp_new_message_text');
delete_option('gp_npwp_hide_message');
delete_site_option('gp_npwp_hide_message');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_not_buyable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_not_buyable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_not_buyable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_not_buyable' ) );


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('redirect_after_login');
delete_site_option('redirect_after_login');
delete_option('name');
delete_site_option('name');
delete_option('bg_custom_color');
delete_site_option('bg_custom_color');
delete_option('text_custom_color');
delete_site_option('text_custom_color');
delete_option('bo_custom_color');
delete_site_option('bo_custom_color');
delete_option('link_custom_color');
delete_site_option('link_custom_color');
delete_option('pop_custom_color');
delete_site_option('pop_custom_color');
delete_option('label_custom_color');
delete_site_option('label_custom_color');
delete_option('add_telephone_number');
delete_site_option('add_telephone_number');
delete_option('redirect_after_logout');
delete_site_option('redirect_after_logout');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'user_contact_no' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'user_contact_no' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'user_contact_no' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'user_contact_no' ) );


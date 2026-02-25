<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('modern_check_captch');
delete_site_option('modern_check_captch');
delete_option('email_radio');
delete_site_option('email_radio');
delete_option('email_used');
delete_site_option('email_used');
delete_option('modern_privatekey');
delete_site_option('modern_privatekey');
delete_option('modern_publickey');
delete_site_option('modern_publickey');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'modern_contact_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'modern_contact_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'modern_contact_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'modern_contact_code' ) );


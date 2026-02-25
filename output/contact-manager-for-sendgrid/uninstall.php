<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cmfs-sendgrid-register');
delete_site_option('cmfs-sendgrid-register');
delete_option('cmfs-sendgrid-register-list');
delete_site_option('cmfs-sendgrid-register-list');
delete_option('cmfs-sendgrid-key');
delete_site_option('cmfs-sendgrid-key');
delete_option('cmfs-sendgrid-sandbox');
delete_site_option('cmfs-sendgrid-sandbox');
delete_option('tw-sendgrid-sender');
delete_site_option('tw-sendgrid-sender');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_phone' ) );


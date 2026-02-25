<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dn_checkout_extra_fields-fields');
delete_site_option('dn_checkout_extra_fields-fields');
delete_option('dn_checkout_extra_fields-last_id');
delete_site_option('dn_checkout_extra_fields-last_id');
delete_option('dn_checkout_extra_fields-settings');
delete_site_option('dn_checkout_extra_fields-settings');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dn_checkout_extra_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dn_checkout_extra_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dn_checkout_extra_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dn_checkout_extra_fields' ) );


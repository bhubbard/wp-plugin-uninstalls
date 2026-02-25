<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cbxtakeatour_version');
delete_site_option('cbxtakeatour_version');

// Delete Transients
delete_transient('cbxtakeatour_activated_notice');
delete_site_transient('cbxtakeatour_activated_notice');
delete_transient('cbxtakeatour_upgraded_notice');
delete_site_transient('cbxtakeatour_upgraded_notice');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cbxtourmeta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cbxtourmeta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cbxtourmeta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cbxtourmeta' ) );


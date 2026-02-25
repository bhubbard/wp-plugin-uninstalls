<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cb_parallax_options');
delete_site_option('cb_parallax_options');
delete_option('cb_parallax_plugin');
delete_site_option('cb_parallax_plugin');

// Delete Transients
delete_transient('cb_parallax_background_image_missing');
delete_site_transient('cb_parallax_background_image_missing');
delete_transient('cb_parallax_background_image_missmatch');
delete_site_transient('cb_parallax_background_image_missmatch');
delete_transient('cb_parallax_has_nsr');
delete_site_transient('cb_parallax_has_nsr');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cb_parallax' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cb_parallax' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cb_parallax' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cb_parallax' ) );


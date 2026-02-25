<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cb_vegas_options');
delete_site_option('cb_vegas_options');

// Delete Transients
delete_transient('cb_vegas_validation_transient');
delete_site_transient('cb_vegas_validation_transient');
delete_transient('cb_vegas_current_slideshow_index_transient');
delete_site_transient('cb_vegas_current_slideshow_index_transient');
delete_transient('cb_vegas_current_options_transient');
delete_site_transient('cb_vegas_current_options_transient');
delete_transient('cb_vegas_current_menu_order');
delete_site_transient('cb_vegas_current_menu_order');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cb_vegas_singular' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cb_vegas_singular' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cb_vegas_singular' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cb_vegas_singular' ) );


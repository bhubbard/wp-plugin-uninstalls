<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('arty_3dmodelviewer_woocommerce_api');
delete_site_option('arty_3dmodelviewer_woocommerce_api');
delete_option('arty_3dmodelviewer_woocommerce_default_position');
delete_site_option('arty_3dmodelviewer_woocommerce_default_position');
delete_option('arty_3dmodelviewer_woocommerce_default_values');
delete_site_option('arty_3dmodelviewer_woocommerce_default_values');
delete_option('arty_3dmodelviewer_activation_redirect');
delete_site_option('arty_3dmodelviewer_activation_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'arty_viewer_iframe' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'arty_viewer_iframe' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'arty_viewer_iframe' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'arty_viewer_iframe' ) );


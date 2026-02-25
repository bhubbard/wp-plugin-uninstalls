<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('layoutStyle');
delete_site_option('layoutStyle');
delete_option('storeId');
delete_site_option('storeId');
delete_option('apiKey');
delete_site_option('apiKey');
delete_option('abacusInitialized');
delete_site_option('abacusInitialized');

// Delete Transients
delete_transient('abacus-menu-admin-notice-success-update');
delete_site_transient('abacus-menu-admin-notice-success-update');
delete_transient('abacus-menu-admin-notice-error-update');
delete_site_transient('abacus-menu-admin-notice-error-update');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_price' ) );


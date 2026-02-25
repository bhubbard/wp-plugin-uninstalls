<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('erp-button-background');
delete_site_option('erp-button-background');
delete_option('erp-button-color');
delete_site_option('erp-button-color');
delete_option('erp-dropdown-background');
delete_site_option('erp-dropdown-background');
delete_option('erp-panel-background');
delete_site_option('erp-panel-background');
delete_option('erp-panel-color');
delete_site_option('erp-panel-color');
delete_option('erp-link-css-class');
delete_site_option('erp-link-css-class');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );


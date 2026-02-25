<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mxclpopup_general_options');
delete_site_option('mxclpopup_general_options');
delete_option('mxclpopup_page_options');
delete_site_option('mxclpopup_page_options');
delete_option('mxclpopup_login_page');
delete_site_option('mxclpopup_login_page');
delete_option('mxclpopup_register_page');
delete_site_option('mxclpopup_register_page');
delete_option('mxclpopup_reset_page');
delete_site_option('mxclpopup_reset_page');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );


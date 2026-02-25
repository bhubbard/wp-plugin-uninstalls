<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('site_logo');
delete_site_option('site_logo');
delete_option('advanced_login_page_customizer_login_ui_settings');
delete_site_option('advanced_login_page_customizer_login_ui_settings');
delete_option('advanced_login_page_customizer_settings');
delete_site_option('advanced_login_page_customizer_settings');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'alpc_menu_pointer_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'alpc_menu_pointer_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'alpc_menu_pointer_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'alpc_menu_pointer_dismissed' ) );


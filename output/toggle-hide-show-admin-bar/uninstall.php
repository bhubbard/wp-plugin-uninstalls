<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('thsab_remember_state');
delete_site_option('thsab_remember_state');
delete_option('thsab_tab_position');
delete_site_option('thsab_tab_position');
delete_option('thsab_tab_behavior');
delete_site_option('thsab_tab_behavior');
delete_option('thsab_tab_background_color');
delete_site_option('thsab_tab_background_color');
delete_option('thsab_tab_text_color');
delete_site_option('thsab_tab_text_color');
delete_option('thsab_tab_persistence');
delete_site_option('thsab_tab_persistence');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'show_admin_bar_front' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'show_admin_bar_front' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'show_admin_bar_front' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'show_admin_bar_front' ) );


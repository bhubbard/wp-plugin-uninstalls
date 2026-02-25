<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('webyx_fg_hide_admin_top_bar');
delete_site_option('webyx_fg_hide_admin_top_bar');
delete_option('webyx_fg_menu');
delete_site_option('webyx_fg_menu');
delete_option('webyx_fg_activation_time');
delete_site_option('webyx_fg_activation_time');
delete_option('webyx_fg_spare_me');
delete_site_option('webyx_fg_spare_me');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );


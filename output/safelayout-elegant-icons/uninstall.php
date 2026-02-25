<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('safelayout_icons_social_options');
delete_site_option('safelayout_icons_social_options');
delete_option('safelayout_icons_options_rate');
delete_site_option('safelayout_icons_options_rate');
delete_option('safelayout_icons_options_upgrade');
delete_site_option('safelayout_icons_options_upgrade');
delete_option('safelayout_icons_packs');
delete_site_option('safelayout_icons_packs');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'safelayout_menu_icon' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'safelayout_menu_icon' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'safelayout_menu_icon' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'safelayout_menu_icon' ) );


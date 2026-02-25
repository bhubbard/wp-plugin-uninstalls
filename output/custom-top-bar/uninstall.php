<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('enable_top_bar');
delete_site_option('enable_top_bar');
delete_option('fixed_top_bar');
delete_site_option('fixed_top_bar');
delete_option('display_contact_number');
delete_site_option('display_contact_number');
delete_option('display_email_address');
delete_site_option('display_email_address');
delete_option('top_bar_height');
delete_site_option('top_bar_height');
delete_option('top_bar_color');
delete_site_option('top_bar_color');
delete_option('contact_number');
delete_site_option('contact_number');
delete_option('contact_email');
delete_site_option('contact_email');
delete_option('text_color');
delete_site_option('text_color');
delete_option('show_admin_bar');
delete_site_option('show_admin_bar');
delete_option('button_text');
delete_site_option('button_text');
delete_option('acction_link');
delete_site_option('acction_link');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'social_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'social_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'social_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'social_link' ) );


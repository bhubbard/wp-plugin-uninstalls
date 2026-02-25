<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('commentor_display_count');
delete_site_option('commentor_display_count');
delete_option('commentor_admin_display_name');
delete_site_option('commentor_admin_display_name');
delete_option('commentor_form_direction');
delete_site_option('commentor_form_direction');
delete_option('commentor_primary_color');
delete_site_option('commentor_primary_color');
delete_option('commentor_box_background');
delete_site_option('commentor_box_background');
delete_option('commentor_box_padding');
delete_site_option('commentor_box_padding');
delete_option('commentor_distinguish_the_author');
delete_site_option('commentor_distinguish_the_author');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'likes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'likes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'likes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'likes' ) );


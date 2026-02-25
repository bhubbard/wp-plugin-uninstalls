<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpfomo_primary_text');
delete_site_option('wpfomo_primary_text');
delete_option('wpfomo_secondary_text');
delete_site_option('wpfomo_secondary_text');
delete_option('wpfomo_link_text');
delete_site_option('wpfomo_link_text');
delete_option('wpfomo_image_url');
delete_site_option('wpfomo_image_url');
delete_option('wpfomo_image_url_src');
delete_site_option('wpfomo_image_url_src');
delete_option('wpfomo_url');
delete_site_option('wpfomo_url');
delete_option('wpfomo_user_template');
delete_site_option('wpfomo_user_template');
delete_option('wpfomo_show_image');
delete_site_option('wpfomo_show_image');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpfomo_ignore_notice110' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpfomo_ignore_notice110' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpfomo_ignore_notice110' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpfomo_ignore_notice110' ) );


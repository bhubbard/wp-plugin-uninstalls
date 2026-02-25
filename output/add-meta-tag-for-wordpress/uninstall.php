<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('enable_tag');
delete_site_option('enable_tag');
delete_option('enable_page_tag');
delete_site_option('enable_page_tag');
delete_option('enable_post_tag');
delete_site_option('enable_post_tag');
delete_option('enable_og');
delete_site_option('enable_og');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'add_meta_tag_for_wordpress' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'add_meta_tag_for_wordpress' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'add_meta_tag_for_wordpress' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'add_meta_tag_for_wordpress' ) );


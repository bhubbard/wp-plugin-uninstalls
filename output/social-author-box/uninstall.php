<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('social_author_box_settings');
delete_site_option('social_author_box_settings');
delete_option('social_authorbox_facebook');
delete_site_option('social_authorbox_facebook');
delete_option('social_authorbox_twitter');
delete_site_option('social_authorbox_twitter');
delete_option('social_authorbox_googleplus');
delete_site_option('social_authorbox_googleplus');
delete_option('social_authorbox_linkedin');
delete_site_option('social_authorbox_linkedin');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'author_desc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'author_desc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'author_desc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'author_desc' ) );


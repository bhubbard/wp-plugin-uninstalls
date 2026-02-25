<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pj_post_thumb_linkto');
delete_site_option('pj_post_thumb_linkto');
delete_option('pj_post_thumb_size');
delete_site_option('pj_post_thumb_size');
delete_option('pj_custom_post_thumb_width');
delete_site_option('pj_custom_post_thumb_width');
delete_option('pj_custom_post_thumb_height');
delete_site_option('pj_custom_post_thumb_height');
delete_option('pj_custom_post_thumb_crop');
delete_site_option('pj_custom_post_thumb_crop');
delete_option('pj_post_thumb_class');
delete_site_option('pj_post_thumb_class');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_pj_post_thumbnail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_pj_post_thumbnail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_pj_post_thumbnail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_pj_post_thumbnail' ) );


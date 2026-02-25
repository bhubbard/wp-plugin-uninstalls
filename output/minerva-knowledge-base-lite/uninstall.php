<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_mkb_flushed_rewrite_cpt');
delete_site_option('_mkb_flushed_rewrite_cpt');
delete_option('_mkb_flushed_rewrite_topic');
delete_site_option('_mkb_flushed_rewrite_topic');
delete_option('_mkb_flushed_rewrite_tag');
delete_site_option('_mkb_flushed_rewrite_tag');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_mkb_views' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_mkb_views' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_mkb_views' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_mkb_views' ) );


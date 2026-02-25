<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wplr_hide_posttypes');
delete_site_option('wplr_hide_posttypes');
delete_option('wplr_posttype');
delete_site_option('wplr_posttype');
delete_option('wplr_posttype_status');
delete_site_option('wplr_posttype_status');
delete_option('wplr_posttype_hierarchical');
delete_site_option('wplr_posttype_hierarchical');
delete_option('wplr_posttype_reuse');
delete_site_option('wplr_posttype_reuse');
delete_option('wplr_posttype_mode');
delete_site_option('wplr_posttype_mode');
delete_option('wplr_posttype_meta');
delete_site_option('wplr_posttype_meta');
delete_option('wplr_taxonomy');
delete_site_option('wplr_taxonomy');
delete_option('wplr_taxonomy_reuse');
delete_site_option('wplr_taxonomy_reuse');
delete_option('wplr_taxonomy_tags');
delete_site_option('wplr_taxonomy_tags');
delete_option('wplr_taxonomy_tags_reuse');
delete_site_option('wplr_taxonomy_tags_reuse');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_thumbnail_id' ) );


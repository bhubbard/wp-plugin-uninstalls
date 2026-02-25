<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jamify_hfs_allow_author');
delete_site_option('jamify_hfs_allow_author');
delete_option('jamify_hfs_allow_contributor');
delete_site_option('jamify_hfs_allow_contributor');
delete_option('jamify_hfs_insert_header');
delete_site_option('jamify_hfs_insert_header');
delete_option('jamify_hfs_insert_body');
delete_site_option('jamify_hfs_insert_body');
delete_option('jamify_hfs_insert_footer');
delete_site_option('jamify_hfs_insert_footer');
delete_option('jamify_hfs_clean_on_uninstall');
delete_site_option('jamify_hfs_clean_on_uninstall');
delete_option('jamify_hfs_insert_header_priority');
delete_site_option('jamify_hfs_insert_header_priority');
delete_option('jamify_hfs_insert_body_priority');
delete_site_option('jamify_hfs_insert_body_priority');
delete_option('jamify_hfs_insert_footer_priority');
delete_site_option('jamify_hfs_insert_footer_priority');
delete_option('shfs_script_access_level');
delete_site_option('shfs_script_access_level');
delete_option('shfs_insert_header');
delete_site_option('shfs_insert_header');
delete_option('shfs_insert_footer');
delete_site_option('shfs_insert_footer');
delete_option('shfs_insert_header_priority');
delete_site_option('shfs_insert_header_priority');
delete_option('shfs_insert_footer_priority');
delete_site_option('shfs_insert_footer_priority');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_inpost_head_script' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_inpost_head_script' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_inpost_head_script' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_inpost_head_script' ) );


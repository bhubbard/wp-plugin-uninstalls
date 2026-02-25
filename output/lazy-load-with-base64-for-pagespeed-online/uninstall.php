<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('base64_data_checkbox');
delete_site_option('base64_data_checkbox');
delete_option('base64_include_image_checkbox');
delete_site_option('base64_include_image_checkbox');
delete_option('base64_include_image_content');
delete_site_option('base64_include_image_content');
delete_option('base64_include_og_url_for_image_checkbox');
delete_site_option('base64_include_og_url_for_image_checkbox');
delete_option('base64_include_og_url_for_image_content');
delete_site_option('base64_include_og_url_for_image_content');
delete_option('base64_set_max_file_size_content');
delete_site_option('base64_set_max_file_size_content');
delete_option('base64_set_max_file_size_checkbox');
delete_site_option('base64_set_max_file_size_checkbox');
delete_option('base64_do_not_include_admin_checkbox');
delete_site_option('base64_do_not_include_admin_checkbox');
delete_option('lazy_load_data_checkbox');
delete_site_option('lazy_load_data_checkbox');
delete_option('lazy_load_exclude_image_checkbox');
delete_site_option('lazy_load_exclude_image_checkbox');
delete_option('lazy_load_exclude_image_content');
delete_site_option('lazy_load_exclude_image_content');
delete_option('lazy_load_do_not_include_admin_checkbox');
delete_site_option('lazy_load_do_not_include_admin_checkbox');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'base64_include_image_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'base64_include_image_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'base64_include_image_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'base64_include_image_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'base64_include_og_url_for_image_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'base64_include_og_url_for_image_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'base64_include_og_url_for_image_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'base64_include_og_url_for_image_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'lazy_load_exclude_image_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'lazy_load_exclude_image_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'lazy_load_exclude_image_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'lazy_load_exclude_image_content' ) );


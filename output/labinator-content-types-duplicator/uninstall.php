<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lct_duplicator_version');
delete_site_option('lct_duplicator_version');
delete_option('lct_duplicator_show_row');
delete_site_option('lct_duplicator_show_row');
delete_option('lct_duplicator_show_submitbox');
delete_site_option('lct_duplicator_show_submitbox');
delete_option('lct_duplicator_show_original_column');
delete_site_option('lct_duplicator_show_original_column');
delete_option('lct_duplicator_show_original_in_post_states');
delete_site_option('lct_duplicator_show_original_in_post_states');
delete_option('lct_duplicator_show_original_meta_box');
delete_site_option('lct_duplicator_show_original_meta_box');
delete_option('lct_duplicator_roles');
delete_site_option('lct_duplicator_roles');
delete_option('lct_duplicator_types_enabled');
delete_site_option('lct_duplicator_types_enabled');
delete_option('lct_duplicator_copychildren');
delete_site_option('lct_duplicator_copychildren');
delete_option('lct_duplicator_copyattachments');
delete_site_option('lct_duplicator_copyattachments');
delete_option('lct_duplicator_copycomments');
delete_site_option('lct_duplicator_copycomments');
delete_option('lct_duplicator_copy_user_level');
delete_site_option('lct_duplicator_copy_user_level');
delete_option('lct_duplicator_copytitle');
delete_site_option('lct_duplicator_copytitle');
delete_option('lct_duplicator_copydate');
delete_site_option('lct_duplicator_copydate');
delete_option('lct_duplicator_copystatus');
delete_site_option('lct_duplicator_copystatus');
delete_option('lct_duplicator_copyslug');
delete_site_option('lct_duplicator_copyslug');
delete_option('lct_duplicator_copyexcerpt');
delete_site_option('lct_duplicator_copyexcerpt');
delete_option('lct_duplicator_copycontent');
delete_site_option('lct_duplicator_copycontent');
delete_option('lct_duplicator_copythumbnail');
delete_site_option('lct_duplicator_copythumbnail');
delete_option('lct_duplicator_copytemplate');
delete_site_option('lct_duplicator_copytemplate');
delete_option('lct_duplicator_copyformat');
delete_site_option('lct_duplicator_copyformat');
delete_option('lct_duplicator_copyauthor');
delete_site_option('lct_duplicator_copyauthor');
delete_option('lct_duplicator_copypassword');
delete_site_option('lct_duplicator_copypassword');
delete_option('lct_duplicator_copymenuorder');
delete_site_option('lct_duplicator_copymenuorder');
delete_option('lct_duplicator_taxonomies_blacklist');
delete_site_option('lct_duplicator_taxonomies_blacklist');
delete_option('lct_duplicator_blacklist');
delete_site_option('lct_duplicator_blacklist');
delete_option('lct_duplicator_show_adminbar');
delete_site_option('lct_duplicator_show_adminbar');
delete_option('lct_duplicator_show_bulkactions');
delete_site_option('lct_duplicator_show_bulkactions');
delete_option('lct_duplicator_admin_user_level');
delete_site_option('lct_duplicator_admin_user_level');
delete_option('lct_duplicator_create_user_level');
delete_site_option('lct_duplicator_create_user_level');
delete_option('lct_duplicator_view_user_level');
delete_site_option('lct_duplicator_view_user_level');
delete_option('dp_notice');
delete_site_option('dp_notice');
delete_option('lct_duplicator_title_prefix');
delete_site_option('lct_duplicator_title_prefix');
delete_option('lct_duplicator_title_suffix');
delete_site_option('lct_duplicator_title_suffix');
delete_option('lct_duplicator_increase_menu_order_by');
delete_site_option('lct_duplicator_increase_menu_order_by');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_dp_original' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_dp_original' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_dp_original' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_dp_original' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_lct_copy_from_url-original_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_lct_copy_from_url-original_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_lct_copy_from_url-original_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_lct_copy_from_url-original_file' ) );


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('duplicate_post_version');
delete_site_option('duplicate_post_version');
delete_option('duplicate_post_show_notice');
delete_site_option('duplicate_post_show_notice');
delete_option('duplicate_post_copychildren');
delete_site_option('duplicate_post_copychildren');
delete_option('duplicate_post_copyattachments');
delete_site_option('duplicate_post_copyattachments');
delete_option('duplicate_post_copycomments');
delete_site_option('duplicate_post_copycomments');
delete_option('duplicate_post_copytitle');
delete_site_option('duplicate_post_copytitle');
delete_option('duplicate_post_copydate');
delete_site_option('duplicate_post_copydate');
delete_option('duplicate_post_copystatus');
delete_site_option('duplicate_post_copystatus');
delete_option('duplicate_post_copyslug');
delete_site_option('duplicate_post_copyslug');
delete_option('duplicate_post_copyexcerpt');
delete_site_option('duplicate_post_copyexcerpt');
delete_option('duplicate_post_copycontent');
delete_site_option('duplicate_post_copycontent');
delete_option('duplicate_post_copythumbnail');
delete_site_option('duplicate_post_copythumbnail');
delete_option('duplicate_post_copytemplate');
delete_site_option('duplicate_post_copytemplate');
delete_option('duplicate_post_copyformat');
delete_site_option('duplicate_post_copyformat');
delete_option('duplicate_post_copyauthor');
delete_site_option('duplicate_post_copyauthor');
delete_option('duplicate_post_copypassword');
delete_site_option('duplicate_post_copypassword');
delete_option('duplicate_post_copymenuorder');
delete_site_option('duplicate_post_copymenuorder');
delete_option('duplicate_post_taxonomies_blacklist');
delete_site_option('duplicate_post_taxonomies_blacklist');
delete_option('duplicate_post_blacklist');
delete_site_option('duplicate_post_blacklist');
delete_option('duplicate_post_types_enabled');
delete_site_option('duplicate_post_types_enabled');
delete_option('duplicate_post_show_original_column');
delete_site_option('duplicate_post_show_original_column');
delete_option('duplicate_post_show_original_in_post_states');
delete_site_option('duplicate_post_show_original_in_post_states');
delete_option('duplicate_post_show_original_meta_box');
delete_site_option('duplicate_post_show_original_meta_box');
delete_option('duplicate_post_show_link');
delete_site_option('duplicate_post_show_link');
delete_option('duplicate_post_show_link_in');
delete_site_option('duplicate_post_show_link_in');
delete_option('duplicate_post_title_prefix');
delete_site_option('duplicate_post_title_prefix');
delete_option('duplicate_post_title_suffix');
delete_site_option('duplicate_post_title_suffix');
delete_option('duplicate_post_increase_menu_order_by');
delete_site_option('duplicate_post_increase_menu_order_by');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_dp_original' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_dp_original' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_dp_original' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_dp_original' ) );


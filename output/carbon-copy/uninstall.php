<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('carbon_copy_version');
delete_site_option('carbon_copy_version');
delete_option('carbon_copy_show_row');
delete_site_option('carbon_copy_show_row');
delete_option('carbon_copy_show_submitbox');
delete_site_option('carbon_copy_show_submitbox');
delete_option('carbon_copy_show_original_column');
delete_site_option('carbon_copy_show_original_column');
delete_option('carbon_copy_show_original_in_post_states');
delete_site_option('carbon_copy_show_original_in_post_states');
delete_option('carbon_copy_show_original_meta_box');
delete_site_option('carbon_copy_show_original_meta_box');
delete_option('carbon_copy_copychildren');
delete_site_option('carbon_copy_copychildren');
delete_option('carbon_copy_copyattachments');
delete_site_option('carbon_copy_copyattachments');
delete_option('carbon_copy_copycomments');
delete_site_option('carbon_copy_copycomments');
delete_option('carbon_copy_copy_user_level');
delete_site_option('carbon_copy_copy_user_level');
delete_option('carbon_copy_copytitle');
delete_site_option('carbon_copy_copytitle');
delete_option('carbon_copy_copydate');
delete_site_option('carbon_copy_copydate');
delete_option('carbon_copy_copystatus');
delete_site_option('carbon_copy_copystatus');
delete_option('carbon_copy_copyslug');
delete_site_option('carbon_copy_copyslug');
delete_option('carbon_copy_copyexcerpt');
delete_site_option('carbon_copy_copyexcerpt');
delete_option('carbon_copy_copycontent');
delete_site_option('carbon_copy_copycontent');
delete_option('carbon_copy_copythumbnail');
delete_site_option('carbon_copy_copythumbnail');
delete_option('carbon_copy_copytemplate');
delete_site_option('carbon_copy_copytemplate');
delete_option('carbon_copy_copyformat');
delete_site_option('carbon_copy_copyformat');
delete_option('carbon_copy_copyauthor');
delete_site_option('carbon_copy_copyauthor');
delete_option('carbon_copy_copypassword');
delete_site_option('carbon_copy_copypassword');
delete_option('carbon_copy_copymenuorder');
delete_site_option('carbon_copy_copymenuorder');
delete_option('carbon_copy_widgets_classic');
delete_site_option('carbon_copy_widgets_classic');
delete_option('carbon_copy_widgets');
delete_site_option('carbon_copy_widgets');
delete_option('carbon_copy_menus');
delete_site_option('carbon_copy_menus');
delete_option('carbon_copy_types_enabled');
delete_site_option('carbon_copy_types_enabled');
delete_option('carbon_copy_taxonomies_blacklist');
delete_site_option('carbon_copy_taxonomies_blacklist');
delete_option('carbon_copy_blacklist');
delete_site_option('carbon_copy_blacklist');
delete_option('carbon_copy_show_adminbar');
delete_site_option('carbon_copy_show_adminbar');
delete_option('carbon_copy_show_bulkactions');
delete_site_option('carbon_copy_show_bulkactions');
delete_option('carbon_copy_cleaner');
delete_site_option('carbon_copy_cleaner');
delete_option('carbon_copy_admin_user_level');
delete_site_option('carbon_copy_admin_user_level');
delete_option('carbon_copy_create_user_level');
delete_site_option('carbon_copy_create_user_level');
delete_option('carbon_copy_view_user_level');
delete_site_option('carbon_copy_view_user_level');
delete_option('carbon_copy_title_prefix');
delete_site_option('carbon_copy_title_prefix');
delete_option('carbon_copy_title_suffix');
delete_site_option('carbon_copy_title_suffix');
delete_option('carbon_copy_increase_menu_order_by');
delete_site_option('carbon_copy_increase_menu_order_by');
delete_option('carbon_copy_roles');
delete_site_option('carbon_copy_roles');
delete_option('carbon_copy_blacklist ');
delete_site_option('carbon_copy_blacklist ');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cc_original' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cc_original' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cc_original' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cc_original' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );


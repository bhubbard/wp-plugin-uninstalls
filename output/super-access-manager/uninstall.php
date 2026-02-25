<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xeweb-sam_admin_see_all_pages');
delete_site_option('xeweb-sam_admin_see_all_pages');
delete_option('xeweb-sam_redirect_page');
delete_site_option('xeweb-sam_redirect_page');
delete_option('xeweb-sam_shortcode_all_pages');
delete_site_option('xeweb-sam_shortcode_all_pages');
delete_option('xeweb-sam_message_no_posts');
delete_site_option('xeweb-sam_message_no_posts');
delete_option('xeweb-sam_post_limit_widget');
delete_site_option('xeweb-sam_post_limit_widget');
delete_option('xeweb-sam_list_posts_text');
delete_site_option('xeweb-sam_list_posts_text');
delete_option('xeweb-sam_allowed_post_types');
delete_site_option('xeweb-sam_allowed_post_types');
delete_option('xeweb-sam_admin_remove_empty_cats');
delete_site_option('xeweb-sam_admin_remove_empty_cats');
delete_option('xeweb-sam_auto_menu_remove');
delete_site_option('xeweb-sam_auto_menu_remove');
delete_option('xeweb-sam_list_posts_link');
delete_site_option('xeweb-sam_list_posts_link');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'txsc_allowed_users' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'txsc_allowed_users' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'txsc_allowed_users' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'txsc_allowed_users' ) );


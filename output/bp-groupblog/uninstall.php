<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bp_groupblog_blog_defaults_options');
delete_site_option('bp_groupblog_blog_defaults_options');
delete_option('bp_groupblog_blog_defaults_setup');
delete_site_option('bp_groupblog_blog_defaults_setup');
delete_option('p2_rewrites_flushed');
delete_site_option('p2_rewrites_flushed');
delete_option('prologue_show_titles');
delete_site_option('prologue_show_titles');
delete_option('p2_background_color');
delete_site_option('p2_background_color');
delete_option('p2_background_image');
delete_site_option('p2_background_image');
delete_option('p2_hide_sidebar');
delete_site_option('p2_hide_sidebar');
delete_option('p2_allow_users_publish');
delete_site_option('p2_allow_users_publish');
delete_option('p2_hide_threads');
delete_site_option('p2_hide_threads');
delete_option('p2_prompt_text');
delete_site_option('p2_prompt_text');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'created_by_groupblog_dont_change' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'created_by_groupblog_dont_change' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'created_by_groupblog_dont_change' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'created_by_groupblog_dont_change' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%capabilities' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%capabilities' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%capabilities' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%capabilities' ) );


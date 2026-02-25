<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('int_option_enable_for_posts');
delete_site_option('int_option_enable_for_posts');
delete_option('int_option_enable_for_projects');
delete_site_option('int_option_enable_for_projects');
delete_option('int_option_enable_for_casestudies');
delete_site_option('int_option_enable_for_casestudies');
delete_option('int_option_enable_post_type');
delete_site_option('int_option_enable_post_type');
delete_option('int_option_display_downloads');
delete_site_option('int_option_display_downloads');
delete_option('int_option_allow_iframes');
delete_site_option('int_option_allow_iframes');
delete_option('int_option_google_analytics');
delete_site_option('int_option_google_analytics');
delete_option('int_option_tracker_name');
delete_site_option('int_option_tracker_name');
delete_option('int_option_progress_color');
delete_site_option('int_option_progress_color');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'int_option_enable_for_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('default_post_edit_rows');
delete_site_option('default_post_edit_rows');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'int_article_sections' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'int_article_sections' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'int_article_sections' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'int_article_sections' ) );


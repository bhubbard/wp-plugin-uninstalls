<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('my_liked_content_page_title');
delete_site_option('my_liked_content_page_title');
delete_option('my_liked_content_page_name');
delete_site_option('my_liked_content_page_name');
delete_option('my_liked_content_page_id');
delete_site_option('my_liked_content_page_id');
delete_option('my_liked_content_id');
delete_site_option('my_liked_content_id');
delete_option('nslt_dbVersion');
delete_site_option('nslt_dbVersion');
delete_option('nslt_jquery');
delete_site_option('nslt_jquery');
delete_option('nslt_onPage');
delete_site_option('nslt_onPage');
delete_option('nslt_useEmblems');
delete_site_option('nslt_useEmblems');
delete_option('nslt_textOrImage');
delete_site_option('nslt_textOrImage');
delete_option('nslt_text');
delete_site_option('nslt_text');
delete_option('most_liked_content');
delete_site_option('most_liked_content');
delete_option('latest_liked_content');
delete_site_option('latest_liked_content');
delete_option('most_visited_liked_content');
delete_site_option('most_visited_liked_content');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_allow_all' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_allow_all' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_allow_all' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_allow_all' ) );


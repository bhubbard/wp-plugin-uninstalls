<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('page_meta_title');
delete_site_option('page_meta_title');
delete_option('page_meta_keywords');
delete_site_option('page_meta_keywords');
delete_option('page_meta_description');
delete_site_option('page_meta_description');
delete_option('post_meta_title');
delete_site_option('post_meta_title');
delete_option('post_meta_keywords');
delete_site_option('post_meta_keywords');
delete_option('post_meta_description');
delete_site_option('post_meta_description');
delete_option('use_pages_meta_data');
delete_site_option('use_pages_meta_data');
delete_option('use_posts_meta_data');
delete_site_option('use_posts_meta_data');
delete_option('meta_title');
delete_site_option('meta_title');
delete_option('meta_description');
delete_site_option('meta_description');
delete_option('meta_keywords');
delete_site_option('meta_keywords');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sc_m_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sc_m_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sc_m_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sc_m_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sc_m_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sc_m_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sc_m_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sc_m_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sc_m_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sc_m_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sc_m_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sc_m_keywords' ) );


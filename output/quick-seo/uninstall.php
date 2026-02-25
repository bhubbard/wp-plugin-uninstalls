<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('f-social');
delete_site_option('f-social');
delete_option('t-social');
delete_site_option('t-social');
delete_option('g-social');
delete_site_option('g-social');
delete_option('y-social');
delete_site_option('y-social');
delete_option('googleplus-button');
delete_site_option('googleplus-button');
delete_option('home_title');
delete_site_option('home_title');
delete_option('meta_settings');
delete_site_option('meta_settings');
delete_option('canonical');
delete_site_option('canonical');
delete_option('author');
delete_site_option('author');
delete_option('publisher');
delete_site_option('publisher');
delete_option('ga');
delete_site_option('ga');
delete_option('google-verification');
delete_site_option('google-verification');
delete_option('bing-verification');
delete_site_option('bing-verification');
delete_option('home_desc');
delete_site_option('home_desc');
delete_option('robots');
delete_site_option('robots');
delete_option('xmlsitemap');
delete_site_option('xmlsitemap');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'Title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'Title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'Title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'Title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'Desc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'Desc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'Desc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'Desc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'tags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'tags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'tags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'tags' ) );


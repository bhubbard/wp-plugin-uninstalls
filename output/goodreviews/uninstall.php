<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('goodreviews-getmethod');
delete_site_option('goodreviews-getmethod');
delete_option('goodreviews-api-key');
delete_site_option('goodreviews-api-key');
delete_option('goodreviews-agree');
delete_site_option('goodreviews-agree');
delete_option('goodreviews-responsive-style');
delete_site_option('goodreviews-responsive-style');
delete_option('goodreviews-alt-style');
delete_site_option('goodreviews-alt-style');
delete_option('goodrev-perform');
delete_site_option('goodrev-perform');
delete_option('goodrev-clearcache');
delete_site_option('goodrev-clearcache');
delete_option('goodrev-defer');
delete_site_option('goodrev-defer');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'goodreviews_220' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'goodreviews_220' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'goodreviews_220' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'goodreviews_220' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'goodreviews_ignore_FileGetEnabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'goodreviews_ignore_FileGetEnabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'goodreviews_ignore_FileGetEnabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'goodreviews_ignore_FileGetEnabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'goodreviews_ignore_CurlEnabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'goodreviews_ignore_CurlEnabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'goodreviews_ignore_CurlEnabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'goodreviews_ignore_CurlEnabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'goodreviews_ignore_CurlDisabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'goodreviews_ignore_CurlDisabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'goodreviews_ignore_CurlDisabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'goodreviews_ignore_CurlDisabled' ) );


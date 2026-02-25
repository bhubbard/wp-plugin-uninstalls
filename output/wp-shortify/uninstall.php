<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_shortify_show_frontend');
delete_site_option('wp_shortify_show_frontend');
delete_option('wp_shortify_auth_token');
delete_site_option('wp_shortify_auth_token');
delete_option('wp_shortify_token');
delete_site_option('wp_shortify_token');
delete_option('wp_shortify_ex_posts');
delete_site_option('wp_shortify_ex_posts');
delete_option('wp_shortify_show_posts_clicks');
delete_site_option('wp_shortify_show_posts_clicks');
delete_option('wp_shortify_admin_access');
delete_site_option('wp_shortify_admin_access');
delete_option('wp_shortify_plugin_name');
delete_site_option('wp_shortify_plugin_name');
delete_option('wp_shortify_client_id');
delete_site_option('wp_shortify_client_id');
delete_option('wp_shortify_client_secret');
delete_site_option('wp_shortify_client_secret');
delete_option('wp_shortify_api_key');
delete_site_option('wp_shortify_api_key');
delete_option('wp_shortify_google_token');
delete_site_option('wp_shortify_google_token');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'short_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'short_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'short_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'short_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'short_created' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'short_created' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'short_created' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'short_created' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'short_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'short_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'short_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'short_status' ) );


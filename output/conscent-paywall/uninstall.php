<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('conscent_client_id');
delete_site_option('conscent_client_id');
delete_option('conscent_sdk_url');
delete_site_option('conscent_sdk_url');
delete_option('conscent_paywall_category');
delete_site_option('conscent_paywall_category');
delete_option('conscent_api_url');
delete_site_option('conscent_api_url');
delete_option('conscent_api_key');
delete_site_option('conscent_api_key');
delete_option('conscent_api_secret');
delete_site_option('conscent_api_secret');
delete_option('conscent_after_logout');
delete_site_option('conscent_after_logout');
delete_option('conscent_after_login');
delete_site_option('conscent_after_login');
delete_option('conscent_theme_location');
delete_site_option('conscent_theme_location');
delete_option('conscent_content_visibility');
delete_site_option('conscent_content_visibility');
delete_option('conscent_default_name');
delete_site_option('conscent_default_name');
delete_option('conscent_amp_sdk_url');
delete_site_option('conscent_amp_sdk_url');
delete_option('conscent_amp_api_url');
delete_site_option('conscent_amp_api_url');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'conscent_post_content_visibility' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'conscent_post_content_visibility' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'conscent_post_content_visibility' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'conscent_post_content_visibility' ) );


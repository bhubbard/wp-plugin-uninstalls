<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aiols_default_provider');
delete_site_option('aiols_default_provider');
delete_option('aiols_auto_generate_on_save');
delete_site_option('aiols_auto_generate_on_save');
delete_option('aiols_tinyurl_api_key');
delete_site_option('aiols_tinyurl_api_key');
delete_option('aiols_bitly_token');
delete_site_option('aiols_bitly_token');
delete_option('aiols_rebrandly_key');
delete_site_option('aiols_rebrandly_key');
delete_option('aiols_cuttly_key');
delete_site_option('aiols_cuttly_key');
delete_option('aiols_tly_key');
delete_site_option('aiols_tly_key');
delete_option('aiols_bitly_domain');
delete_site_option('aiols_bitly_domain');

// Delete Transients
delete_transient('aiols_bulk_notice');
delete_site_transient('aiols_bulk_notice');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_aiols_shortlink' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_aiols_shortlink' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_aiols_shortlink' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_aiols_shortlink' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_aiols_last_error' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_aiols_last_error' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_aiols_last_error' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_aiols_last_error' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_aiols_provider' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_aiols_provider' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_aiols_provider' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_aiols_provider' ) );


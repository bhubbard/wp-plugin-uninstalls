<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zillow_screen_name');
delete_site_option('zillow_screen_name');
delete_option('personal_info');
delete_site_option('personal_info');
delete_option('dssearchagent-wordpress-edition');
delete_site_option('dssearchagent-wordpress-edition');
delete_option('dsidxpress-custom-options');
delete_site_option('dsidxpress-custom-options');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('dsidxpress');
delete_site_option('dsidxpress');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dsidxpress-assembled-url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dsidxpress-assembled-url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dsidxpress-assembled-url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dsidxpress-assembled-url' ) );


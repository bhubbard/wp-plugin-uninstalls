<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sbsa_settings');
delete_site_option('sbsa_settings');
delete_option('sbsa_plugin_version');
delete_site_option('sbsa_plugin_version');
delete_option('sbsa_install_date');
delete_site_option('sbsa_install_date');
delete_option('sbsa_updated_date');
delete_site_option('sbsa_updated_date');
delete_option('sbsa_review_dismissed');
delete_site_option('sbsa_review_dismissed');
delete_option('sbsa_review_dismissed_until');
delete_site_option('sbsa_review_dismissed_until');
delete_option('sbsa_review_seen');
delete_site_option('sbsa_review_seen');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'has_custom_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'has_custom_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'has_custom_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'has_custom_avatar' ) );


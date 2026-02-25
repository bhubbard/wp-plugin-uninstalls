<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp101-available-series');
delete_site_option('wp101-available-series');
delete_option('wp101_api_key');
delete_site_option('wp101_api_key');
delete_option('wp101_custom_topics');
delete_site_option('wp101_custom_topics');
delete_option('wp101_hidden_topics');
delete_site_option('wp101_hidden_topics');
delete_option('wp101-bulk-migration-lock');
delete_site_option('wp101-bulk-migration-lock');
delete_option('wp101_db_version');
delete_site_option('wp101_db_version');
delete_option('wp101_admin_restriction');
delete_site_option('wp101_admin_restriction');

// Delete Transients
delete_transient('wp101_topics');
delete_site_transient('wp101_topics');
delete_transient('wp101_jetpack_topics');
delete_site_transient('wp101_jetpack_topics');
delete_transient('wp101_woocommerce_topics');
delete_site_transient('wp101_woocommerce_topics');
delete_transient('wp101_wpseo_topics');
delete_site_transient('wp101_wpseo_topics');
delete_transient('wp101_message');
delete_site_transient('wp101_message');
delete_transient('wp101_get_admin_count');
delete_site_transient('wp101_get_admin_count');
delete_transient('wp101_api_key_valid');
delete_site_transient('wp101_api_key_valid');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp101-bulk-migration');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp101-dismissed-notifications' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp101-dismissed-notifications' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp101-dismissed-notifications' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp101-dismissed-notifications' ) );


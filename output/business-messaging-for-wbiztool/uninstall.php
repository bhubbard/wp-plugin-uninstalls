<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wbiztool_messaging_settings');
delete_site_option('wbiztool_messaging_settings');
delete_option('woocommerce_store_phone');
delete_site_option('woocommerce_store_phone');
delete_option('wbiztool_messaging_version');
delete_site_option('wbiztool_messaging_version');
delete_option('wbiztool_messaging_network_settings');
delete_site_option('wbiztool_messaging_network_settings');
delete_option('wbiztool_test_setting');
delete_site_option('wbiztool_test_setting');

// Delete Transients
delete_transient('wbiztool_messaging_connection_test');
delete_site_transient('wbiztool_messaging_connection_test');
delete_transient('wbiztool_messaging_api_status');
delete_site_transient('wbiztool_messaging_api_status');
delete_transient('wbiztool_messaging_cache');
delete_site_transient('wbiztool_messaging_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('wbiztool_messaging_send_delayed_message');
wp_clear_scheduled_hook('wbiztool_messaging_cleanup_logs');
wp_clear_scheduled_hook('wbiztool_messaging_send_queued_messages');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wbiztool_messaging_preferences' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wbiztool_messaging_preferences' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wbiztool_messaging_preferences' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wbiztool_messaging_preferences' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wbiztool_messaging_last_test' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wbiztool_messaging_last_test' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wbiztool_messaging_last_test' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wbiztool_messaging_last_test' ) );


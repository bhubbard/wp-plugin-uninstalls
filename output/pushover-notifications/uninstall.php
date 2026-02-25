<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_ckpn_additional_key_mapping');
delete_site_option('_ckpn_additional_key_mapping');
delete_option('ckpn_logs');
delete_site_option('ckpn_logs');
delete_option('_ckpn_additional_app_keys');
delete_site_option('_ckpn_additional_app_keys');
delete_option('ckpn_pushover_notifications_settings');
delete_site_option('ckpn_pushover_notifications_settings');
delete_option('_ckpn_users_with_keys');
delete_site_option('_ckpn_users_with_keys');

// Delete Transients
delete_transient('_wp_push_extensions_listing');
delete_site_transient('_wp_push_extensions_listing');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('update_core');
delete_site_transient('update_core');

// Clear Cron Jobs
wp_clear_scheduled_hook('ckpn_plugin_update_check');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ckpn_user_notify_posts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ckpn_user_notify_posts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ckpn_user_notify_posts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ckpn_user_notify_posts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ckpn_user_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ckpn_user_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ckpn_user_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ckpn_user_key' ) );


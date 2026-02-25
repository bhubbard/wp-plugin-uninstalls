<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('majscan_temp_messages');
delete_site_option('majscan_temp_messages');
delete_option('majscan_admin_accessible');
delete_site_option('majscan_admin_accessible');
delete_option('majscan_plugins');
delete_site_option('majscan_plugins');
delete_option('majscan_themes');
delete_site_option('majscan_themes');
delete_option('majscan_wordpress');
delete_site_option('majscan_wordpress');
delete_option('majscan_vide');
delete_site_option('majscan_vide');
delete_option('majscan_enable_cron');
delete_site_option('majscan_enable_cron');
delete_option('majscan_cron_frequency');
delete_site_option('majscan_cron_frequency');
delete_option('majscan_email');
delete_site_option('majscan_email');
delete_option('majscan_admin');
delete_site_option('majscan_admin');
delete_option('majscan_cron_last_execution');
delete_site_option('majscan_cron_last_execution');
delete_option('majscan_cron_last_source');
delete_site_option('majscan_cron_last_source');
delete_option('majscan_temp_next_execution');
delete_site_option('majscan_temp_next_execution');
delete_option('majscan_last_error');
delete_site_option('majscan_last_error');

// Delete Transients
delete_transient('majscan_hosting_provider');
delete_site_transient('majscan_hosting_provider');
delete_transient('majscan_latest_php_version');
delete_site_transient('majscan_latest_php_version');
delete_transient('update_core');
delete_site_transient('update_core');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('majscan_cron_check');
wp_clear_scheduled_hook('majscan_cleanup_temp_option');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'majscan_last_notification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'majscan_last_notification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'majscan_last_notification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'majscan_last_notification' ) );


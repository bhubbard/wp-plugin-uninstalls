<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('auto_update_plugins');
delete_site_option('auto_update_plugins');
delete_option('action_scheduler_migration_status');
delete_site_option('action_scheduler_migration_status');

// Delete Transients
delete_transient('doing_cron');
delete_site_transient('doing_cron');

// Clear Cron Jobs
wp_clear_scheduled_hook('docketcache_gc');
wp_clear_scheduled_hook('docketcache_optimizedb');
wp_clear_scheduled_hook('docketcache_checkversion');
wp_clear_scheduled_hook('do_pings');
wp_clear_scheduled_hook('woocommerce_tracker_send_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('adsd_activation_time');
delete_site_option('adsd_activation_time');
delete_option('adsd_new_options');
delete_site_option('adsd_new_options');
delete_option('adsd_new_logging_enabled');
delete_site_option('adsd_new_logging_enabled');
delete_option('adsd_log_level');
delete_site_option('adsd_log_level');
delete_option('adsd_logging_enabled');
delete_site_option('adsd_logging_enabled');
delete_option('adsd_log_levels');
delete_site_option('adsd_log_levels');
delete_option('adsd_new_network_options');
delete_site_option('adsd_new_network_options');

// Delete Transients
delete_transient('adsd_new_cache');
delete_site_transient('adsd_new_cache');
delete_transient('adsd_new_rules_cache');
delete_site_transient('adsd_new_rules_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('adsd_new_cleanup_expired_rules');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'adsd_selection_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'adsd_selection_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'adsd_selection_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'adsd_selection_mode' ) );


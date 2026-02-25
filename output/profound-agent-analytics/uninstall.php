<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('agent_analytics_settings');
delete_site_option('agent_analytics_settings');
delete_option('agent_analytics_site_id');
delete_site_option('agent_analytics_site_id');
delete_option('agent_analytics_db_version');
delete_site_option('agent_analytics_db_version');
delete_option('agent_analytics_install_time');
delete_site_option('agent_analytics_install_time');
delete_option('agent_analytics_remove_data_on_uninstall');
delete_site_option('agent_analytics_remove_data_on_uninstall');
delete_option('agent_analytics_preserve_data_on_uninstall');
delete_site_option('agent_analytics_preserve_data_on_uninstall');
delete_option('agent_analytics_network_settings');
delete_site_option('agent_analytics_network_settings');

// Delete Transients
delete_transient('agent_analytics_sending_lock');
delete_site_transient('agent_analytics_sending_lock');
delete_transient('agent_analytics_circuit_breaker');
delete_site_transient('agent_analytics_circuit_breaker');
delete_transient('agent_analytics_last_send');
delete_site_transient('agent_analytics_last_send');
delete_transient('agent_analytics_last_error');
delete_site_transient('agent_analytics_last_error');

// Clear Cron Jobs
wp_clear_scheduled_hook('agent_analytics_send_logs');
wp_clear_scheduled_hook('agent_analytics_cleanup_queue');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'agent_analytics_dismissed_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'agent_analytics_dismissed_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'agent_analytics_dismissed_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'agent_analytics_dismissed_notice' ) );


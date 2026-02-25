<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('post_views_counter_settings_general');
delete_site_option('post_views_counter_settings_general');
delete_option('post_views_counter_settings_other');
delete_site_option('post_views_counter_settings_other');
delete_option('post_views_counter_settings_display');
delete_site_option('post_views_counter_settings_display');
delete_option('post_views_counter_pro_version');
delete_site_option('post_views_counter_pro_version');
delete_option('post_views_counter_version');
delete_site_option('post_views_counter_version');
delete_option('post_views_counter_settings_integrations');
delete_site_option('post_views_counter_settings_integrations');
delete_option('post_views_counter_activation_date');
delete_site_option('post_views_counter_activation_date');

// Delete Transients
delete_transient('post_views_counter_ip_cache');
delete_site_transient('post_views_counter_ip_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('pvc_reset_counts');
wp_clear_scheduled_hook('pvc_flush_cached_counts');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pvc_dashboard' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pvc_dashboard' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pvc_dashboard' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pvc_dashboard' ) );


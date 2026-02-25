<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpio_api_key');
delete_site_option('wpio_api_key');
delete_option('wpio_site_id');
delete_site_option('wpio_site_id');
delete_option('wpio_cdn_url');
delete_site_option('wpio_cdn_url');
delete_option('wpio_status');
delete_site_option('wpio_status');
delete_option('wpio_registered_domain');
delete_site_option('wpio_registered_domain');
delete_option('wpio_cache_version');
delete_site_option('wpio_cache_version');

// Delete Transients
delete_transient('wpio_activation_redirect');
delete_site_transient('wpio_activation_redirect');
delete_transient('wpio_usage_info');
delete_site_transient('wpio_usage_info');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpio_daily_status_check');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'wpio_dismissed_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'wpio_dismissed_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'wpio_dismissed_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'wpio_dismissed_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpio_dismissed_limit_reached' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpio_dismissed_limit_reached' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpio_dismissed_limit_reached' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpio_dismissed_limit_reached' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpio_dismissed_limit_warning' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpio_dismissed_limit_warning' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpio_dismissed_limit_warning' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpio_dismissed_limit_warning' ) );


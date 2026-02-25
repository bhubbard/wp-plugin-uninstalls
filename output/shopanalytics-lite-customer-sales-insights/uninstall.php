<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shopanalytics_enable_logging');
delete_site_option('shopanalytics_enable_logging');
delete_option('shopanalytics_enable_pro_previews');
delete_site_option('shopanalytics_enable_pro_previews');
delete_option('shopanalytics_light_charts');
delete_site_option('shopanalytics_light_charts');
delete_option('shopanalytics_log_retention_days');
delete_site_option('shopanalytics_log_retention_days');
delete_option('shopanalytics_lite_do_activation_redirect');
delete_site_option('shopanalytics_lite_do_activation_redirect');
delete_option('shopanalytics_lite_settings');
delete_site_option('shopanalytics_lite_settings');
delete_option('shopanalytics_lite_network_option');
delete_site_option('shopanalytics_lite_network_option');

// Clear Cron Jobs
wp_clear_scheduled_hook('shopanalytics_custom_daily_log_cleanup_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_country' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_country' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_country' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_country' ) );


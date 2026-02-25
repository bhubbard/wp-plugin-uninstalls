<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('trafficmanager_wc_last_import_result');
delete_site_option('trafficmanager_wc_last_import_result');
delete_option('woocommerce_trafficmanager-plugin_settings');
delete_site_option('woocommerce_trafficmanager-plugin_settings');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('trafficmanager_wc_fetch_promo_codes');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'tm_import' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'tm_import' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'tm_import' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'tm_import' ) );


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nitropack-minimumLogLevel');
delete_site_option('nitropack-minimumLogLevel');
delete_option('gd_system_last_cache_flush');
delete_site_option('gd_system_last_cache_flush');
delete_option('nitropack-autoCachePurge');
delete_site_option('nitropack-autoCachePurge');
delete_option('nitropack-cacheableObjectTypes');
delete_site_option('nitropack-cacheableObjectTypes');
delete_option('nitropack-bbCacheSyncPurge');
delete_site_option('nitropack-bbCacheSyncPurge');
delete_option('woo_multi_currency_params');
delete_site_option('woo_multi_currency_params');
delete_option('dlm_dp_downloading_page');
delete_site_option('dlm_dp_downloading_page');
delete_option('dlm_download_endpoint');
delete_site_option('dlm_download_endpoint');
delete_option('geot_settings');
delete_site_option('geot_settings');
delete_option('nitropack-onboardingPassed');
delete_site_option('nitropack-onboardingPassed');
delete_option('nitropack-canEditorClearCache');
delete_site_option('nitropack-canEditorClearCache');
delete_option('nitropack-distribution');
delete_site_option('nitropack-distribution');
delete_option('nitropack-enableCompression');
delete_site_option('nitropack-enableCompression');
delete_option('nitropack-webhookToken');
delete_site_option('nitropack-webhookToken');
delete_option('nitropack-dismissed-notices');
delete_site_option('nitropack-dismissed-notices');
delete_option('nitropack-nonCacheableObjectTypes');
delete_site_option('nitropack-nonCacheableObjectTypes');
delete_option('nitropack-warmup-sitemap');
delete_site_option('nitropack-warmup-sitemap');
delete_option('nitropack-activation-redirect');
delete_site_option('nitropack-activation-redirect');

// Delete Transients
delete_transient('nitropack_sale_product_dates');
delete_site_transient('nitropack_sale_product_dates');

// Clear Cron Jobs
wp_clear_scheduled_hook('nitropack_remove_old_logs');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_expiration-date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_expiration-date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_expiration-date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_expiration-date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'start_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'start_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'start_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'start_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'end_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'end_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'end_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'end_date' ) );


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_rest_cache_timeout');
delete_site_option('wp_rest_cache_timeout');
delete_option('wp_rest_cache_timeout_interval');
delete_site_option('wp_rest_cache_timeout_interval');
delete_option('wp_rest_cache_regenerate');
delete_site_option('wp_rest_cache_regenerate');
delete_option('wp_rest_cache_regenerate_interval');
delete_site_option('wp_rest_cache_regenerate_interval');
delete_option('wp_rest_cache_regenerate_number');
delete_site_option('wp_rest_cache_regenerate_number');
delete_option('wp_rest_cache_memcache_used');
delete_site_option('wp_rest_cache_memcache_used');
delete_option('wp_rest_cache_global_cacheable_request_headers');
delete_site_option('wp_rest_cache_global_cacheable_request_headers');
delete_option('wp_rest_cache_admin_notices');
delete_site_option('wp_rest_cache_admin_notices');
delete_option('wp_rest_cache_rest_prefix');
delete_site_option('wp_rest_cache_rest_prefix');
delete_option('wp_rest_cache_uncached_parameters');
delete_site_option('wp_rest_cache_uncached_parameters');
delete_option('wp_rest_cache_cacheable_request_headers');
delete_site_option('wp_rest_cache_cacheable_request_headers');
delete_option('wp_rest_cache_allowed_request_methods');
delete_site_option('wp_rest_cache_allowed_request_methods');
delete_option('wp_rest_cache_allowed_endpoints');
delete_site_option('wp_rest_cache_allowed_endpoints');
delete_option('wp_rest_cache_disallowed_endpoints');
delete_site_option('wp_rest_cache_disallowed_endpoints');
delete_option('wp_rest_cache_item_allowed_endpoints');
delete_site_option('wp_rest_cache_item_allowed_endpoints');
delete_option('wp_rest_cache_hit_recording');
delete_site_option('wp_rest_cache_hit_recording');
delete_option('wp_rest_cache_database_version');
delete_site_option('wp_rest_cache_database_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_rest_cache_regenerate_cron');
wp_clear_scheduled_hook('wp_rest_cache_cleanup_deleted_caches');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp_rest_cache_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp_rest_cache_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp_rest_cache_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp_rest_cache_dismissed_notices' ) );


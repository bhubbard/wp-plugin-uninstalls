<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ezcache_first_run');
delete_site_option('ezcache_first_run');
delete_option('ezcache_convert_images_to_webp_reprocess_queue');
delete_site_option('ezcache_convert_images_to_webp_reprocess_queue');
delete_option('ezcache_version');
delete_site_option('ezcache_version');

// Delete Transients
delete_transient('ezcache_activating');
delete_site_transient('ezcache_activating');
delete_transient('ezcache_deactivating');
delete_site_transient('ezcache_deactivating');
delete_transient('ezcache_repaired');
delete_site_transient('ezcache_repaired');
delete_transient('ezcache_https_2_support');
delete_site_transient('ezcache_https_2_support');

// Clear Cron Jobs
wp_clear_scheduled_hook('ezcache_clear_expired_cache');
wp_clear_scheduled_hook('ezcache_convert_images_to_webp_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ezcache_do_not_cache_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ezcache_do_not_cache_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ezcache_do_not_cache_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ezcache_do_not_cache_post' ) );


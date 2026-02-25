<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vhp_varnish_devmode');
delete_site_option('vhp_varnish_devmode');
delete_option('vhp_varnish_debug');
delete_site_option('vhp_varnish_debug');
delete_option('vhp_varnish_use_tags');
delete_site_option('vhp_varnish_use_tags');
delete_option('vhp_varnish_max_posts_before_all');
delete_site_option('vhp_varnish_max_posts_before_all');
delete_option('vhp_varnish_ip');
delete_site_option('vhp_varnish_ip');
delete_option('vhp_varnish_extra_purge_header_name');
delete_site_option('vhp_varnish_extra_purge_header_name');
delete_option('vhp_varnish_extra_purge_header_value');
delete_site_option('vhp_varnish_extra_purge_header_value');
delete_option('vhp_varnish_url');
delete_site_option('vhp_varnish_url');
delete_option('vhp_varnish_last_queue_run');
delete_site_option('vhp_varnish_last_queue_run');
delete_option('vhp_cache_test_post_id');
delete_site_option('vhp_cache_test_post_id');
delete_option('vhp_cache_test_marker');
delete_site_option('vhp_cache_test_marker');
delete_option('vhp_cache_test_new_marker');
delete_site_option('vhp_cache_test_new_marker');
delete_option('vhp_varnish_purge_queue');
delete_site_option('vhp_varnish_purge_queue');

// Clear Cron Jobs
wp_clear_scheduled_hook('vhp_process_purge_queue');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_vhp_cache_test' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_vhp_cache_test' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_vhp_cache_test' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_vhp_cache_test' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'vhp_dismissed_cacheability_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'vhp_dismissed_cacheability_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'vhp_dismissed_cacheability_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'vhp_dismissed_cacheability_notice' ) );


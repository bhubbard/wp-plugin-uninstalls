<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('semonto_secret_key');
delete_site_option('semonto_secret_key');
delete_option('semonto_enable_now_test');
delete_site_option('semonto_enable_now_test');
delete_option('semonto_warning_threshold_now');
delete_site_option('semonto_warning_threshold_now');
delete_option('semonto_warning_threshold_5m');
delete_site_option('semonto_warning_threshold_5m');
delete_option('semonto_warning_threshold_15m');
delete_site_option('semonto_warning_threshold_15m');
delete_option('semonto_error_threshold_now');
delete_site_option('semonto_error_threshold_now');
delete_option('semonto_error_threshold_5m');
delete_site_option('semonto_error_threshold_5m');
delete_option('semonto_error_threshold_15m');
delete_site_option('semonto_error_threshold_15m');
delete_option('semonto_enable_5m_test');
delete_site_option('semonto_enable_5m_test');
delete_option('semonto_enable_15m_test');
delete_site_option('semonto_enable_15m_test');
delete_option('semonto_enable_wpdb_test');
delete_site_option('semonto_enable_wpdb_test');
delete_option('semonto_error_threshold_wpdb');
delete_site_option('semonto_error_threshold_wpdb');
delete_option('semonto_warning_threshold_wpdb');
delete_site_option('semonto_warning_threshold_wpdb');
delete_option('semonto_enable_memory_usage_test');
delete_site_option('semonto_enable_memory_usage_test');
delete_option('semonto_warning_threshold_memory_usage');
delete_site_option('semonto_warning_threshold_memory_usage');
delete_option('semonto_error_threshold_memory_usage');
delete_site_option('semonto_error_threshold_memory_usage');
delete_option('semonto_enable_disk_space_test');
delete_site_option('semonto_enable_disk_space_test');
delete_option('semonto_config_disk_space');
delete_site_option('semonto_config_disk_space');
delete_option('semonto_enable_disk_space_inode_test');
delete_site_option('semonto_enable_disk_space_inode_test');
delete_option('semonto_config_disk_space_inode');
delete_site_option('semonto_config_disk_space_inode');
delete_option('semonto_enable_caching');
delete_site_option('semonto_enable_caching');
delete_option('semonto_cache_lifespan');
delete_site_option('semonto_cache_lifespan');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'semonto_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'semonto_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'semonto_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'semonto_notice_dismissed' ) );


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wtn_api_key');
delete_site_option('wtn_api_key');
delete_option('wtn_caching_time');
delete_site_option('wtn_caching_time');
delete_option('wtn_int_featured_content_settings');
delete_site_option('wtn_int_featured_content_settings');
delete_option('wtn_settings');
delete_site_option('wtn_settings');
delete_option('wtn_general_settings');
delete_site_option('wtn_general_settings');
delete_option('wtn_int_ticker_content_settings');
delete_site_option('wtn_int_ticker_content_settings');
delete_option('wtn_int_ticker_styles_settings');
delete_site_option('wtn_int_ticker_styles_settings');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');
delete_option('wtn_flush_rewrite_rules_flag');
delete_site_option('wtn_flush_rewrite_rules_flag');

// Delete Transients
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wtn_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wtn_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wtn_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wtn_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wtn_is_breaking' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wtn_is_breaking' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wtn_is_breaking' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wtn_is_breaking' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wtn_is_hero' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wtn_is_hero' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wtn_is_hero' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wtn_is_hero' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wtn_is_featured' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wtn_is_featured' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wtn_is_featured' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wtn_is_featured' ) );


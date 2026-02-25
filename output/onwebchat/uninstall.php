<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('onwebchat_plugin_option');
delete_site_option('onwebchat_plugin_option');
delete_option('onwebchat_plugin_option_api_code');
delete_site_option('onwebchat_plugin_option_api_code');
delete_option('onwebchat_plugin_option_pages_select');
delete_site_option('onwebchat_plugin_option_pages_select');
delete_option('onwebchat_plugin_option_show_pages');
delete_site_option('onwebchat_plugin_option_show_pages');
delete_option('onwebchat_plugin_option_hide_pages');
delete_site_option('onwebchat_plugin_option_hide_pages');
delete_option('onwebchat_plugin_option_user');
delete_site_option('onwebchat_plugin_option_user');
delete_option('onwebchat_wc_sync_enabled');
delete_site_option('onwebchat_wc_sync_enabled');
delete_option('onwebchat_wc_sync_mode');
delete_site_option('onwebchat_wc_sync_mode');
delete_option('onwebchat_wc_sync_include_price');
delete_site_option('onwebchat_wc_sync_include_price');
delete_option('onwebchat_wc_sync_secret');
delete_site_option('onwebchat_wc_sync_secret');
delete_option('onwebchat_wc_last_bulk_sync');
delete_site_option('onwebchat_wc_last_bulk_sync');
delete_option('onwebchat_wc_bulk_in_progress');
delete_site_option('onwebchat_wc_bulk_in_progress');
delete_option('onwebchat_wc_bulk_done');
delete_site_option('onwebchat_wc_bulk_done');
delete_option('onwebchat_wc_bulk_total');
delete_site_option('onwebchat_wc_bulk_total');
delete_option('onwebchat_wc_last_sync_start');
delete_site_option('onwebchat_wc_last_sync_start');
delete_option('onwebchat_wc_excluded_categories');
delete_site_option('onwebchat_wc_excluded_categories');
delete_option('onwebchat_wc_bulk_page');
delete_site_option('onwebchat_wc_bulk_page');
delete_option('onwebchat_plugin_option_hide');
delete_site_option('onwebchat_plugin_option_hide');

// Delete Transients
delete_transient('onwebchat_wc_auth_error');
delete_site_transient('onwebchat_wc_auth_error');

// Clear Cron Jobs
wp_clear_scheduled_hook('onwebchat_wc_bulk_sync_batch');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_onwebchat_sync_error' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_onwebchat_sync_error' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_onwebchat_sync_error' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_onwebchat_sync_error' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_onwebchat_last_sync' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_onwebchat_last_sync' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_onwebchat_last_sync' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_onwebchat_last_sync' ) );


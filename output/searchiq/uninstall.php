<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_currency_pos');
delete_site_option('woocommerce_currency_pos');
delete_option('_siq_num_indexed_posts');
delete_site_option('_siq_num_indexed_posts');
delete_option('siq_api_error_log_enabled');
delete_site_option('siq_api_error_log_enabled');
delete_option('_siq_admin_notices');
delete_site_option('_siq_admin_notices');
delete_option('_siq_indexed_posts');
delete_site_option('_siq_indexed_posts');
delete_option('siq_db_version');
delete_site_option('siq_db_version');
delete_option('_siq_plugin_version');
delete_site_option('_siq_plugin_version');
delete_option('_siq_hide_icon_notice');
delete_site_option('_siq_hide_icon_notice');
delete_option('_siq_hide_review_notice');
delete_site_option('_siq_hide_review_notice');

// Clear Cron Jobs
wp_clear_scheduled_hook('siq_delta_sync_cron');
wp_clear_scheduled_hook('siq_delta_sync_cron_stop');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_visibility' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_visibility' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_visibility' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_visibility' ) );


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('techfinder_options');
delete_site_option('techfinder_options');

// Delete Transients
delete_transient('techfinder_update_brands_cron_running');
delete_site_transient('techfinder_update_brands_cron_running');
delete_transient('techfinder_process_products_cron_running');
delete_site_transient('techfinder_process_products_cron_running');
delete_transient('techfinder_regenerate_products_cron_running');
delete_site_transient('techfinder_regenerate_products_cron_running');
delete_transient('techfinder_regenerate_without_image_products_cron_running');
delete_site_transient('techfinder_regenerate_without_image_products_cron_running');
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

// Clear Cron Jobs
wp_clear_scheduled_hook('techfinder_process_products_cron');
wp_clear_scheduled_hook('techfinder_update_brands_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'techfinder_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'techfinder_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'techfinder_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'techfinder_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'techfinder_compatible_with' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'techfinder_compatible_with' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'techfinder_compatible_with' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'techfinder_compatible_with' ) );


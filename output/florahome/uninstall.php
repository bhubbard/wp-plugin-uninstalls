<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fah_settings');
delete_site_option('fah_settings');
delete_option('fah_select_export_run');
delete_site_option('fah_select_export_run');
delete_option('fah_select_import_run');
delete_site_option('fah_select_import_run');
delete_option('fah_download_image_cron_run_time');
delete_site_option('fah_download_image_cron_run_time');
delete_option('fah_download_success_images');
delete_site_option('fah_download_success_images');
delete_option('fah_select_sync_run');
delete_site_option('fah_select_sync_run');
delete_option('fah_full_import_success');
delete_site_option('fah_full_import_success');
delete_option('fah_import_success_images');
delete_site_option('fah_import_success_images');
delete_option('fah_full_import_error');
delete_site_option('fah_full_import_error');
delete_option('fah_full_update_success');
delete_site_option('fah_full_update_success');
delete_option('FLoraathome_bulk_order_execution');
delete_site_option('FLoraathome_bulk_order_execution');
delete_option('fah_update_success_images');
delete_site_option('fah_update_success_images');

// Delete Transients
delete_transient('wc_attribute_taxonomies');
delete_site_transient('wc_attribute_taxonomies');

// Clear Cron Jobs
wp_clear_scheduled_hook('task_flora_image_import');
wp_clear_scheduled_hook('task_flora_product_update');
wp_clear_scheduled_hook('task_flora_product_sync');
wp_clear_scheduled_hook('task_flora_order_export');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'fah_orderExport' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'fah_orderExport' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'fah_orderExport' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'fah_orderExport' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pending_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pending_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pending_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pending_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_flora_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_flora_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_flora_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_flora_product' ) );


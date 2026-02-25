<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('revampcrm_woocommerce_version');
delete_site_option('revampcrm_woocommerce_version');
delete_option('revampcrm-woocommerce-resource-last-updated');
delete_site_option('revampcrm-woocommerce-resource-last-updated');
delete_option('revampcrm-woocommerce');
delete_site_option('revampcrm-woocommerce');
delete_option('revampcrm-woocommerce-store_id');
delete_site_option('revampcrm-woocommerce-store_id');
delete_option('revampcrm-woocommerce-sync.started_at');
delete_site_option('revampcrm-woocommerce-sync.started_at');
delete_option('revampcrm-woocommerce-sync.completed_at');
delete_site_option('revampcrm-woocommerce-sync.completed_at');
delete_option('revampcrm_woocommerce_plugin_do_activation_redirect');
delete_site_option('revampcrm_woocommerce_plugin_do_activation_redirect');
delete_option('revampcrm-woocommerce-sync.products.completed_at');
delete_site_option('revampcrm-woocommerce-sync.products.completed_at');
delete_option('revampcrm-woocommerce-sync.products.current_page');
delete_site_option('revampcrm-woocommerce-sync.products.current_page');
delete_option('revampcrm-woocommerce-sync.orders.prevent');
delete_site_option('revampcrm-woocommerce-sync.orders.prevent');
delete_option('revampcrm-woocommerce-sync.orders.completed_at');
delete_site_option('revampcrm-woocommerce-sync.orders.completed_at');
delete_option('revampcrm-woocommerce-sync.orders.current_page');
delete_site_option('revampcrm-woocommerce-sync.orders.current_page');
delete_option('revampcrm-woocommerce-sync.syncing');
delete_site_option('revampcrm-woocommerce-sync.syncing');
delete_option('revampcrm-woocommerce-errors.store_info');
delete_site_option('revampcrm-woocommerce-errors.store_info');
delete_option('revampcrm-woocommerce-validation.api.ping');
delete_site_option('revampcrm-woocommerce-validation.api.ping');
delete_option('revampcrm-woocommerce-cached-api-lists');
delete_site_option('revampcrm-woocommerce-cached-api-lists');
delete_option('revampcrm-woocommerce-cached-api-ping-check');
delete_site_option('revampcrm-woocommerce-cached-api-ping-check');
delete_option('revampcrm_woocommerce_db_revampcrm_carts');
delete_site_option('revampcrm_woocommerce_db_revampcrm_carts');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'revampcrm-woocommerce-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('http_worker_lock');
delete_site_transient('http_worker_lock');

// Clear Cron Jobs
wp_clear_scheduled_hook('revampcrm_sync_task_hook');
wp_clear_scheduled_hook('http_worker_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'revampcrm_woocommerce_is_subscribed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'revampcrm_woocommerce_is_subscribed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'revampcrm_woocommerce_is_subscribed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'revampcrm_woocommerce_is_subscribed' ) );


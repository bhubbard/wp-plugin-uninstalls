<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('flx_woo_version');
delete_site_option('flx_woo_version');
delete_option('flx_woo_settings');
delete_site_option('flx_woo_settings');
delete_option('flx_woo_last_render_time');
delete_site_option('flx_woo_last_render_time');
delete_option('flx_woo_allow_bypass');
delete_site_option('flx_woo_allow_bypass');
delete_option('flx_woo_render_stats_24h');
delete_site_option('flx_woo_render_stats_24h');
delete_option('woocommerce_currency_pos');
delete_site_option('woocommerce_currency_pos');
delete_option('woocommerce_notify_low_stock_amount');
delete_site_option('woocommerce_notify_low_stock_amount');
delete_option('woocommerce_min_amount');
delete_site_option('woocommerce_min_amount');

// Delete Transients
delete_transient('flx_woo_renderer_version');
delete_site_transient('flx_woo_renderer_version');
delete_transient('flx_woo_db_tables_verified');
delete_site_transient('flx_woo_db_tables_verified');

// Clear Cron Jobs
wp_clear_scheduled_hook('flx_woo_performance_test');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );


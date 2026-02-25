<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc4bp_pages_options');
delete_site_option('wc4bp_pages_options');
delete_option('wc4bp_options');
delete_site_option('wc4bp_options');
delete_option('wc4bp_options_delete');
delete_site_option('wc4bp_options_delete');
delete_option('wc4bp_options_notifications');
delete_site_option('wc4bp_options_notifications');
delete_option('woocommerce_shop_page_id');
delete_site_option('woocommerce_shop_page_id');
delete_option('woocommerce_cart_page_id');
delete_site_option('woocommerce_cart_page_id');
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');
delete_option('woocommerce_checkout_page_id');
delete_site_option('woocommerce_checkout_page_id');
delete_option('bp-pages');
delete_site_option('bp-pages');
delete_option('wc4bp_options_sync');
delete_site_option('wc4bp_options_sync');
delete_option('wc4bp_options_pages');
delete_site_option('wc4bp_options_pages');
delete_option('wc4bp_installed');
delete_site_option('wc4bp_installed');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('wc4bp_installed_date');
delete_site_option('wc4bp_installed_date');
delete_option('wc4bp_shipping_address_ids');
delete_site_option('wc4bp_shipping_address_ids');
delete_option('wc4bp_billing_address_ids');
delete_site_option('wc4bp_billing_address_ids');
delete_option('woocommerce_force_ssl_checkout');
delete_site_option('woocommerce_force_ssl_checkout');
delete_option('recently_activated');
delete_site_option('recently_activated');
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
delete_option('woocommerce_myaccount_orders_endpoint');
delete_site_option('woocommerce_myaccount_orders_endpoint');
delete_option('woocommerce_myaccount_downloads_endpoint');
delete_site_option('woocommerce_myaccount_downloads_endpoint');
delete_option('woocommerce_myaccount_edit_address_endpoint');
delete_site_option('woocommerce_myaccount_edit_address_endpoint');
delete_option('woocommerce_myaccount_payment_methods_endpoint');
delete_site_option('woocommerce_myaccount_payment_methods_endpoint');
delete_option('woocommerce_myaccount_edit_account_endpoint');
delete_site_option('woocommerce_myaccount_edit_account_endpoint');
delete_option('wc4bp_upgrade');
delete_site_option('wc4bp_upgrade');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wc4bp-review' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wc4bp-review' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wc4bp-review' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wc4bp-review' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wc4bp-review-later' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wc4bp-review-later' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wc4bp-review-later' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wc4bp-review-later' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'wc4bp_tgmpa_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'wc4bp_tgmpa_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'wc4bp_tgmpa_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'wc4bp_tgmpa_dismissed_notice_%' ) );


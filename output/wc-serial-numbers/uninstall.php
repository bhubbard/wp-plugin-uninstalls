<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_serial_numbers_revoke_keys');
delete_site_option('wc_serial_numbers_revoke_keys');
delete_option('wc_serial_numbers_hide_serial_number');
delete_site_option('wc_serial_numbers_hide_serial_number');
delete_option('wc_serial_numbers_dismissed_notices');
delete_site_option('wc_serial_numbers_dismissed_notices');
delete_option('wc_serial_numbers_enable_stock_notification');
delete_site_option('wc_serial_numbers_enable_stock_notification');
delete_option('wc_serial_numbers_stock_threshold');
delete_site_option('wc_serial_numbers_stock_threshold');
delete_option('wc_serial_numbers_notification_recipient');
delete_site_option('wc_serial_numbers_notification_recipient');
delete_option('wcsn_pkey');
delete_site_option('wcsn_pkey');
delete_option('wc_serial_numbers_install_date');
delete_site_option('wc_serial_numbers_install_date');
delete_option('woocommerce_serial_numbers_pro_pluginever_license');
delete_site_option('woocommerce_serial_numbers_pro_pluginever_license');
delete_option('woocommerceserialnumbers_install_time');
delete_site_option('woocommerceserialnumbers_install_time');
delete_option('wc_serial_numbers_autocomplete_order');
delete_site_option('wc_serial_numbers_autocomplete_order');
delete_option('wcsn_enable_pdf_invoices');
delete_site_option('wcsn_enable_pdf_invoices');
delete_option('wcsn_manage_stocks');
delete_site_option('wcsn_manage_stocks');
delete_option('wc_serial_numbers_disable_software_support');
delete_site_option('wc_serial_numbers_disable_software_support');
delete_option('wc_serial_numbers_reuse_serial_number');
delete_site_option('wc_serial_numbers_reuse_serial_number');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_notices' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Delete Transients
delete_transient('wcsn_products_stock_count');
delete_site_transient('wcsn_products_stock_count');
delete_transient('wc_serial_numbers_activated');
delete_site_transient('wc_serial_numbers_activated');
delete_transient('wc_serial_numbers_activation_redirect');
delete_site_transient('wc_serial_numbers_activation_redirect');

// Clear Cron Jobs
wp_clear_scheduled_hook('wc_serial_numbers_hourly_event');
wp_clear_scheduled_hook('wc_serial_numbers_daily_event');
wp_clear_scheduled_hook('wcsn_per_minute_event');
wp_clear_scheduled_hook('wcsn_daily_event');
wp_clear_scheduled_hook('wcsn_hourly_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_is_serial_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_is_serial_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_is_serial_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_is_serial_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_delivery_quantity' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_delivery_quantity' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_delivery_quantity' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_delivery_quantity' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_serial_key_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_serial_key_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_serial_key_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_serial_key_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_software_version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_software_version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_software_version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_software_version' ) );


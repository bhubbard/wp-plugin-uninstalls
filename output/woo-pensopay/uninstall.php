<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_pensopay_settings');
delete_site_option('woocommerce_pensopay_settings');
delete_option('woocommerce_thanks_page_id');
delete_site_option('woocommerce_thanks_page_id');
delete_option('woocommerce_cart_page_id');
delete_site_option('woocommerce_cart_page_id');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_turn_off_automatic_payments' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_price_decimal_sep');
delete_site_option('woocommerce_price_decimal_sep');
delete_option('woocommerce_price_thousand_sep');
delete_site_option('woocommerce_price_thousand_sep');
delete_option('woocommerce_pensopay_version');
delete_site_option('woocommerce_pensopay_version');
delete_option('woocommerce_pensopay_maintenance');
delete_site_option('woocommerce_pensopay_maintenance');
delete_option('woocommerce_email_footer_text');
delete_site_option('woocommerce_email_footer_text');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wcpp_transaction_%', '_site_transient_wcpp_transaction_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('_wcpp_admin_notices');
delete_site_transient('_wcpp_admin_notices');
delete_transient('_wcpp_admin_runtime_errors');
delete_site_transient('_wcpp_admin_runtime_errors');

// Clear Cron Jobs
wp_clear_scheduled_hook('pensopay_virtualpayments_update');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_transaction_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_transaction_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_transaction_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_transaction_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'TRANSACTION_ID' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'TRANSACTION_ID' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'TRANSACTION_ID' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'TRANSACTION_ID' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'success' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'success' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'success' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'success' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'errors' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'errors' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'errors' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'errors' ) );


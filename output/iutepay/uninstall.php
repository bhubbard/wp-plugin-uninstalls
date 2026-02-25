<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('iute_notice');
delete_site_option('iute_notice');
delete_option('woocommerce_iutepay_settings');
delete_site_option('woocommerce_iutepay_settings');
delete_option('enabled');
delete_site_option('enabled');
delete_option('description');
delete_site_option('description');
delete_option('showPromoOnCategoryPage');
delete_site_option('showPromoOnCategoryPage');
delete_option('enableWebhook');
delete_site_option('enableWebhook');
delete_option('testmode');
delete_site_option('testmode');
delete_option('test_iute_api_key');
delete_site_option('test_iute_api_key');
delete_option('test_iute_admin_key');
delete_site_option('test_iute_admin_key');
delete_option('iute_api_key');
delete_site_option('iute_api_key');
delete_option('iute_admin_key');
delete_site_option('iute_admin_key');
delete_option('country');
delete_site_option('country');
delete_option('emailNotificationAboutNewLoanApplication');
delete_site_option('emailNotificationAboutNewLoanApplication');
delete_option('emailNotificationAboutLoanApplicationStatusChange');
delete_site_option('emailNotificationAboutLoanApplicationStatusChange');
delete_option('woocommerce_cart_redirect_after_add');
delete_site_option('woocommerce_cart_redirect_after_add');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sku' ) );


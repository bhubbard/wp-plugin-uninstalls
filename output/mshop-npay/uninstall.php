<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mshop-naverpay-status');
delete_site_option('mshop-naverpay-status');
delete_option('mshop-naverpay-except-category');
delete_site_option('mshop-naverpay-except-category');
delete_option('mnp-force-image-url-to-http');
delete_site_option('mnp-force-image-url-to-http');
delete_option('mnp_zipcode');
delete_site_option('mnp_zipcode');
delete_option('mnp_address1');
delete_site_option('mnp_address1');
delete_option('mnp_address2');
delete_site_option('mnp_address2');
delete_option('mnp_sellername');
delete_site_option('mnp_sellername');
delete_option('mnp_contact1');
delete_site_option('mnp_contact1');
delete_option('mnp_contact2');
delete_site_option('mnp_contact2');
delete_option('mnp-npay-script');
delete_site_option('mnp-npay-script');
delete_option('mnp-cart-page-transition-mode');
delete_site_option('mnp-cart-page-transition-mode');
delete_option('mnp-wrapper-selector');
delete_site_option('mnp-wrapper-selector');
delete_option('mnp-simple-class');
delete_site_option('mnp-simple-class');
delete_option('mnp-variable-class');
delete_site_option('mnp-variable-class');
delete_option('mnp-grouped-class');
delete_site_option('mnp-grouped-class');
delete_option('mnp-product-page-transition-mode');
delete_site_option('mnp-product-page-transition-mode');
delete_option('mnp-use-submit-handler');
delete_site_option('mnp-use-submit-handler');
delete_option('mnp-use-cart-management');
delete_site_option('mnp-use-cart-management');
delete_option('mnp-concat-review-title');
delete_site_option('mnp-concat-review-title');
delete_option('mnp_facebook_app_id');
delete_site_option('mnp_facebook_app_id');
delete_option('mnp_facebook_app_secret');
delete_site_option('mnp_facebook_app_secret');
delete_option('mnp_facebook_access_token');
delete_site_option('mnp_facebook_access_token');
delete_option('mnp_facebook_pixel_id');
delete_site_option('mnp_facebook_pixel_id');
delete_option('mnp_facebook_test_event');
delete_site_option('mnp_facebook_test_event');
delete_option('mnp_facebook_test_event_code');
delete_site_option('mnp_facebook_test_event_code');
delete_option('mnp_use_facebook_pixel');
delete_site_option('mnp_use_facebook_pixel');
delete_option('mnp-enable-logger');
delete_site_option('mnp-enable-logger');
delete_option('mshop-naverpay-operation-mode');
delete_site_option('mshop-naverpay-operation-mode');
delete_option('mshop-naverpay-api-key');
delete_site_option('mshop-naverpay-api-key');
delete_option('mshop-naverpay-merchant-id');
delete_site_option('mshop-naverpay-merchant-id');
delete_option('mshop-naverpay-auth-key');
delete_site_option('mshop-naverpay-auth-key');
delete_option('mshop-naverpay-button-auth-key');
delete_site_option('mshop-naverpay-button-auth-key');
delete_option('mshop-naverpay-common-auth-key');
delete_site_option('mshop-naverpay-common-auth-key');
delete_option('mshop-naverpay-test-user-id');
delete_site_option('mshop-naverpay-test-user-id');
delete_option('mshop-naverpay-button-type-pc');
delete_site_option('mshop-naverpay-button-type-pc');
delete_option('mshop-naverpay-button-type-mobile');
delete_site_option('mshop-naverpay-button-type-mobile');
delete_option('mshop-naverpay-button-color-pc');
delete_site_option('mshop-naverpay-button-color-pc');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'mshop-naverpay-button-count-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('mshop-naverpay-sync-review');
delete_site_option('mshop-naverpay-sync-review');
delete_option('mshop-naverpay-sync-normal-review');
delete_site_option('mshop-naverpay-sync-normal-review');
delete_option('mshop-naverpay-sync-premium-review');
delete_site_option('mshop-naverpay-sync-premium-review');
delete_option('mnp-use-wcs');
delete_site_option('mnp-use-wcs');
delete_option('mshop-naverpay-use-additional-fee');
delete_site_option('mshop-naverpay-use-additional-fee');
delete_option('mshop-naverpay-additional-fee-mode');
delete_site_option('mshop-naverpay-additional-fee-mode');
delete_option('mshop-naverpay-additional-fee-region');
delete_site_option('mshop-naverpay-additional-fee-region');
delete_option('mshop-naverpay-additional-fee-region-2');
delete_site_option('mshop-naverpay-additional-fee-region-2');
delete_option('mshop-naverpay-additional-fee-region-3');
delete_site_option('mshop-naverpay-additional-fee-region-3');
delete_option('mnp-use-partial-refunded-order-status');
delete_site_option('mnp-use-partial-refunded-order-status');
delete_option('mnp-save-billing-address');
delete_site_option('mnp-save-billing-address');
delete_option('mnp-save-shipping-info');
delete_site_option('mnp-save-shipping-info');
delete_option('mshop-naverpay-shipping-fee-type');
delete_site_option('mshop-naverpay-shipping-fee-type');
delete_option('mshop-naverpay-shipping-minimum-amount');
delete_site_option('mshop-naverpay-shipping-minimum-amount');
delete_option('mshop-naverpay-shipping-flat-rate-amount');
delete_site_option('mshop-naverpay-shipping-flat-rate-amount');
delete_option('mnp_sheet_payment_type');
delete_site_option('mnp_sheet_payment_type');
delete_option('mnp_order_status_after_shipping');
delete_site_option('mnp_order_status_after_shipping');
delete_option('mnp_sheet_fields');
delete_site_option('mnp_sheet_fields');
delete_option('mnp_sheet_order_field_type');
delete_site_option('mnp_sheet_order_field_type');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'mshop-naverpay-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_ship_to_countries');
delete_site_option('woocommerce_ship_to_countries');
delete_option('mshop-naverpay-button-product');
delete_site_option('mshop-naverpay-button-product');
delete_option('mshop-naverpay-button-cart');
delete_site_option('mshop-naverpay-button-cart');
delete_option('mnp-enable-earn-point');
delete_site_option('mnp-enable-earn-point');
delete_option('mnp-enable-earn-recommender-point');
delete_site_option('mnp-enable-earn-recommender-point');
delete_option('mnp-block-sms');
delete_site_option('mnp-block-sms');
delete_option('mnp-culture-benefit');
delete_site_option('mnp-culture-benefit');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_mnp_%', '_site_transient_mnp_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_mnp_coupons_%', '_site_transient_mnp_coupons_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('naverpay_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_woocommerce_persistent_cart_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_woocommerce_persistent_cart_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_woocommerce_persistent_cart_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_woocommerce_persistent_cart_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'naverpay_purchase_review_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'naverpay_purchase_review_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'naverpay_purchase_review_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'naverpay_purchase_review_id' ) );


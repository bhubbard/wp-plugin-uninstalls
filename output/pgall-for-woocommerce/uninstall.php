<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'pafw-gw-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('pafw-smart-review-placeholder');
delete_site_option('pafw-smart-review-placeholder');
delete_option('woocommerce_enable_reviews');
delete_site_option('woocommerce_enable_reviews');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-agree-to-tac' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'pafw_mshop_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('pafw-subscription-allow-change-date');
delete_site_option('pafw-subscription-allow-change-date');
delete_option('pafw-gw-support-cancel-guest-order');
delete_site_option('pafw-gw-support-cancel-guest-order');
delete_option('pafw-gw-support-cancel-unpaid-order');
delete_site_option('pafw-gw-support-cancel-unpaid-order');
delete_option('pafw-gw-cancel-unpaid-order-days');
delete_site_option('pafw-gw-cancel-unpaid-order-days');
delete_option('pafw_use_bacs_receipt');
delete_site_option('pafw_use_bacs_receipt');
delete_option('pafw_bacs_receipt_issue_statuses');
delete_site_option('pafw_bacs_receipt_issue_statuses');
delete_option('pafw_bacs_receipt_cancel_statuses');
delete_site_option('pafw_bacs_receipt_cancel_statuses');
delete_option('pafw-gw-support-exchange');
delete_site_option('pafw-gw-support-exchange');
delete_option('pafw-gw-support-return');
delete_site_option('pafw-gw-support-return');
delete_option('pafw-gw-ex-skip-virtual');
delete_site_option('pafw-gw-ex-skip-virtual');
delete_option('pafw-gw-ex-terms');
delete_site_option('pafw-gw-ex-terms');
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');
delete_option('pafw_db_version');
delete_site_option('pafw_db_version');
delete_option('pafw-order-status-by-product');
delete_site_option('pafw-order-status-by-product');
delete_option('pafw-order-status-by-category');
delete_site_option('pafw-order-status-by-category');
delete_option('pafw-order-status-by-attributes');
delete_site_option('pafw-order-status-by-attributes');
delete_option('pafw-auto-transition-by-term');
delete_site_option('pafw-auto-transition-by-term');
delete_option('pafw-gw-order_status_after_payment_for_virtual');
delete_site_option('pafw-gw-order_status_after_payment_for_virtual');
delete_option('woocommerce_hold_stock_minutes');
delete_site_option('woocommerce_hold_stock_minutes');
delete_option('woocommerce_manage_stock');
delete_site_option('woocommerce_manage_stock');
delete_option('pafw-use-woocommerce-blocks');
delete_site_option('pafw-use-woocommerce-blocks');
delete_option('pafw-payment-method-by-role');
delete_site_option('pafw-payment-method-by-role');
delete_option('pafw-payment-method-by-product');
delete_site_option('pafw-payment-method-by-product');
delete_option('pafw-payment-method-by-category');
delete_site_option('pafw-payment-method-by-category');
delete_option('pafw-payment-method-by-attributes');
delete_site_option('pafw-payment-method-by-attributes');
delete_option('pafw-payment-method-by-language');
delete_site_option('pafw-payment-method-by-language');
delete_option('pafw-payment-method-by-amount');
delete_site_option('pafw-payment-method-by-amount');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_multiple_purchase' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('pafw-renewal-failed-period');
delete_site_option('pafw-renewal-failed-period');
delete_option('pafw-renewal-failed-notification-sms-template');
delete_site_option('pafw-renewal-failed-notification-sms-template');
delete_option('mssms_use_shipping_info');
delete_site_option('mssms_use_shipping_info');
delete_option('mssms_rep_send_no');
delete_site_option('mssms_rep_send_no');
delete_option('pafw-renewal-failed-notification-alimtalk-template');
delete_site_option('pafw-renewal-failed-notification-alimtalk-template');
delete_option('pafw-use-renewal-failed-notification');
delete_site_option('pafw-use-renewal-failed-notification');
delete_option('pafw-renewal-failed-notification-method');
delete_site_option('pafw-renewal-failed-notification-method');
delete_option('pafw-smart-review-rate');
delete_site_option('pafw-smart-review-rate');
delete_option('pafw-use-smart-review');
delete_site_option('pafw-use-smart-review');
delete_option('woocommerce_calc_taxes');
delete_site_option('woocommerce_calc_taxes');
delete_option('woocommerce_prices_include_tax');
delete_site_option('woocommerce_prices_include_tax');
delete_option('pafw_bacs_receipt_reg_number');
delete_site_option('pafw_bacs_receipt_reg_number');
delete_option('pafw_mshop_lguplus');
delete_site_option('pafw_mshop_lguplus');
delete_option('pafw_mshop_inicis');
delete_site_option('pafw_mshop_inicis');
delete_option('pafw_mshop_kakaopay');
delete_site_option('pafw_mshop_kakaopay');
delete_option('pafw_mshop_kcp');
delete_site_option('pafw_mshop_kcp');
delete_option('pafw_mshop_kicc');
delete_site_option('pafw_mshop_kicc');
delete_option('pafw_mshop_nicepay');
delete_site_option('pafw_mshop_nicepay');
delete_option('pafw_mshop_payco');
delete_site_option('pafw_mshop_payco');
delete_option('pafw_mshop_settlebank');
delete_site_option('pafw_mshop_settlebank');
delete_option('pafw_mshop_settlepg');
delete_site_option('pafw_mshop_settlepg');
delete_option('pafw_mshop_settlevbank');
delete_site_option('pafw_mshop_settlevbank');
delete_option('pafw_mshop_tosspayments');
delete_site_option('pafw_mshop_tosspayments');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'pafw_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_ship_to_destination');
delete_site_option('woocommerce_ship_to_destination');
delete_option('pafw-gw-possible_refund_status_for_mypage');
delete_site_option('pafw-gw-possible_refund_status_for_mypage');
delete_option('pafw-gw-order_status_after_payment');
delete_site_option('pafw-gw-order_status_after_payment');
delete_option('woocommerce_force_ssl_checkout');
delete_site_option('woocommerce_force_ssl_checkout');
delete_option('pafw-subscription-force-renewal-time');
delete_site_option('pafw-subscription-force-renewal-time');
delete_option('pafw-subscription-renewal-time-begin');
delete_site_option('pafw-subscription-renewal-time-begin');
delete_option('pafw-subscription-renewal-time-end');
delete_site_option('pafw-subscription-renewal-time-end');
delete_option('pafw-smart-review-template');
delete_site_option('pafw-smart-review-template');
delete_option('pafw-script-footer');
delete_site_option('pafw-script-footer');
delete_option('pafw-order-pay-form-selector');
delete_site_option('pafw-order-pay-form-selector');
delete_option('pafw-checkout-form-selector');
delete_site_option('pafw-checkout-form-selector');
delete_option('woocommerce_enable_order_comments');
delete_site_option('woocommerce_enable_order_comments');
delete_option('pafw-user-can-edit-comment');
delete_site_option('pafw-user-can-edit-comment');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%-notices', '_site_transient_%-notices' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_pafw_redirect_url_%', '_site_transient_pafw_redirect_url_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('pafw_installing');
delete_site_transient('pafw_installing');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_pafw_renewal_failed_key_%', '_site_transient_pafw_renewal_failed_key_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient__pafw_%', '_site_transient__pafw_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('pafw_cancel_unpaid_order_hook');
wp_clear_scheduled_hook('pafw_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_pafw_bacs_receipt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_pafw_bacs_receipt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_pafw_bacs_receipt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_pafw_bacs_receipt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_pafw_bacs_receipt_usage' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_pafw_bacs_receipt_usage' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_pafw_bacs_receipt_usage' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_pafw_bacs_receipt_usage' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_pafw_bacs_receipt_issue_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_pafw_bacs_receipt_issue_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_pafw_bacs_receipt_issue_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_pafw_bacs_receipt_issue_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_pafw_bacs_receipt_reg_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_pafw_bacs_receipt_reg_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_pafw_bacs_receipt_reg_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_pafw_bacs_receipt_reg_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'verified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'verified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'verified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'verified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_mshop_acceptance_of_terms' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_mshop_acceptance_of_terms' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_mshop_acceptance_of_terms' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_mshop_acceptance_of_terms' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pafw_version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pafw_version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pafw_version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pafw_version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_phone' ) );


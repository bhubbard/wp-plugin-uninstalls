<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');
delete_option('woocommerce_myaccount_payment_methods_endpoint');
delete_site_option('woocommerce_myaccount_payment_methods_endpoint');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
delete_option('tbk_review_notice_showed');
delete_site_option('tbk_review_notice_showed');
delete_option('transbank_webpay_oneclick_rest_showed_welcome_message');
delete_site_option('transbank_webpay_oneclick_rest_showed_welcome_message');
delete_option('transbank_webpay_rest_showed_welcome_message');
delete_site_option('transbank_webpay_rest_showed_welcome_message');


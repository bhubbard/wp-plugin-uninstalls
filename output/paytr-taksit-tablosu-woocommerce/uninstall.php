<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_paytrtaksit_content_title');
delete_site_option('woocommerce_paytrtaksit_content_title');
delete_option('woocommerce_paytrtaksit_description_top');
delete_site_option('woocommerce_paytrtaksit_description_top');
delete_option('woocommerce_paytrtaksit_description_bottom');
delete_site_option('woocommerce_paytrtaksit_description_bottom');
delete_option('woocommerce_paytrtaksit_tax_included');
delete_site_option('woocommerce_paytrtaksit_tax_included');
delete_option('woocommerce_paytrtaksit_merchant_id');
delete_site_option('woocommerce_paytrtaksit_merchant_id');
delete_option('woocommerce_paytrtaksit_token');
delete_site_option('woocommerce_paytrtaksit_token');
delete_option('woocommerce_paytrtaksit_max_installment');
delete_site_option('woocommerce_paytrtaksit_max_installment');
delete_option('woocommerce_paytrtaksit_extra_installment');
delete_site_option('woocommerce_paytrtaksit_extra_installment');
delete_option('woocommerce_paytrtaksit_product_tab_title');
delete_site_option('woocommerce_paytrtaksit_product_tab_title');
delete_option('woocommerce_paytrtaksit_settings');
delete_site_option('woocommerce_paytrtaksit_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'woocommerce_paytrtaksit_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}


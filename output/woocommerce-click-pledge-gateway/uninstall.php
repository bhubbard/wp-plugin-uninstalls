<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_clickandpledge_paymentsettings');
delete_site_option('woocommerce_clickandpledge_paymentsettings');
delete_option('woocommerce_clickandpledge_recurring');
delete_site_option('woocommerce_clickandpledge_recurring');
delete_option('woocommerce_clickandpledge_additionalfee');
delete_site_option('woocommerce_clickandpledge_additionalfee');
delete_option('woocommerce_tax_display_cart');
delete_site_option('woocommerce_tax_display_cart');
delete_option('woocommerce_clickandpledge_zeropaymentsettings');
delete_site_option('woocommerce_clickandpledge_zeropaymentsettings');
delete_option('woocommerce_clickandpledge_acceptedcreditcards');
delete_site_option('woocommerce_clickandpledge_acceptedcreditcards');
delete_option('woocommerce_force_ssl_checkout');
delete_site_option('woocommerce_force_ssl_checkout');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');


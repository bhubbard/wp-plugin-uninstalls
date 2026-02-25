<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_WC_Gateway_Payid19');
delete_site_option('woocommerce_WC_Gateway_Payid19');
delete_option('woocommerce_WC_Gateway_Payid19_settings');
delete_site_option('woocommerce_WC_Gateway_Payid19_settings');


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_lco_settings');
delete_site_option('woocommerce_lco_settings');
delete_option('woocommerce_ledyer_payments_settings');
delete_site_option('woocommerce_ledyer_payments_settings');
delete_option('lom_settings');
delete_site_option('lom_settings');

// Delete Transients
delete_transient('ledyer_token');
delete_site_transient('ledyer_token');


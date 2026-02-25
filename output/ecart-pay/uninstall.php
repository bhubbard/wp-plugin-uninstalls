<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_ecartpay_settings');
delete_site_option('woocommerce_ecartpay_settings');

// Delete Transients
delete_transient('ecartpay_token');
delete_site_transient('ecartpay_token');


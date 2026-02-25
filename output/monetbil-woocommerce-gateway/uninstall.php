<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_monetbil_settings');
delete_site_option('woocommerce_monetbil_settings');
delete_option('MONETBIL_MERCHANT_NAME');
delete_site_option('MONETBIL_MERCHANT_NAME');
delete_option('MONETBIL_MERCHANT_EMAIL');
delete_site_option('MONETBIL_MERCHANT_EMAIL');
delete_option('MONETBIL_SERVICE_NAME');
delete_site_option('MONETBIL_SERVICE_NAME');


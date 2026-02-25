<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_iu_paymenths_client_secret');
delete_site_option('woocommerce_iu_paymenths_client_secret');
delete_option('woocommerce_iu_paymenths_settings');
delete_site_option('woocommerce_iu_paymenths_settings');


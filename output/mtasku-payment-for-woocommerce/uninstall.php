<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eabi_telia_mtasku_test_allowed');
delete_site_option('eabi_telia_mtasku_test_allowed');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');


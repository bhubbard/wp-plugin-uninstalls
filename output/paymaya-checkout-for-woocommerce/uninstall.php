<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_paymaya_settings');
delete_site_option('woocommerce_paymaya_settings');
delete_option('cynder_paymaya_version');
delete_site_option('cynder_paymaya_version');


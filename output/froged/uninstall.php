<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('froged_woo_options');
delete_site_option('froged_woo_options');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');


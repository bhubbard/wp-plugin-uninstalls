<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pht_options');
delete_site_option('pht_options');
delete_option('woocommerce_checkout_page_id');
delete_site_option('woocommerce_checkout_page_id');


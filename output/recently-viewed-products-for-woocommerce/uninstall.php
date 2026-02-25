<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rvpw_woocommerce_recently_viewed_products_option_name');
delete_site_option('rvpw_woocommerce_recently_viewed_products_option_name');


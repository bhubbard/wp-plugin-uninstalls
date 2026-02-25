<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gs-product');
delete_site_option('gs-product');
delete_option('gs-general');
delete_site_option('gs-general');
delete_option('gs-cart');
delete_site_option('gs-cart');
delete_option('gs-cart-offset');
delete_site_option('gs-cart-offset');
delete_option('gs-counter');
delete_site_option('gs-counter');
delete_option('gs-brand-offset');
delete_site_option('gs-brand-offset');
delete_option('gs-customer-impact');
delete_site_option('gs-customer-impact');
delete_option('gs-pdp-offset');
delete_site_option('gs-pdp-offset');
delete_option('option_2');
delete_site_option('option_2');


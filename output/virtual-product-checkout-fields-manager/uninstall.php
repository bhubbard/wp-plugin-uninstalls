<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wccfm_simple_product_checkout_fields');
delete_site_option('wccfm_simple_product_checkout_fields');


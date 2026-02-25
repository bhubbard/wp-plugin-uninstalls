<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wchc_hide_products_from_cat');
delete_site_option('wchc_hide_products_from_cat');
delete_option('wchc_hide_product_cats');
delete_site_option('wchc_hide_product_cats');


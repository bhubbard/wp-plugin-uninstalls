<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('one_page_checkout_enabled');
delete_site_option('one_page_checkout_enabled');
delete_option('one_page_checkout_position');
delete_site_option('one_page_checkout_position');
delete_option('one_page_checkout_addtocart_text');
delete_site_option('one_page_checkout_addtocart_text');
delete_option('one_page_checkout_placeorder_text');
delete_site_option('one_page_checkout_placeorder_text');
delete_option('one_page_checkout_ordernotes_text');
delete_site_option('one_page_checkout_ordernotes_text');


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('product_list_url');
delete_site_option('product_list_url');
delete_option('shopping_cart_url');
delete_site_option('shopping_cart_url');
delete_option('transact_url');
delete_site_option('transact_url');
delete_option('user_account_url');
delete_site_option('user_account_url');


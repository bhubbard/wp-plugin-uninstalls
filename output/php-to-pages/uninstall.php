<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('php_on_pages_version');
delete_site_option('php_on_pages_version');
delete_option('php_on_pages_enabled_post_types');
delete_site_option('php_on_pages_enabled_post_types');
delete_option('php_on_pages_wc_shop');
delete_site_option('php_on_pages_wc_shop');
delete_option('php_on_pages_wc_cart');
delete_site_option('php_on_pages_wc_cart');
delete_option('php_on_pages_wc_checkout');
delete_site_option('php_on_pages_wc_checkout');
delete_option('php_on_pages_remove_trailing_slash');
delete_site_option('php_on_pages_remove_trailing_slash');


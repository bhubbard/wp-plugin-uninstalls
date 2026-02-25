<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('quickswish_do_activation_redirect');
delete_site_option('quickswish_do_activation_redirect');
delete_option('woocommerce_cart_redirect_after_add');
delete_site_option('woocommerce_cart_redirect_after_add');
delete_option('quickswish_installed');
delete_site_option('quickswish_installed');
delete_option('quickswish_version');
delete_site_option('quickswish_version');


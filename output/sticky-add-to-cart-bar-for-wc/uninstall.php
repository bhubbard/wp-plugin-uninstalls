<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dismissed-wsc-notice-date');
delete_site_option('dismissed-wsc-notice-date');
delete_option('dismissed-wsc-notice');
delete_site_option('dismissed-wsc-notice');
delete_option('woo_sticky_cart');
delete_site_option('woo_sticky_cart');


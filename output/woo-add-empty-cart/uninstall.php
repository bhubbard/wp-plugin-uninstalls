<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('before_empty_cart_button');
delete_site_option('before_empty_cart_button');
delete_option('after_empty_cart_button');
delete_site_option('after_empty_cart_button');


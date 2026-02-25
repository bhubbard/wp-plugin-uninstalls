<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_deposit_hide_in_loop');
delete_site_option('wc_deposit_hide_in_loop');
delete_option('wc_deposit_hide_in_cart');
delete_site_option('wc_deposit_hide_in_cart');


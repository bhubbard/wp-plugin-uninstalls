<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_bkash_accounts');
delete_site_option('woocommerce_bkash_accounts');
delete_option('woocommerce_dbblmb_accounts');
delete_site_option('woocommerce_dbblmb_accounts');


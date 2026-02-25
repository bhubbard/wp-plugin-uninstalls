<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_sendpress_list_id');
delete_site_option('woocommerce_sendpress_list_id');
delete_option('woocommerce_sendpress_enable');
delete_site_option('woocommerce_sendpress_enable');


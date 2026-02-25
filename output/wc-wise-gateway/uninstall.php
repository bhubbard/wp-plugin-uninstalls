<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_ew_wise_settings');
delete_site_option('woocommerce_ew_wise_settings');
delete_option('woocommerce_ew_wise_accounts');
delete_site_option('woocommerce_ew_wise_accounts');


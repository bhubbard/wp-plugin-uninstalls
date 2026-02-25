<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pemanager_settings');
delete_site_option('pemanager_settings');
delete_option('woocommerce_paystack_settings');
delete_site_option('woocommerce_paystack_settings');


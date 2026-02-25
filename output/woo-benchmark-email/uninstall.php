<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bmew_sister_dismissed');
delete_site_option('bmew_sister_dismissed');
delete_option('bmew_key');
delete_site_option('bmew_key');
delete_option('bmew_usage_disable');
delete_site_option('bmew_usage_disable');
delete_option('bmew_debug');
delete_site_option('bmew_debug');
delete_option('bmew_checkout_reorder');
delete_site_option('bmew_checkout_reorder');
delete_option('bmew_checkout_optin_label');
delete_site_option('bmew_checkout_optin_label');
delete_option('bmew_skip_cart');
delete_site_option('bmew_skip_cart');


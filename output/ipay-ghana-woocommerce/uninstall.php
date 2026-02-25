<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_force_ssl_checkout');
delete_site_option('woocommerce_force_ssl_checkout');
delete_option('success-url');
delete_site_option('success-url');
delete_option('merchant-key');
delete_site_option('merchant-key');
delete_option('cancelled-url');
delete_site_option('cancelled-url');
delete_option('source');
delete_site_option('source');
delete_option('extra_project_name');
delete_site_option('extra_project_name');


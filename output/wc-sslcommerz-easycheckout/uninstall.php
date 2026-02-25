<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sslcommerz_easy_version');
delete_site_option('sslcommerz_easy_version');
delete_option('woocommerce_sslcommerz_settings');
delete_site_option('woocommerce_sslcommerz_settings');


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_google_analytics__api_secret');
delete_site_option('woocommerce_google_analytics__api_secret');
delete_option('woocommerce_google_analytics__measurement_id');
delete_site_option('woocommerce_google_analytics__measurement_id');
delete_option('woocommerce_google_analytics__use_google_tag');
delete_site_option('woocommerce_google_analytics__use_google_tag');


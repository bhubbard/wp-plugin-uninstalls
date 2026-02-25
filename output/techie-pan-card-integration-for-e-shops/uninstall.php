<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_pan_api_url');
delete_site_option('wc_pan_api_url');
delete_option('wc_pan_api_key');
delete_site_option('wc_pan_api_key');
delete_option('wc_pan_min_cart_total');
delete_site_option('wc_pan_min_cart_total');
delete_option('wc_pan_custom_css');
delete_site_option('wc_pan_custom_css');
delete_option('wc_pan_shortcode_name');
delete_site_option('wc_pan_shortcode_name');


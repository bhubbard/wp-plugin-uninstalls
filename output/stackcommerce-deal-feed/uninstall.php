<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stackCommerceWidget_settings');
delete_site_option('stackCommerceWidget_settings');
delete_option('stackCommerceWidget_general_options');
delete_site_option('stackCommerceWidget_general_options');
delete_option('stackCommerce_shortcode');
delete_site_option('stackCommerce_shortcode');


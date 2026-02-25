<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_ga_id');
delete_site_option('woocommerce_ga_id');
delete_option('woocommerce_ga_support_display_advertising');
delete_site_option('woocommerce_ga_support_display_advertising');
delete_option('woocommerce_ga_ecommerce_tracking_enabled');
delete_site_option('woocommerce_ga_ecommerce_tracking_enabled');
delete_option('woocommerce_google_analytics_pro_notice_shown');
delete_site_option('woocommerce_google_analytics_pro_notice_shown');


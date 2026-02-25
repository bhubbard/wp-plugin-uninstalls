<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_wc_skroutz_analytics_settings');
delete_site_option('woocommerce_wc_skroutz_analytics_settings');
delete_option('widget_wc_skroutz_analytics_product_reviews_inline_widget');
delete_site_option('widget_wc_skroutz_analytics_product_reviews_inline_widget');
delete_option('widget_wc_skroutz_analytics_product_reviews_extended_widget');
delete_site_option('widget_wc_skroutz_analytics_product_reviews_extended_widget');


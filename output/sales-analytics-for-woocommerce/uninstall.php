<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('_wcml_settings');
delete_site_option('_wcml_settings');
delete_option('salesafw_analytics_show_walkthrough');
delete_site_option('salesafw_analytics_show_walkthrough');
delete_option('woocommerce_custom_orders_table_enabled');
delete_site_option('woocommerce_custom_orders_table_enabled');
delete_option('salesafw_redirect_on_activation');
delete_site_option('salesafw_redirect_on_activation');


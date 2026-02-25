<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_myaccount_orders_endpoint');
delete_site_option('woocommerce_myaccount_orders_endpoint');
delete_option('woocommerce_myaccount_downloads_endpoint');
delete_site_option('woocommerce_myaccount_downloads_endpoint');
delete_option('woocommerce_myaccount_edit_address_endpoint');
delete_site_option('woocommerce_myaccount_edit_address_endpoint');
delete_option('woocommerce_myaccount_payment_methods_endpoint');
delete_site_option('woocommerce_myaccount_payment_methods_endpoint');
delete_option('woocommerce_myaccount_edit_account_endpoint');
delete_site_option('woocommerce_myaccount_edit_account_endpoint');
delete_option('woocommerce_logout_endpoint');
delete_site_option('woocommerce_logout_endpoint');
delete_option('woocommerce_myaccount_subscriptions_endpoint');
delete_site_option('woocommerce_myaccount_subscriptions_endpoint');
delete_option('woocommerce_myaccount_teams_area_endpoint');
delete_site_option('woocommerce_myaccount_teams_area_endpoint');
delete_option('mapdl_settings');
delete_site_option('mapdl_settings');
delete_option('mapdl_endpoints');
delete_site_option('mapdl_endpoints');
delete_option('mapdl_flush_rewrite');
delete_site_option('mapdl_flush_rewrite');


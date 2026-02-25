<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_reco_plugin_reco_id');
delete_site_option('woocommerce_reco_plugin_reco_id');
delete_option('woocommerce_reco_plugin_is_active');
delete_site_option('woocommerce_reco_plugin_is_active');
delete_option('woocommerce_reco_plugin_api_key');
delete_site_option('woocommerce_reco_plugin_api_key');
delete_option('woocommerce_reco_plugin_send_order');
delete_site_option('woocommerce_reco_plugin_send_order');
delete_option('woocommerce_reco_plugin_send_interval');
delete_site_option('woocommerce_reco_plugin_send_interval');


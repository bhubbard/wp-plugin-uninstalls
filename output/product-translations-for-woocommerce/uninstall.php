<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('A2C_woocommerce_bridge_connector_is_custom');
delete_site_option('A2C_woocommerce_bridge_connector_is_custom');
delete_option('ptfw_bridge_email');
delete_site_option('ptfw_bridge_email');
delete_option('ptfw_bridge_phone');
delete_site_option('ptfw_bridge_phone');
delete_option('A2C_woocommerce_bridge_connector_is_installed');
delete_site_option('A2C_woocommerce_bridge_connector_is_installed');


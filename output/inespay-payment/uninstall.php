<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('inespay_migration_notice');
delete_site_option('inespay_migration_notice');
delete_option('inespay_version');
delete_site_option('inespay_version');
delete_option('woocommerce_inespay_settings');
delete_site_option('woocommerce_inespay_settings');
delete_option('woocommerce_my_custom_gateway_settings');
delete_site_option('woocommerce_my_custom_gateway_settings');
delete_option('woocommerce_force_ssl_checkout');
delete_site_option('woocommerce_force_ssl_checkout');


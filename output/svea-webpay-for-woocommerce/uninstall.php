<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sveawebpay_deferred_admin_notices');
delete_site_option('sveawebpay_deferred_admin_notices');
delete_option('woocommerce_default_gateway');
delete_site_option('woocommerce_default_gateway');
delete_option('sveawebpay_plugin_version');
delete_site_option('sveawebpay_plugin_version');


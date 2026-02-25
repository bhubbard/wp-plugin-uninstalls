<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('syncio_access_token');
delete_site_option('syncio_access_token');
delete_option('syncio_installer_data');
delete_site_option('syncio_installer_data');
delete_option('syncio_plugin_just_activated');
delete_site_option('syncio_plugin_just_activated');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');


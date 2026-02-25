<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_polako_settings');
delete_site_option('woocommerce_polako_settings');
delete_option('woocommerce_tax_based_on');
delete_site_option('woocommerce_tax_based_on');

// Delete Transients
delete_transient('wc-gateway-polako-admin-notice-transient');
delete_site_transient('wc-gateway-polako-admin-notice-transient');


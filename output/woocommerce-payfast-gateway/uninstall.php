<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_payfast_settings');
delete_site_option('woocommerce_payfast_settings');
delete_option('woocommerce_payfast_invalid_credentials');
delete_site_option('woocommerce_payfast_invalid_credentials');

// Delete Transients
delete_transient('wc-gateway-payfast-admin-notice-transient');
delete_site_transient('wc-gateway-payfast-admin-notice-transient');


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dk_spx_old_order_status_converted');
delete_site_option('dk_spx_old_order_status_converted');
delete_option('dk_spx_convert_old_order_status');
delete_site_option('dk_spx_convert_old_order_status');
delete_option('dk_spx_callback_key_send');
delete_site_option('dk_spx_callback_key_send');
delete_option('woocommerce_sparxpres_settings');
delete_site_option('woocommerce_sparxpres_settings');
delete_option('woocommerce_xprespay_settings');
delete_site_option('woocommerce_xprespay_settings');


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_epspgw_settings');
delete_site_option('woocommerce_epspgw_settings');

// Delete Transients
delete_transient('epspgw_redirect');
delete_site_transient('epspgw_redirect');


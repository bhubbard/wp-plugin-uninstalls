<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('leader24_settings');
delete_site_option('leader24_settings');
delete_option('woocommerce_notify_low_stock_amount');
delete_site_option('woocommerce_notify_low_stock_amount');
delete_option('leader24_wc_credentials');
delete_site_option('leader24_wc_credentials');

// Delete Transients
delete_transient('leader24_agent_verified');
delete_site_transient('leader24_agent_verified');


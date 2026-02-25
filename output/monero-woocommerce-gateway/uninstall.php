<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_force_ssl_checkout');
delete_site_option('woocommerce_force_ssl_checkout');

// Delete Transients
delete_transient('monero_gateway_network_height');
delete_site_transient('monero_gateway_network_height');

// Clear Cron Jobs
wp_clear_scheduled_hook('monero_update_event');


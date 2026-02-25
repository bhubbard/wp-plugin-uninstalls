<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_hoplix_settings');
delete_site_option('woocommerce_hoplix_settings');

// Delete Transients
delete_transient('hoplix_stats');
delete_site_transient('hoplix_stats');
delete_transient('hoplix_orders');
delete_site_transient('hoplix_orders');


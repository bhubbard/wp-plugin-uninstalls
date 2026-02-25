<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ovesio_ecommerce_hash');
delete_site_option('ovesio_ecommerce_hash');
delete_option('ovesio_ecommerce_status');
delete_site_option('ovesio_ecommerce_status');
delete_option('ovesio_ecommerce_export_duration');
delete_site_option('ovesio_ecommerce_export_duration');
delete_option('ovesio_ecommerce_order_states');
delete_site_option('ovesio_ecommerce_order_states');


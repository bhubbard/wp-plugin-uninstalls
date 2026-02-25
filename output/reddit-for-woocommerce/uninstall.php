<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_ship_to_countries');
delete_site_option('woocommerce_ship_to_countries');
delete_option('woocommerce_allowed_countries');
delete_site_option('woocommerce_allowed_countries');


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_bacs_paybysquare_limit_exceeded');
delete_site_option('woocommerce_bacs_paybysquare_limit_exceeded');
delete_option('woocommerce_bacs_settings');
delete_site_option('woocommerce_bacs_settings');


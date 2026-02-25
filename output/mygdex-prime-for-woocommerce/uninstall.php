<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_gdex_prime_settings');
delete_site_option('woocommerce_gdex_prime_settings');
delete_option('gdex_prime_admin_notices');
delete_site_option('gdex_prime_admin_notices');


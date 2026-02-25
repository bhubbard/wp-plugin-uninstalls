<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_stancer_settings');
delete_site_option('woocommerce_stancer_settings');
delete_option('stancer-version');
delete_site_option('stancer-version');


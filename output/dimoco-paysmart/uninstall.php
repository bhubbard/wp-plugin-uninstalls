<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dimoco_payment_credentials');
delete_site_option('dimoco_payment_credentials');
delete_option('woocommerce_dimoco_settings');
delete_site_option('woocommerce_dimoco_settings');


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_startbutton_settings');
delete_site_option('woocommerce_startbutton_settings');
delete_option('startbutton_exchange_rates');
delete_site_option('startbutton_exchange_rates');


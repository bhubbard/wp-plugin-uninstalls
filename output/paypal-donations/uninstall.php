<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('paypal_donations_options');
delete_site_option('paypal_donations_options');
delete_option('widget_paypal_donations');
delete_site_option('widget_paypal_donations');


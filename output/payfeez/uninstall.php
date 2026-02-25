<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('payfeez_bacs');
delete_site_option('payfeez_bacs');
delete_option('payfeez_paypal');
delete_site_option('payfeez_paypal');
delete_option('payfeez_rmcsa');
delete_site_option('payfeez_rmcsa');
delete_option('payfeez_stancer');
delete_site_option('payfeez_stancer');
delete_option('payfeez_stripe');
delete_site_option('payfeez_stripe');


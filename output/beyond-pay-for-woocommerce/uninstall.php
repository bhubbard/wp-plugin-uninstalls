<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('beyondpay_woo_automatic_transaction_status_updates');
delete_site_option('beyondpay_woo_automatic_transaction_status_updates');


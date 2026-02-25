<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('laposta-checkout-title');
delete_site_option('laposta-checkout-title');
delete_option('laposta-api_key');
delete_site_option('laposta-api_key');
delete_option('laposta-checkout-list');
delete_site_option('laposta-checkout-list');


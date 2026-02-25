<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('from-price');
delete_site_option('from-price');
delete_option('show-prices');
delete_site_option('show-prices');
delete_option('currency');
delete_site_option('currency');
delete_option('vat');
delete_site_option('vat');


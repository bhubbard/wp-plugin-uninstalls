<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('currency_type');
delete_site_option('currency_type');
delete_option('ecom_currency_convert');
delete_site_option('ecom_currency_convert');


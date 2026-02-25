<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpjb_config');
delete_site_option('wpjb_config');
delete_option('wpjb_payment_method');
delete_site_option('wpjb_payment_method');
delete_option('taxes_enabled');
delete_site_option('taxes_enabled');


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('QAWC_EXTENSION');
delete_site_option('QAWC_EXTENSION');
delete_option('QAWC_EXTENSION_brand-taxonomy');
delete_site_option('QAWC_EXTENSION_brand-taxonomy');
delete_option('QAWC_EXTENSION_shipping-status');
delete_site_option('QAWC_EXTENSION_shipping-status');
delete_option('QAWC_EXTENSION_chinization');
delete_site_option('QAWC_EXTENSION_chinization');


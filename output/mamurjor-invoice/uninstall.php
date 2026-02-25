<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mamurjor_institute_name');
delete_site_option('mamurjor_institute_name');
delete_option('mamurjor_institute_info');
delete_site_option('mamurjor_institute_info');
delete_option('shippingcharge');
delete_site_option('shippingcharge');
delete_option('discount_mamurjor');
delete_site_option('discount_mamurjor');


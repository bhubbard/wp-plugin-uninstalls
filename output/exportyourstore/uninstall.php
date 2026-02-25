<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eys_woocommerce_api_consumer_key');
delete_site_option('eys_woocommerce_api_consumer_key');
delete_option('eys_woocommerce_api_consumer_secret');
delete_site_option('eys_woocommerce_api_consumer_secret');
delete_option('eys_exportyourstore_returned_user_id');
delete_site_option('eys_exportyourstore_returned_user_id');


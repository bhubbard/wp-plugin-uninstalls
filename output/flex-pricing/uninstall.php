<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcfp_api_key');
delete_site_option('wcfp_api_key');
delete_option('wcfp_test_ip_address');
delete_site_option('wcfp_test_ip_address');
delete_option('wcfp_pricing_api_url');
delete_site_option('wcfp_pricing_api_url');
delete_option('wcfp_pricing_refresh_interval');
delete_site_option('wcfp_pricing_refresh_interval');

// Delete Transients
delete_transient('wcfp_test_connection_result');
delete_site_transient('wcfp_test_connection_result');


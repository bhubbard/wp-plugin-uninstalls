<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ts_easy_integration_access_token');
delete_site_option('ts_easy_integration_access_token');
delete_option('ts_easy_integration_version');
delete_site_option('ts_easy_integration_version');
delete_option('woocommerce_gzd_version');
delete_site_option('woocommerce_gzd_version');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
delete_option('ts_easy_integration_client_id');
delete_site_option('ts_easy_integration_client_id');
delete_option('ts_easy_integration_client_secret');
delete_site_option('ts_easy_integration_client_secret');
delete_option('ts_easy_integration_has_encryption_error');
delete_site_option('ts_easy_integration_has_encryption_error');


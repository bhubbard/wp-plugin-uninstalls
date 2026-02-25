<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('erply-integration_id');
delete_site_option('erply-integration_id');
delete_option('woocommerce_api_enabled');
delete_site_option('woocommerce_api_enabled');
delete_option('erply-integration-use-development-sandbox');
delete_site_option('erply-integration-use-development-sandbox');
delete_option('erply-integration-account');
delete_site_option('erply-integration-account');
delete_option('erply-integration-user');
delete_site_option('erply-integration-user');
delete_option('erply-integration-password');
delete_site_option('erply-integration-password');


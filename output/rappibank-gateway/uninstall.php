<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rppbr_api_id');
delete_site_option('rppbr_api_id');
delete_option('rppbr_api_key');
delete_site_option('rppbr_api_key');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
delete_option('rppbr_activation_redirect');
delete_site_option('rppbr_activation_redirect');


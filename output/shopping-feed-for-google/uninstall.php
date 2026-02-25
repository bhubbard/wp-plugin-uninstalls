<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_gsf_shop_secret');
delete_site_option('wp_gsf_shop_secret');
delete_option('wp_gsf_auth_id');
delete_site_option('wp_gsf_auth_id');
delete_option('wp_gsf_settings_meta');
delete_site_option('wp_gsf_settings_meta');
delete_option('woocommerce_api_enabled');
delete_site_option('woocommerce_api_enabled');


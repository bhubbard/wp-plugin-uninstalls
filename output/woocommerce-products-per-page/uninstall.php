<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wppp_dropdown_location');
delete_site_option('wppp_dropdown_location');
delete_option('wppp_method');
delete_site_option('wppp_method');
delete_option('wppp_dropdown_options');
delete_site_option('wppp_dropdown_options');
delete_option('wppp_return_to_first');
delete_site_option('wppp_return_to_first');
delete_option('wppp_shop_columns');
delete_site_option('wppp_shop_columns');
delete_option('wppp_default_ppp');
delete_site_option('wppp_default_ppp');
delete_option('wppp_version');
delete_site_option('wppp_version');
delete_option('wppp_settings');
delete_site_option('wppp_settings');


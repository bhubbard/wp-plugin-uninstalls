<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zineps_api_mode');
delete_site_option('zineps_api_mode');
delete_option('zineps_working_api');
delete_site_option('zineps_working_api');
delete_option('zineps_client_id');
delete_site_option('zineps_client_id');
delete_option('zineps_client_secret');
delete_site_option('zineps_client_secret');
delete_option('zineps_shop_name');
delete_site_option('zineps_shop_name');
delete_option('zineps_default_carrier');
delete_site_option('zineps_default_carrier');
delete_option('zineps_default_method');
delete_site_option('zineps_default_method');
delete_option('zineps_default_complete_order');
delete_site_option('zineps_default_complete_order');


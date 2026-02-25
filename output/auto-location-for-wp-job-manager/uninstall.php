<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('algwjm_enable_setting');
delete_site_option('algwjm_enable_setting');
delete_option('algwjm_map_api_key');
delete_site_option('algwjm_map_api_key');
delete_option('algwjm_types');
delete_site_option('algwjm_types');
delete_option('algwjm_country_code');
delete_site_option('algwjm_country_code');


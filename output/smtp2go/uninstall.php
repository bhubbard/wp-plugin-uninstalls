<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smtp2go_api_key');
delete_site_option('smtp2go_api_key');
delete_option('smtp2go_enabled');
delete_site_option('smtp2go_enabled');
delete_option('smtp2go_enable_api_logs');
delete_site_option('smtp2go_enable_api_logs');
delete_option('smtp2go_from_address');
delete_site_option('smtp2go_from_address');
delete_option('smtp2go_force_from_address');
delete_site_option('smtp2go_force_from_address');
delete_option('smtp2go_from_name');
delete_site_option('smtp2go_from_name');
delete_option('smtp2go_custom_headers');
delete_site_option('smtp2go_custom_headers');


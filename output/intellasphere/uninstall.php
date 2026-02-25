<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('is_ninja_addon');
delete_site_option('is_ninja_addon');
delete_option('is_gravity_addon');
delete_site_option('is_gravity_addon');
delete_option('is_connect_email');
delete_site_option('is_connect_email');
delete_option('x-auth-token');
delete_site_option('x-auth-token');
delete_option('is_op_array');
delete_site_option('is_op_array');
delete_option('get_brandkit_name');
delete_site_option('get_brandkit_name');
delete_option('is_app_settings_url');
delete_site_option('is_app_settings_url');
delete_option('is_api_settings_url');
delete_site_option('is_api_settings_url');
delete_option('is_syc_settings_url');
delete_site_option('is_syc_settings_url');
delete_option('intellasphere_db_version');
delete_site_option('intellasphere_db_version');


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('helpninja_edd_api_key');
delete_site_option('helpninja_edd_api_key');
delete_option('helpninja_api_key');
delete_site_option('helpninja_api_key');
delete_option('helpninja_lantern_enable');
delete_site_option('helpninja_lantern_enable');
delete_option('helpninja_lantern_id');
delete_site_option('helpninja_lantern_id');
delete_option('helpninja_app_version');
delete_site_option('helpninja_app_version');
delete_option('helpninja_db_version');
delete_site_option('helpninja_db_version');


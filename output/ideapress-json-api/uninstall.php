<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('json_api_controllers');
delete_site_option('json_api_controllers');
delete_option('json_api_base');
delete_site_option('json_api_base');


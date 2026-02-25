<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('formbricks_environment_id');
delete_site_option('formbricks_environment_id');
delete_option('formbricks_api_host');
delete_site_option('formbricks_api_host');
delete_option('formbricks_global_toggle');
delete_site_option('formbricks_global_toggle');


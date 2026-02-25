<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rest_api_guard_jwt_secret');
delete_site_option('rest_api_guard_jwt_secret');


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('repr_version');
delete_site_option('repr_version');
delete_option('repr_apps');
delete_site_option('repr_apps');
delete_option('graphql_general_settings');
delete_site_option('graphql_general_settings');


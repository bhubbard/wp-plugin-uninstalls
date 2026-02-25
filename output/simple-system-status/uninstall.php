<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simple_system_status_remote_url');
delete_site_option('simple_system_status_remote_url');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');


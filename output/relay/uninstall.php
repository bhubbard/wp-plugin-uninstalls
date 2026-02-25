<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('relay_api_key');
delete_site_option('relay_api_key');

// Delete Transients
delete_transient('health-check-site-status-result');
delete_site_transient('health-check-site-status-result');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('relay_directory_sizes');
delete_site_transient('relay_directory_sizes');


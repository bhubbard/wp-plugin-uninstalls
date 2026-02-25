<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gc-api_key');
delete_site_option('gc-api_key');

// Delete Transients
delete_transient('graphcommons_hubs');
delete_site_transient('graphcommons_hubs');


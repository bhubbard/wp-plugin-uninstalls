<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shift8_remote_api_key');
delete_site_option('shift8_remote_api_key');
delete_option('update_plugins');
delete_site_option('update_plugins');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');


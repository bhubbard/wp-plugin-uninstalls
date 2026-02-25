<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plugin_test_drive');
delete_site_option('plugin_test_drive');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');


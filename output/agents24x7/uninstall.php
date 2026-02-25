<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('agents24x7_version');
delete_site_option('agents24x7_version');

// Delete Transients
delete_transient('agents24x7_message');
delete_site_transient('agents24x7_message');


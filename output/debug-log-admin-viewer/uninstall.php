<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('debug_log_admin_viewer_settings');
delete_site_option('debug_log_admin_viewer_settings');


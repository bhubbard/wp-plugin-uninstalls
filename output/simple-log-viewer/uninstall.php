<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('slvpl_log_viewer_clear_logs');
delete_site_option('slvpl_log_viewer_clear_logs');
delete_option('slvpl_enable_debug');
delete_site_option('slvpl_enable_debug');


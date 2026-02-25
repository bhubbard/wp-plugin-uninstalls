<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('replace_contents_logs');
delete_site_option('replace_contents_logs');
delete_option('replace_contents_max_execution_time');
delete_site_option('replace_contents_max_execution_time');


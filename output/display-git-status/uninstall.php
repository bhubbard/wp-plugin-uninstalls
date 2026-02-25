<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dgs_options');
delete_site_option('dgs_options');
delete_option('git_status_options');
delete_site_option('git_status_options');


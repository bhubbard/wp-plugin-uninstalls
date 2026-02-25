<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('greenhouse_job_board_settings');
delete_site_option('greenhouse_job_board_settings');

// Delete Transients
delete_transient('ghjb_json');
delete_site_transient('ghjb_json');
delete_transient('ghjb_jobs');
delete_site_transient('ghjb_jobs');


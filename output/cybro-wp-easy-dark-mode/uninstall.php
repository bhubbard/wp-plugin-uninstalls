<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cdm_dark_mode_dashboard');
delete_site_option('cdm_dark_mode_dashboard');
delete_option('cdm_start_time');
delete_site_option('cdm_start_time');
delete_option('cdm_end_time');
delete_site_option('cdm_end_time');


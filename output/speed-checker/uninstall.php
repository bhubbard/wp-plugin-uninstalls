<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scfw_speed_test_options');
delete_site_option('scfw_speed_test_options');

// Clear Cron Jobs
wp_clear_scheduled_hook('scfw_run_api_cron');


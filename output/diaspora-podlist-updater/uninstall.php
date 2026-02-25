<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dpu-podlist');
delete_site_option('dpu-podlist');

// Clear Cron Jobs
wp_clear_scheduled_hook('dpu_hook');


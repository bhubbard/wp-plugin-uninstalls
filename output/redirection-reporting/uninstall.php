<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('redirection_reporting');
delete_site_option('redirection_reporting');

// Clear Cron Jobs
wp_clear_scheduled_hook('redirection_reporting_archive_data');


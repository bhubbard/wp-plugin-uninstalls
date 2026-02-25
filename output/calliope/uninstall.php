<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('calliope_installed');
delete_site_option('calliope_installed');

// Clear Cron Jobs
wp_clear_scheduled_hook('calliope_cron_scheduler');


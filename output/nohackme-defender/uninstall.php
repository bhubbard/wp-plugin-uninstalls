<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pdxglobal_options');
delete_site_option('pdxglobal_options');
delete_option('nohackme_defender_options');
delete_site_option('nohackme_defender_options');
delete_option('nohackme_defender_license');
delete_site_option('nohackme_defender_license');

// Clear Cron Jobs
wp_clear_scheduled_hook('nohackme_defender_daily_event');


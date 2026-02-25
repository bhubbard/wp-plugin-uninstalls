<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('crwcoh_enable');
delete_site_option('crwcoh_enable');
delete_option('crwcoh_days_delay');
delete_site_option('crwcoh_days_delay');

// Clear Cron Jobs
wp_clear_scheduled_hook('crwcoh_cron_event');


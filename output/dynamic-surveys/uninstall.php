<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dynamic_surveys_activated');
delete_site_option('dynamic_surveys_activated');
delete_option('dynamic_surveys_deactivated');
delete_site_option('dynamic_surveys_deactivated');

// Delete Transients
delete_transient('dynamic_surveys_cache');
delete_site_transient('dynamic_surveys_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('dynamic_surveys_daily_cleanup');


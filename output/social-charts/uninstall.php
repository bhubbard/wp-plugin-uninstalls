<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sc_settings');
delete_site_option('sc_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('social_charts_cron_hook');


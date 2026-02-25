<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shsb_settings');
delete_site_option('shsb_settings');
delete_option('shsb_score_time');
delete_site_option('shsb_score_time');
delete_option('shsb_score');
delete_site_option('shsb_score');

// Clear Cron Jobs
wp_clear_scheduled_hook('shsb_cron');


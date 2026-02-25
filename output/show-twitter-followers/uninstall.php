<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('show_twitter_followers');
delete_site_option('show_twitter_followers');

// Clear Cron Jobs
wp_clear_scheduled_hook('stf_update_followers');


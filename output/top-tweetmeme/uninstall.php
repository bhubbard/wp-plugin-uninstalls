<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('top_tweetmeme_db_version');
delete_site_option('top_tweetmeme_db_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('top_tweetmeme_update_event');


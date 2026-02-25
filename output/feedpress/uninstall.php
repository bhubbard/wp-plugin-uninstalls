<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('feedpress');
delete_site_option('feedpress');

// Clear Cron Jobs
wp_clear_scheduled_hook('feedpress_feeds_syncing_hook');


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lhr_version');
delete_site_option('lhr_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('lhr_cleanup_cron');


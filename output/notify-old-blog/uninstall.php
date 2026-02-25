<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('notify_old_blog');
delete_site_option('notify_old_blog');

// Clear Cron Jobs
wp_clear_scheduled_hook('notify_old_blog_cron');


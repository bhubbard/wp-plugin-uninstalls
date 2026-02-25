<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smudofollow');
delete_site_option('smudofollow');

// Clear Cron Jobs
wp_clear_scheduled_hook('smu_task_hook');


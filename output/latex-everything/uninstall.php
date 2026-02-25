<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('le_single_post_post');
delete_site_option('le_single_post_post');

// Clear Cron Jobs
wp_clear_scheduled_hook('le_activation');


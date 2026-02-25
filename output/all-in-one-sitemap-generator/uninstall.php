<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aio_gmt_offset');
delete_site_option('aio_gmt_offset');

// Clear Cron Jobs
wp_clear_scheduled_hook('aiositemap_create');
wp_clear_scheduled_hook('aiositemap_create ');


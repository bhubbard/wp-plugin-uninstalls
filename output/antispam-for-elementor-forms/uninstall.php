<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('asef_etag');
delete_site_option('asef_etag');
delete_option('asef_remote_block_list');
delete_site_option('asef_remote_block_list');
delete_option('asef_enable');
delete_site_option('asef_enable');

// Clear Cron Jobs
wp_clear_scheduled_hook('asef_cron');
wp_clear_scheduled_hook('asef_cron_init');


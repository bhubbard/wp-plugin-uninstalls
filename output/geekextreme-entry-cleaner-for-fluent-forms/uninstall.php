<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ffec_days');
delete_site_option('ffec_days');
delete_option('ffec_batch_size');
delete_site_option('ffec_batch_size');

// Clear Cron Jobs
wp_clear_scheduled_hook('ffec_delete_old_entries');


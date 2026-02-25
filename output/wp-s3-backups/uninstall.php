<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('s3b-schedule');
delete_site_option('s3b-schedule');
delete_option('s3b-access-key');
delete_site_option('s3b-access-key');
delete_option('s3b-secret-key');
delete_site_option('s3b-secret-key');
delete_option('s3b-bucket');
delete_site_option('s3b-bucket');
delete_option('s3b-section');
delete_site_option('s3b-section');

// Clear Cron Jobs
wp_clear_scheduled_hook('s3-backup');


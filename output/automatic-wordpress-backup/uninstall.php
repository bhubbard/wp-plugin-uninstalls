<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('s3b-schedule');
delete_site_option('s3b-schedule');
delete_option('s3b-bucket');
delete_site_option('s3b-bucket');
delete_option('s3b-section');
delete_site_option('s3b-section');
delete_option('wdc_credits');
delete_site_option('wdc_credits');
delete_option('awb-settings');
delete_site_option('awb-settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('s3-backup');


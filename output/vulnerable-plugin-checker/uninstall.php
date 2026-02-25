<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vpc_email_address');
delete_site_option('vpc_email_address');
delete_option('vpc_allow_emails');
delete_site_option('vpc_allow_emails');
delete_option('vpc-plugin-data');
delete_site_option('vpc-plugin-data');

// Clear Cron Jobs
wp_clear_scheduled_hook('vpc_pull_db_data_event');


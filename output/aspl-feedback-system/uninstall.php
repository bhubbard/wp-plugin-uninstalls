<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('default_temp');
delete_site_option('default_temp');
delete_option('send_mail_after');
delete_site_option('send_mail_after');
delete_option('send_mail_count');
delete_site_option('send_mail_count');
delete_option('send_mail_interval');
delete_site_option('send_mail_interval');

// Clear Cron Jobs
wp_clear_scheduled_hook('asplfs_cron');


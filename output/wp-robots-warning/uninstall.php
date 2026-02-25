<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('a3rw_ip_change_mail_sent');
delete_site_option('a3rw_ip_change_mail_sent');
delete_option('a3rw_check_ip_cron');
delete_site_option('a3rw_check_ip_cron');
delete_option('a3rw_server_ip');
delete_site_option('a3rw_server_ip');

// Clear Cron Jobs
wp_clear_scheduled_hook('a3rw_check_ip');


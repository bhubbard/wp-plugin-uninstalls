<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('email_setting_field');
delete_site_option('email_setting_field');
delete_option('aet_log');
delete_site_option('aet_log');
delete_option('aet_mail_error');
delete_site_option('aet_mail_error');

// Clear Cron Jobs
wp_clear_scheduled_hook('aet_cron');


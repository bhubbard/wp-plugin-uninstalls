<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fwer_main_mail_settings');
delete_site_option('fwer_main_mail_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('fwer_email_cron_monthly');


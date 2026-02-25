<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shet_settings');
delete_site_option('shet_settings');
delete_option('shmet_email_tester_settings');
delete_site_option('shmet_email_tester_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('shet_clear_logs');


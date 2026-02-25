<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('statmailer_options');
delete_site_option('statmailer_options');
delete_option('visitormailer_options');
delete_site_option('visitormailer_options');
delete_option('STATMAILER_VERSION_KEY');
delete_site_option('STATMAILER_VERSION_KEY');

// Clear Cron Jobs
wp_clear_scheduled_hook('visitormailer_cron_hook');
wp_clear_scheduled_hook('visitormailer_cron_hook($admin_email)');


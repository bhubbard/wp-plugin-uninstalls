<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('antivirus');
delete_site_option('antivirus');

// Delete Transients
delete_transient('antivirus-activation-notice');
delete_site_transient('antivirus-activation-notice');

// Clear Cron Jobs
wp_clear_scheduled_hook('antivirus_daily_cronjob');


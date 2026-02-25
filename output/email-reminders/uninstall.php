<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('oper_version_num');
delete_site_option('oper_version_num');

// Clear Cron Jobs
wp_clear_scheduled_hook('opera_cron_hook__rule_reset');
wp_clear_scheduled_hook('opera_cron_hook__rule_run');
wp_clear_scheduled_hook('opera_cron_hook__reminders_send');


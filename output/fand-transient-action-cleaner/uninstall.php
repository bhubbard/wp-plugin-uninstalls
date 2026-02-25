<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fand_tac_delay_failed');
delete_site_option('fand_tac_delay_failed');
delete_option('fand_tac_delay_completed');
delete_site_option('fand_tac_delay_completed');

// Clear Cron Jobs
wp_clear_scheduled_hook('fand_tac_weekly_cleanup');


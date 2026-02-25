<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fhdcu_counter_value');
delete_site_option('fhdcu_counter_value');

// Clear Cron Jobs
wp_clear_scheduled_hook('fhdcu_minute_increment');


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('brad_dismiss_notice');
delete_site_option('brad_dismiss_notice');

// Clear Cron Jobs
wp_clear_scheduled_hook('check_dismissed');


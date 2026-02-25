<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('am_tm_install_time');
delete_site_option('am_tm_install_time');
delete_option('pw_tm_suspend');
delete_site_option('pw_tm_suspend');

// Clear Cron Jobs
wp_clear_scheduled_hook('delete_expired_transients');


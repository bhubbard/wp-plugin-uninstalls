<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('elkse_site');
delete_site_option('elkse_site');
delete_option('elkse_home');
delete_site_option('elkse_home');
delete_option('elkse_mail');
delete_site_option('elkse_mail');

// Clear Cron Jobs
wp_clear_scheduled_hook('elkse_cron');


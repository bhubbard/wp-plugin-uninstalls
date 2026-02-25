<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('moicco_token_info');
delete_site_option('moicco_token_info');

// Clear Cron Jobs
wp_clear_scheduled_hook('moicco_cronjob');


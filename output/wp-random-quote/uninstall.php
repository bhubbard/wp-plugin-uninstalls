<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wprq_random_quotes');
delete_site_option('wprq_random_quotes');

// Clear Cron Jobs
wp_clear_scheduled_hook('wprq_cron_hook');


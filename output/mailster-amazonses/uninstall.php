<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mailster_amazonsns_last_response');
delete_site_option('mailster_amazonsns_last_response');
delete_option('_transient__mailster_send_period_timeout');
delete_site_option('_transient__mailster_send_period_timeout');
delete_option('_transient__mailster_send_period');
delete_site_option('_transient__mailster_send_period');

// Clear Cron Jobs
wp_clear_scheduled_hook('mailster_amazonses_cron');


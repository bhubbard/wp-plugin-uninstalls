<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yop_poll_old_version');
delete_site_option('yop_poll_old_version');
delete_option('yop_poll_version');
delete_site_option('yop_poll_version');
delete_option('yop_poll_settings');
delete_site_option('yop_poll_settings');
delete_option('yop_poll_options');
delete_site_option('yop_poll_options');
delete_option('yop_poll_pro');
delete_site_option('yop_poll_pro');
delete_option('external_updates-yop-poll');
delete_site_option('external_updates-yop-poll');
delete_option('yop_poll_ajax_importer');
delete_site_option('yop_poll_ajax_importer');

// Clear Cron Jobs
wp_clear_scheduled_hook('yop_poll_hourly_event');


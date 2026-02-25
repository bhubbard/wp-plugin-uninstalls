<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('socialpilot_options');
delete_site_option('socialpilot_options');
delete_option('socialpilot_do_activation_redirect');
delete_site_option('socialpilot_do_activation_redirect');

// Clear Cron Jobs
wp_clear_scheduled_hook('socialpilot_cron_hook');


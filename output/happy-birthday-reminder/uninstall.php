<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qb_plugin_options');
delete_site_option('qb_plugin_options');

// Clear Cron Jobs
wp_clear_scheduled_hook('quibos_birthdatechecker_cron');


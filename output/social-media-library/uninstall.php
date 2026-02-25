<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('igml_settings');
delete_site_option('igml_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('igml_cron_hook');


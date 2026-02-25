<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('imcron_settings');
delete_site_option('imcron_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('imcron_bgp');


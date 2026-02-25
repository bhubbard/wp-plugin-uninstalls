<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('regi_fair_settings');
delete_site_option('regi_fair_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('regi_fair_cleanup_cron_hook');


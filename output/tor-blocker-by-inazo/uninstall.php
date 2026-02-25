<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('inazo.real.tor.blocker_db_version');
delete_site_option('inazo.real.tor.blocker_db_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('inazo_tor_clean_logs');


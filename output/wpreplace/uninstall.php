<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpreplace_options');
delete_site_option('wpreplace_options');
delete_option('wpreplace_version');
delete_site_option('wpreplace_version');
delete_option('wpreplace_db_version');
delete_site_option('wpreplace_db_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpreplace_cleanup_old_backups');


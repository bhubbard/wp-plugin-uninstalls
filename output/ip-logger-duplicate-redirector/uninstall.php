<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('silr_db_version');
delete_site_option('silr_db_version');
delete_option('silr_exclude_admins');
delete_site_option('silr_exclude_admins');
delete_option('silr_enable_redirect');
delete_site_option('silr_enable_redirect');
delete_option('silr_redirect_url');
delete_site_option('silr_redirect_url');
delete_option('silr_retention_hours');
delete_site_option('silr_retention_hours');
delete_option('silr_logs_per_page');
delete_site_option('silr_logs_per_page');

// Clear Cron Jobs
wp_clear_scheduled_hook('silr_cleanup_event');


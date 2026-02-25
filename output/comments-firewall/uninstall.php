<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('comments_firewall_options');
delete_site_option('comments_firewall_options');
delete_option('comments_firewall_version');
delete_site_option('comments_firewall_version');
delete_option('comments_firewall_activated');
delete_site_option('comments_firewall_activated');
delete_option('wpcs_stats');
delete_site_option('wpcs_stats');
delete_option('wpcs_last_stats_commit');
delete_site_option('wpcs_last_stats_commit');

// Delete Transients
delete_transient('wpcs_pending_stats');
delete_site_transient('wpcs_pending_stats');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpcs_monthly_stats_commit');


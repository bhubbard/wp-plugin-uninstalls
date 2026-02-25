<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('awpp-option');
delete_site_option('awpp-option');
delete_option('awpp-settings');
delete_site_option('awpp-settings');
delete_option('awpp_serverpush_files');
delete_site_option('awpp_serverpush_files');

// Clear Cron Jobs
wp_clear_scheduled_hook('awpp_renew_htaccess_cron');
wp_clear_scheduled_hook('awpp_monitoring_sheduled_psi_request');


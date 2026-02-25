<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('registration');
delete_site_option('registration');
delete_option('nscan_options');
delete_site_option('nscan_options');
delete_option('nfw_install');
delete_site_option('nfw_install');
delete_option('nfw_options');
delete_site_option('nfw_options');
delete_option('nfw_rules');
delete_site_option('nfw_rules');
delete_option('nfw_tmp');
delete_site_option('nfw_tmp');
delete_option('nfw_checked');
delete_site_option('nfw_checked');

// Delete Transients
delete_transient('nfw_fullwaf');
delete_site_transient('nfw_fullwaf');
delete_transient('nfw_dailyreport');
delete_site_transient('nfw_dailyreport');
delete_transient('nfw_fetchsecupdates');
delete_site_transient('nfw_fetchsecupdates');
delete_transient('nfw_version_update');
delete_site_transient('nfw_version_update');
delete_transient('nfw_db_check');
delete_site_transient('nfw_db_check');

// Clear Cron Jobs
wp_clear_scheduled_hook('nfscanevent');
wp_clear_scheduled_hook('nfwgccron');
wp_clear_scheduled_hook('nfsecupdates');
wp_clear_scheduled_hook('nfdailyreport');


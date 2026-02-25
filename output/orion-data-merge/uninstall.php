<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wms-db-result-key');
delete_site_option('wms-db-result-key');
delete_option('wms-remote-site-info');
delete_site_option('wms-remote-site-info');
delete_option('wms-last-remote-site');
delete_site_option('wms-last-remote-site');
delete_option('wms-site-key');
delete_site_option('wms-site-key');
delete_option('msd_path');
delete_site_option('msd_path');

// Delete Transients
delete_transient('wms-results-sqlite-file-path');
delete_site_transient('wms-results-sqlite-file-path');

// Clear Cron Jobs
wp_clear_scheduled_hook('wms_schedule_dump_with_php');


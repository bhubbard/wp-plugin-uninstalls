<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('ry-notice');
delete_site_transient('ry-notice');
delete_transient('doing_cron');
delete_site_transient('doing_cron');
delete_transient('ry_analyzed_table');
delete_site_transient('ry_analyzed_table');
delete_transient('ry_optimized_table');
delete_site_transient('ry_optimized_table');
delete_transient('ry_export_data');
delete_site_transient('ry_export_data');


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('medshi_geo_block_dashboard_stats');
delete_site_transient('medshi_geo_block_dashboard_stats');
delete_transient('medshi_geo_block_logs_summary');
delete_site_transient('medshi_geo_block_logs_summary');
delete_transient('medshi_geo_export_all_logs');
delete_site_transient('medshi_geo_export_all_logs');


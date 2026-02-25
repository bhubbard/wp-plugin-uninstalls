<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('workflowprotools_bulk_importer_analytics_enabled');
delete_site_option('workflowprotools_bulk_importer_analytics_enabled');
delete_option('workflowprotools_bulk_importer_version');
delete_site_option('workflowprotools_bulk_importer_version');
delete_option('workflowprotools_bulk_importer_success_imports');
delete_site_option('workflowprotools_bulk_importer_success_imports');
delete_option('workflowprotools_bulk_importer_total_products_imported');
delete_site_option('workflowprotools_bulk_importer_total_products_imported');
delete_option('workflowprotools_bulk_importer_site_info');
delete_site_option('workflowprotools_bulk_importer_site_info');

// Clear Cron Jobs
wp_clear_scheduled_hook('workflowprotools_bulk_importer_cleanup');
wp_clear_scheduled_hook('workflowprotools_bulk_importer_analytics_sync');


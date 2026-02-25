<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plugin_wc_import_google_sheet_gs_token');
delete_site_option('plugin_wc_import_google_sheet_gs_token');
delete_option('plugin_wc_import_google_sheet_options');
delete_site_option('plugin_wc_import_google_sheet_options');

// Clear Cron Jobs
wp_clear_scheduled_hook('importer_scheduled_cleanup');


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('audit_export_settings');
delete_site_option('audit_export_settings');
delete_option('audit_export_remote_post_settings');
delete_site_option('audit_export_remote_post_settings');
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');
delete_option('audit_export_db_version');
delete_site_option('audit_export_db_version');
delete_option('audit_export_last_cron_run');
delete_site_option('audit_export_last_cron_run');
delete_option('audit_export_preserve_data_on_uninstall');
delete_site_option('audit_export_preserve_data_on_uninstall');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('audit_export_cron_hook');
wp_clear_scheduled_hook('audit_export_process_queue');


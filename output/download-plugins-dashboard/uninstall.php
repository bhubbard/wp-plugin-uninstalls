<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('alg_download_plugins_dashboard_version_separator_char');
delete_site_option('alg_download_plugins_dashboard_version_separator_char');
delete_option('alg_download_plugins_dashboard_temp_dir');
delete_site_option('alg_download_plugins_dashboard_temp_dir');
delete_option('alg_download_plugins_dashboard_themes_append_version');
delete_site_option('alg_download_plugins_dashboard_themes_append_version');
delete_option('alg_download_plugins_dashboard_themes_add_main_dir');
delete_site_option('alg_download_plugins_dashboard_themes_add_main_dir');
delete_option('alg_download_plugins_dashboard_themes_append_date_time');
delete_site_option('alg_download_plugins_dashboard_themes_append_date_time');
delete_option('alg_download_plugins_dashboard_themes_output_files');
delete_site_option('alg_download_plugins_dashboard_themes_output_files');
delete_option('alg_download_plugins_dashboard_themes_single_zip_file_name');
delete_site_option('alg_download_plugins_dashboard_themes_single_zip_file_name');
delete_option('alg_download_plugins_dashboard_themes_bulk_dir');
delete_site_option('alg_download_plugins_dashboard_themes_bulk_dir');
delete_option('alg_download_plugins_dashboard_plugins_append_version');
delete_site_option('alg_download_plugins_dashboard_plugins_append_version');
delete_option('alg_download_plugins_dashboard_plugins_add_main_dir');
delete_site_option('alg_download_plugins_dashboard_plugins_add_main_dir');
delete_option('alg_download_plugins_dashboard_plugins_append_date_time');
delete_site_option('alg_download_plugins_dashboard_plugins_append_date_time');
delete_option('alg_download_plugins_dashboard_plugins_output_files');
delete_site_option('alg_download_plugins_dashboard_plugins_output_files');
delete_option('alg_download_plugins_dashboard_plugins_single_zip_file_name');
delete_site_option('alg_download_plugins_dashboard_plugins_single_zip_file_name');
delete_option('alg_download_plugins_dashboard_plugins_bulk_dir');
delete_site_option('alg_download_plugins_dashboard_plugins_bulk_dir');
delete_option('alg_download_plugins_dashboard_zip_library');
delete_site_option('alg_download_plugins_dashboard_zip_library');

// Clear Cron Jobs
wp_clear_scheduled_hook('alg_download_themes_cron');
wp_clear_scheduled_hook('alg_download_plugins_cron');


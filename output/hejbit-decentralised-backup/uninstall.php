<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hejbit_login_dlwcloud');
delete_site_option('hejbit_login_dlwcloud');
delete_option('hejbit_pass_dlwcloud');
delete_site_option('hejbit_pass_dlwcloud');
delete_option('hejbit_url_dlwcloud');
delete_site_option('hejbit_url_dlwcloud');
delete_option('hejbit_logs_retention');
delete_site_option('hejbit_logs_retention');
delete_option('hejbit_email_dlwcloud');
delete_site_option('hejbit_email_dlwcloud');
delete_option('hejbit_folder_dlwcloud');
delete_site_option('hejbit_folder_dlwcloud');
delete_option('hejbit_frequency_dlwcloud');
delete_site_option('hejbit_frequency_dlwcloud');
delete_option('hejbit_day_dlwcloud');
delete_site_option('hejbit_day_dlwcloud');
delete_option('hejbit_hour_dlwcloud');
delete_site_option('hejbit_hour_dlwcloud');
delete_option('hejbit_db_only_dlwcloud');
delete_site_option('hejbit_db_only_dlwcloud');
delete_option('db_only_dlwcloud');
delete_site_option('db_only_dlwcloud');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('hejbit_Save');
wp_clear_scheduled_hook('hejbit_SaveInProgress');


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('login_dlwcloud');
delete_site_option('login_dlwcloud');
delete_option('pass_dlwcloud');
delete_site_option('pass_dlwcloud');
delete_option('url_dlwcloud');
delete_site_option('url_dlwcloud');
delete_option('email_dlwcloud');
delete_site_option('email_dlwcloud');
delete_option('frequency_dlwcloud');
delete_site_option('frequency_dlwcloud');
delete_option('day_dlwcloud');
delete_site_option('day_dlwcloud');
delete_option('hour_dlwcloud');
delete_site_option('hour_dlwcloud');
delete_option('auto_update_dlwcloud');
delete_site_option('auto_update_dlwcloud');
delete_option('folder_dlwcloud');
delete_site_option('folder_dlwcloud');
delete_option('nb_save_dlwcloud');
delete_site_option('nb_save_dlwcloud');
delete_option('bdd_only_dlwcloud');
delete_site_option('bdd_only_dlwcloud');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('stn_Save');
wp_clear_scheduled_hook('stn_SaveInProgress');


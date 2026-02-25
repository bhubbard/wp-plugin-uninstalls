<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('emsfb_settings');
delete_site_option('emsfb_settings');
delete_option('emsfb_email_status');
delete_site_option('emsfb_email_status');
delete_option('Emsfb_db_version');
delete_site_option('Emsfb_db_version');
delete_option('emsfb_pro');
delete_site_option('emsfb_pro');
delete_option('emsfb_version');
delete_site_option('emsfb_version');

// Delete Transients
delete_transient('emsfb_settings_transient');
delete_site_transient('emsfb_settings_transient');

// Clear Cron Jobs
wp_clear_scheduled_hook('delete_preview_page_efb');
wp_clear_scheduled_hook('download_all_addons_efb');


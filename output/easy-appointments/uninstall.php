<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('easy_app_db_version');
delete_site_option('easy_app_db_version');
delete_option('ea_excel_columns');
delete_site_option('ea_excel_columns');
delete_option('ea_hide_newsletter');
delete_site_option('ea_hide_newsletter');

// Clear Cron Jobs
wp_clear_scheduled_hook('easyapp_hourly_event');
wp_clear_scheduled_hook('ea_daily_expire_appointments');
wp_clear_scheduled_hook('ea_gdpr_auto_delete');


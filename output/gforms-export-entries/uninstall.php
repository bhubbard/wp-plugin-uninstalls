<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gfee_settings');
delete_site_option('gfee_settings');
delete_option('gfee_old_settings');
delete_site_option('gfee_old_settings');
delete_option('gfee_has_updated_1_7_3');
delete_site_option('gfee_has_updated_1_7_3');
delete_option('gfee_settings_old');
delete_site_option('gfee_settings_old');

// Clear Cron Jobs
wp_clear_scheduled_hook('export_gfee_entries');
wp_clear_scheduled_hook('gfee_cleaning_days');


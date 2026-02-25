<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ipbl_ip_pref');
delete_site_option('ipbl_ip_pref');
delete_option('ipbl_version');
delete_site_option('ipbl_version');
delete_option('ipbl_settings');
delete_site_option('ipbl_settings');
delete_option('ipbl_dropdown');
delete_site_option('ipbl_dropdown');
delete_option('ipbl_sync_settings');
delete_site_option('ipbl_sync_settings');
delete_option('ipbl_dismiss_sale_notice');
delete_site_option('ipbl_dismiss_sale_notice');
delete_option('ipbl_sync_time');
delete_site_option('ipbl_sync_time');
delete_option('ipbl_donate_popup');
delete_site_option('ipbl_donate_popup');

// Clear Cron Jobs
wp_clear_scheduled_hook('ipbl_sync_cron_action');


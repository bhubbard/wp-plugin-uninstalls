<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpCap_login');
delete_site_option('wpCap_login');
delete_option('wpCap_register');
delete_site_option('wpCap_register');
delete_option('wpCap_lost');
delete_site_option('wpCap_lost');
delete_option('wpCap_comments');
delete_site_option('wpCap_comments');
delete_option('wpCap_registered');
delete_site_option('wpCap_registered');
delete_option('wpCap_cf7_ax');
delete_site_option('wpCap_cf7_ax');
delete_option('wpCap_wpf_ax');
delete_site_option('wpCap_wpf_ax');
delete_option('wpCap_forminator_ax');
delete_site_option('wpCap_forminator_ax');
delete_option('wpCap_type');
delete_site_option('wpCap_type');
delete_option('wpCap_letters');
delete_site_option('wpCap_letters');
delete_option('wpCap_no_chars');
delete_site_option('wpCap_no_chars');
delete_option('wpCap_image');
delete_site_option('wpCap_image');
delete_option('wpCap_failBan');
delete_site_option('wpCap_failBan');
delete_option('wpCap_Banned');
delete_site_option('wpCap_Banned');
delete_option('wpCap_Ban_History');
delete_site_option('wpCap_Ban_History');
delete_option('wpCap_restMenu');
delete_site_option('wpCap_restMenu');

// Clear Cron Jobs
wp_clear_scheduled_hook('delete_history_file_event');


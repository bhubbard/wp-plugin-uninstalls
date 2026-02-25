<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pm_wp_mail_address');
delete_site_option('pm_wp_mail_address');
delete_option('pm_wp_mail_type');
delete_site_option('pm_wp_mail_type');
delete_option('pm_wp_mail_db_version');
delete_site_option('pm_wp_mail_db_version');
delete_option('pm_wp_mail_key');
delete_site_option('pm_wp_mail_key');
delete_option('pm_wp_mail_activate');
delete_site_option('pm_wp_mail_activate');


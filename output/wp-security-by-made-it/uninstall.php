<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('madeit_security_maintenance_api_key');
delete_site_option('madeit_security_maintenance_api_key');
delete_option('madeit_security_maintenance_enable');
delete_site_option('madeit_security_maintenance_enable');
delete_option('madeit_security_api_key');
delete_site_option('madeit_security_api_key');
delete_option('madeit_security_backup_ftp_enable');
delete_site_option('madeit_security_backup_ftp_enable');
delete_option('madeit_security_backup_s3_enable');
delete_site_option('madeit_security_backup_s3_enable');
delete_option('initial_db_version');
delete_site_option('initial_db_version');
delete_option('madeit_security_scan_repo_fast');
delete_site_option('madeit_security_scan_repo_fast');
delete_option('madeit_security_scan_repo_core');
delete_site_option('madeit_security_scan_repo_core');
delete_option('madeit_security_scan_repo_theme');
delete_site_option('madeit_security_scan_repo_theme');
delete_option('madeit_security_scan_repo_plugin');
delete_site_option('madeit_security_scan_repo_plugin');
delete_option('madeit_security_scan_update');
delete_site_option('madeit_security_scan_update');
delete_option('madeit_security_maintenance_backup');
delete_site_option('madeit_security_maintenance_backup');
delete_option('madeit_security_backup_enabled');
delete_site_option('madeit_security_backup_enabled');
delete_option('madeit_security_backup_files');
delete_site_option('madeit_security_backup_files');
delete_option('madeit_security_backup_ftp_server');
delete_site_option('madeit_security_backup_ftp_server');
delete_option('madeit_security_backup_ftp_username');
delete_site_option('madeit_security_backup_ftp_username');
delete_option('madeit_security_backup_ftp_password');
delete_site_option('madeit_security_backup_ftp_password');
delete_option('madeit_security_backup_ftp_destination_directory');
delete_site_option('madeit_security_backup_ftp_destination_directory');
delete_option('madeit_security_backup_s3_access_key');
delete_site_option('madeit_security_backup_s3_access_key');
delete_option('madeit_security_backup_s3_secret_key');
delete_site_option('madeit_security_backup_s3_secret_key');
delete_option('madeit_security_backup_s3_bucket_name');
delete_site_option('madeit_security_backup_s3_bucket_name');
delete_option('madeit_security_firewall_enabled');
delete_site_option('madeit_security_firewall_enabled');
delete_option('madeit_security_firewall_login_attempts_delay_time');
delete_site_option('madeit_security_firewall_login_attempts_delay_time');
delete_option('madeit_security_firewall_login_attempts_failed');
delete_site_option('madeit_security_firewall_login_attempts_failed');
delete_option('madeit_security_firewall_login_attempts_block_time');
delete_site_option('madeit_security_firewall_login_attempts_block_time');
delete_option('madeit_security_firewall_login_attempts_block_wrong_user');
delete_site_option('madeit_security_firewall_login_attempts_block_wrong_user');
delete_option('madeit_security_firewall_login_attempts_block_wrong_user_count');
delete_site_option('madeit_security_firewall_login_attempts_block_wrong_user_count');
delete_option('madeit_security_report_weekly_enabled');
delete_site_option('madeit_security_report_weekly_enabled');
delete_option('madeit_security_report_weekly_email');
delete_site_option('madeit_security_report_weekly_email');

// Delete Transients
delete_transient('madeit_security_repo_scan');
delete_site_transient('madeit_security_repo_scan');
delete_transient('madeit_security_update_scan');
delete_site_transient('madeit_security_update_scan');
delete_transient('madeit_security_backup');
delete_site_transient('madeit_security_backup');
delete_transient('madeit_security_scan');
delete_site_transient('madeit_security_scan');
delete_transient('update_core');
delete_site_transient('update_core');
delete_transient('madeit_security_scan_again');
delete_site_transient('madeit_security_scan_again');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('madeit_security_loadfiles');
wp_clear_scheduled_hook('madeit_security_check_plugin_updates');
wp_clear_scheduled_hook('madeit_security_backup');
wp_clear_scheduled_hook('madeit_security_loadfiles_run');
wp_clear_scheduled_hook('madeit_security_backup_run');
wp_clear_scheduled_hook('madeit_security_report_weekly');
wp_clear_scheduled_hook('madeit_security_firewall_renderblockfile');


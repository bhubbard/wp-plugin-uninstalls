<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lana_security_encrypt_version');
delete_site_option('lana_security_encrypt_version');
delete_option('lana_security_insecure_files');
delete_site_option('lana_security_insecure_files');
delete_option('lana_security_login_captcha');
delete_site_option('lana_security_login_captcha');
delete_option('lana_security_register_captcha');
delete_site_option('lana_security_register_captcha');
delete_option('lana_security_lostpassword_captcha');
delete_site_option('lana_security_lostpassword_captcha');
delete_option('lana_security_logs');
delete_site_option('lana_security_logs');
delete_option('lana_security_logs_cleanup_by_amount');
delete_site_option('lana_security_logs_cleanup_by_amount');
delete_option('lana_security_logs_cleanup_amount');
delete_site_option('lana_security_logs_cleanup_amount');
delete_option('lana_security_logs_cleanup_by_time');
delete_site_option('lana_security_logs_cleanup_by_time');
delete_option('lana_security_logs_cleanup_time');
delete_site_option('lana_security_logs_cleanup_time');
delete_option('lana_security_login_logs');
delete_site_option('lana_security_login_logs');
delete_option('lana_security_login_logs_cleanup_by_amount');
delete_site_option('lana_security_login_logs_cleanup_by_amount');
delete_option('lana_security_login_logs_cleanup_amount');
delete_site_option('lana_security_login_logs_cleanup_amount');
delete_option('lana_security_login_logs_cleanup_by_time');
delete_site_option('lana_security_login_logs_cleanup_by_time');
delete_option('lana_security_login_logs_cleanup_time');
delete_site_option('lana_security_login_logs_cleanup_time');

// Clear Cron Jobs
wp_clear_scheduled_hook('lana_security_logs_cleanup_by_amount');
wp_clear_scheduled_hook('lana_security_logs_cleanup_by_time');
wp_clear_scheduled_hook('lana_security_login_logs_cleanup_by_amount');
wp_clear_scheduled_hook('lana_security_login_logs_cleanup_by_time');


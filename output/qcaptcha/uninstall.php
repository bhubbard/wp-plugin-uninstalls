<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qcaptcha_wp_login');
delete_site_option('qcaptcha_wp_login');
delete_option('qcaptcha_wp_register');
delete_site_option('qcaptcha_wp_register');
delete_option('qcaptcha_wp_lostpassword');
delete_site_option('qcaptcha_wp_lostpassword');
delete_option('qcaptcha_wp_comment');
delete_site_option('qcaptcha_wp_comment');
delete_option('qcaptcha_support_cf7');
delete_site_option('qcaptcha_support_cf7');
delete_option('qcaptcha_support_wp_forms');
delete_site_option('qcaptcha_support_wp_forms');
delete_option('qcaptcha_support_ff');
delete_site_option('qcaptcha_support_ff');
delete_option('qcaptcha_support_mc');
delete_site_option('qcaptcha_support_mc');
delete_option('qcaptcha_disable_for_admins');
delete_site_option('qcaptcha_disable_for_admins');
delete_option('qcaptcha_disable_for_logged_in_users');
delete_site_option('qcaptcha_disable_for_logged_in_users');
delete_option('qcaptcha_support_bp');
delete_site_option('qcaptcha_support_bp');

// Clear Cron Jobs
wp_clear_scheduled_hook('qcaptcha_clean_db');


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('members_360_wp_email_logo');
delete_site_option('members_360_wp_email_logo');
delete_option('members_360_wp_email_intro_text');
delete_site_option('members_360_wp_email_intro_text');
delete_option('members_360_wp_email_footer_text');
delete_site_option('members_360_wp_email_footer_text');
delete_option('members_360_wp_login_redirect_url');
delete_site_option('members_360_wp_login_redirect_url');
delete_option('members_360_wp_login_page_url');
delete_site_option('members_360_wp_login_page_url');
delete_option('members_360_wp_debug_transactions_file');
delete_site_option('members_360_wp_debug_transactions_file');
delete_option('members_360_wp_account_custom_fields');
delete_site_option('members_360_wp_account_custom_fields');
delete_option('members_360_wp_signup_page_url');
delete_site_option('members_360_wp_signup_page_url');
delete_option('members_360_wp_recaptcha_site_key');
delete_site_option('members_360_wp_recaptcha_site_key');
delete_option('members_360_wp_recaptcha_secret_key');
delete_site_option('members_360_wp_recaptcha_secret_key');
delete_option('members_360_wp_frontend_nonce');
delete_site_option('members_360_wp_frontend_nonce');
delete_option('members_360_wp_debug_transactions_db');
delete_site_option('members_360_wp_debug_transactions_db');
delete_option('members_360_wp_paypal_webhook_send_ok');
delete_site_option('members_360_wp_paypal_webhook_send_ok');
delete_option('members_360_wp_pro_license_code');
delete_site_option('members_360_wp_pro_license_code');
delete_option('members_360_wp_db_version');
delete_site_option('members_360_wp_db_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('members_360_wp_cron_daily');
wp_clear_scheduled_hook('members_360_wp_cron_weekly');


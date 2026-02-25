<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('advcb_allowed_countries');
delete_site_option('advcb_allowed_countries');
delete_option('advcb_secret_key');
delete_site_option('advcb_secret_key');
delete_option('advcb_blacklisted_ips');
delete_site_option('advcb_blacklisted_ips');
delete_option('advcb_trusted_ips');
delete_site_option('advcb_trusted_ips');
delete_option('advcb_send_email_alerts');
delete_site_option('advcb_send_email_alerts');
delete_option('advcb_alert_email');
delete_site_option('advcb_alert_email');
delete_option('advcb_mode');
delete_site_option('advcb_mode');
delete_option('advcb_enable_logs');
delete_site_option('advcb_enable_logs');
delete_option('advcb_block_page_title');
delete_site_option('advcb_block_page_title');
delete_option('advcb_block_message');
delete_site_option('advcb_block_message');
delete_option('advcb_enable_redirect');
delete_site_option('advcb_enable_redirect');
delete_option('advcb_redirect_url');
delete_site_option('advcb_redirect_url');
delete_option('advcb_redirect_status_code');
delete_site_option('advcb_redirect_status_code');
delete_option('advcb_http_status_code');
delete_site_option('advcb_http_status_code');
delete_option('advcb_log_retention_days');
delete_site_option('advcb_log_retention_days');
delete_option('advcb_geoip_source');
delete_site_option('advcb_geoip_source');
delete_option('advcb_geoip_db_path');
delete_site_option('advcb_geoip_db_path');
delete_option('advcb_enable_captcha');
delete_site_option('advcb_enable_captcha');
delete_option('advcb_captcha_provider');
delete_site_option('advcb_captcha_provider');
delete_option('advcb_captcha_site_key');
delete_site_option('advcb_captcha_site_key');
delete_option('advcb_captcha_secret_key');
delete_site_option('advcb_captcha_secret_key');
delete_option('advcb_captcha_duration');
delete_site_option('advcb_captcha_duration');
delete_option('advcb_captcha_threshold');
delete_site_option('advcb_captcha_threshold');
delete_option('advcb_block_registration_by_country');
delete_site_option('advcb_block_registration_by_country');
delete_option('advcb_registration_mode');
delete_site_option('advcb_registration_mode');
delete_option('advcb_registration_countries');
delete_site_option('advcb_registration_countries');
delete_option('advcb_registration_blocked_message');
delete_site_option('advcb_registration_blocked_message');

// Delete Transients
delete_transient('advcb_whitelisted_ips');
delete_site_transient('advcb_whitelisted_ips');
delete_transient('advcb_live_activity');
delete_site_transient('advcb_live_activity');
delete_transient('advcb_captcha_verified_ips');
delete_site_transient('advcb_captcha_verified_ips');

// Clear Cron Jobs
wp_clear_scheduled_hook('advcb_cleanup_logs_event');


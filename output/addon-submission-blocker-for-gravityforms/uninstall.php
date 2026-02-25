<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('asbfg_log_retention_days');
delete_site_option('asbfg_log_retention_days');
delete_option('asbfg_blocked_ips');
delete_site_option('asbfg_blocked_ips');
delete_option('asbfg_blocked_emails');
delete_site_option('asbfg_blocked_emails');
delete_option('asbfg_blocked_domains');
delete_site_option('asbfg_blocked_domains');
delete_option('asbfg_blocked_countries');
delete_site_option('asbfg_blocked_countries');
delete_option('asbfg_blocked_text');
delete_site_option('asbfg_blocked_text');
delete_option('asbfg_custom_ip_message');
delete_site_option('asbfg_custom_ip_message');
delete_option('asbfg_custom_email_message');
delete_site_option('asbfg_custom_email_message');
delete_option('asbfg_custom_domain_message');
delete_site_option('asbfg_custom_domain_message');
delete_option('asbfg_custom_country_message');
delete_site_option('asbfg_custom_country_message');
delete_option('asbfg_custom_text_message');
delete_site_option('asbfg_custom_text_message');

// Clear Cron Jobs
wp_clear_scheduled_hook('asbfg_cleanup_old_logs');


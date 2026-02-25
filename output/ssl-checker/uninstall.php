<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gritonl_ssl_checker_errors');
delete_site_option('gritonl_ssl_checker_errors');
delete_option('gritonl_ssl_checker_debug');
delete_site_option('gritonl_ssl_checker_debug');
delete_option('gritonl_ssl_checker_emails');
delete_site_option('gritonl_ssl_checker_emails');
delete_option('gritonl_ssl_checker_ssl_expiry_ts');
delete_site_option('gritonl_ssl_checker_ssl_expiry_ts');
delete_option('gritonl_ssl_checker_ssl_expiry');
delete_site_option('gritonl_ssl_checker_ssl_expiry');
delete_option('gritonl_ssl_checker_domain_expiry_ts');
delete_site_option('gritonl_ssl_checker_domain_expiry_ts');
delete_option('gritonl_ssl_checker_domain_expiry');
delete_site_option('gritonl_ssl_checker_domain_expiry');
delete_option('gritonl_ssl_checker_alerts');
delete_site_option('gritonl_ssl_checker_alerts');

// Clear Cron Jobs
wp_clear_scheduled_hook('gritonl_ssl_checker');


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lockspire_email_logs');
delete_site_option('lockspire_email_logs');
delete_option('lockspire_blocked_today');
delete_site_option('lockspire_blocked_today');
delete_option('lockspire_blocked_ips');
delete_site_option('lockspire_blocked_ips');
delete_option('lockspire_activity_log');
delete_site_option('lockspire_activity_log');
delete_option('lockspire_activity_log_key');
delete_site_option('lockspire_activity_log_key');
delete_option('lockspire_notification_emails');
delete_site_option('lockspire_notification_emails');
delete_option('lockspire_options');
delete_site_option('lockspire_options');
delete_option('lockspire_last_scan');
delete_site_option('lockspire_last_scan');
delete_option('lockspire_firewall_rules');
delete_site_option('lockspire_firewall_rules');


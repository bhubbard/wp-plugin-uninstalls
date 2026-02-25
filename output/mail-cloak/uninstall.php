<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mail_cloak_honeypot_triggers');
delete_site_option('mail_cloak_honeypot_triggers');
delete_option('mail_cloak_bot_log');
delete_site_option('mail_cloak_bot_log');
delete_option('mail_cloak_ip_blocklist');
delete_site_option('mail_cloak_ip_blocklist');
delete_option('mail_cloak_settings');
delete_site_option('mail_cloak_settings');


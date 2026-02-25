<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_reroute_email_enable');
delete_site_option('wp_reroute_email_enable');
delete_option('wp_reroute_append_recipient');
delete_site_option('wp_reroute_append_recipient');
delete_option('wp_reroute_email_address');
delete_site_option('wp_reroute_email_address');
delete_option('wp_reroute_email_message_to_append');
delete_site_option('wp_reroute_email_message_to_append');
delete_option('wp_reroute_email_enable_db_log');
delete_site_option('wp_reroute_email_enable_db_log');
delete_option('wp_reroute_email_db_log_option');
delete_site_option('wp_reroute_email_db_log_option');
delete_option('wp_reroute_email_ignored_subjects');
delete_site_option('wp_reroute_email_ignored_subjects');
delete_option('wpremail_db_version');
delete_site_option('wpremail_db_version');


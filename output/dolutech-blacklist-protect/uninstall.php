<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('blwp_blacklist_enabled');
delete_site_option('blwp_blacklist_enabled');
delete_option('blwp_auto_report');
delete_site_option('blwp_auto_report');
delete_option('blwp_whitelist');
delete_site_option('blwp_whitelist');
delete_option('blwp_manual_blocked_ips');
delete_site_option('blwp_manual_blocked_ips');
delete_option('blwp_max_login_attempts');
delete_site_option('blwp_max_login_attempts');
delete_option('blwp_temp_block_enabled');
delete_site_option('blwp_temp_block_enabled');
delete_option('blwp_temp_block_duration');
delete_site_option('blwp_temp_block_duration');
delete_option('blwp_secret_key_enabled');
delete_site_option('blwp_secret_key_enabled');
delete_option('blwp_secret_key');
delete_site_option('blwp_secret_key');
delete_option('blwp_user_block_enabled');
delete_site_option('blwp_user_block_enabled');
delete_option('blwp_blocked_usernames');
delete_site_option('blwp_blocked_usernames');
delete_option('blwp_recaptcha_enabled');
delete_site_option('blwp_recaptcha_enabled');
delete_option('blwp_recaptcha_site_key');
delete_site_option('blwp_recaptcha_site_key');
delete_option('blwp_recaptcha_secret_key');
delete_site_option('blwp_recaptcha_secret_key');
delete_option('blwp_block_xmlrpc');
delete_site_option('blwp_block_xmlrpc');
delete_option('blwp_xmlrpc_log_attempts');
delete_site_option('blwp_xmlrpc_log_attempts');
delete_option('blwp_max_xmlrpc_attempts');
delete_site_option('blwp_max_xmlrpc_attempts');
delete_option('blwp_disable_dangerous_xmlrpc');
delete_site_option('blwp_disable_dangerous_xmlrpc');
delete_option('blwp_maxmind_enabled');
delete_site_option('blwp_maxmind_enabled');
delete_option('blwp_maxmind_account_id');
delete_site_option('blwp_maxmind_account_id');
delete_option('blwp_maxmind_api_key');
delete_site_option('blwp_maxmind_api_key');
delete_option('blwp_blocked_countries');
delete_site_option('blwp_blocked_countries');
delete_option('blwp_third_party_blacklists');
delete_site_option('blwp_third_party_blacklists');
delete_option('blwp_temp_blocked_ips');
delete_site_option('blwp_temp_blocked_ips');
delete_option('blwp_unblock_tokens');
delete_site_option('blwp_unblock_tokens');
delete_option('blwp_blacklisted_ips');
delete_site_option('blwp_blacklisted_ips');
delete_option('blwp_last_update');
delete_site_option('blwp_last_update');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_blwp_failed_attempts_%', '_site_transient_blwp_failed_attempts_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('blwp_update_blacklist_hook');


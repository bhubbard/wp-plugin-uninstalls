<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gk_resolvescreen');
delete_site_option('gk_resolvescreen');
delete_option('gk_loginexternal');
delete_site_option('gk_loginexternal');
delete_option('gk_agentid');
delete_site_option('gk_agentid');
delete_option('gk_key');
delete_site_option('gk_key');
delete_option('gk_iv');
delete_site_option('gk_iv');
delete_option('gk_orgid');
delete_site_option('gk_orgid');
delete_option('gk_authgroupid');
delete_site_option('gk_authgroupid');
delete_option('gk_service');
delete_site_option('gk_service');
delete_option('gk_dnsreverse');
delete_site_option('gk_dnsreverse');
delete_option('gk_notify_users');
delete_site_option('gk_notify_users');
delete_option('gk_apiurl');
delete_site_option('gk_apiurl');
delete_option('gk_verifyssl');
delete_site_option('gk_verifyssl');
delete_option('gk_mailsubject');
delete_site_option('gk_mailsubject');
delete_option('gk_mailhtml');
delete_site_option('gk_mailhtml');
delete_option('gk_tinc');
delete_site_option('gk_tinc');
delete_option('gktinc_api_key');
delete_site_option('gktinc_api_key');
delete_option('gktinc_protectiongroup_hashid');
delete_site_option('gktinc_protectiongroup_hashid');
delete_option('gktinc_default_challenge_level');
delete_site_option('gktinc_default_challenge_level');
delete_option('gktinc_level');
delete_site_option('gktinc_level');
delete_option('gktinc_pre_check');
delete_site_option('gktinc_pre_check');
delete_option('gktinc_pre_enforce_block');
delete_site_option('gktinc_pre_enforce_block');
delete_option('gk_debug');
delete_site_option('gk_debug');
delete_option('dnsreverse');
delete_site_option('dnsreverse');

// Clear Cron Jobs
wp_clear_scheduled_hook('gk_unlock');
wp_clear_scheduled_hook('clear_blocked_ips_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'session_tokens' ) );


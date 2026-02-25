<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ht_honeypot_path');
delete_site_option('ht_honeypot_path');
delete_option('ht_use_custom_honeypot');
delete_site_option('ht_use_custom_honeypot');
delete_option('ht_use_body_open_honeypot');
delete_site_option('ht_use_body_open_honeypot');
delete_option('ht_use_menu_honeypot');
delete_site_option('ht_use_menu_honeypot');
delete_option('ht_use_search_form_honeypot');
delete_site_option('ht_use_search_form_honeypot');
delete_option('ht_use_footer_honeypot');
delete_site_option('ht_use_footer_honeypot');
delete_option('ht_use_the_content_honeypot');
delete_site_option('ht_use_the_content_honeypot');
delete_option('ht_use_istorm');
delete_site_option('ht_use_istorm');
delete_option('ht_isc_attack_threshold');
delete_site_option('ht_isc_attack_threshold');
delete_option('ht_isc_day_span');
delete_site_option('ht_isc_day_span');
delete_option('ht_isc_block_days');
delete_site_option('ht_isc_block_days');
delete_option('ht_isc_block_ip6');
delete_site_option('ht_isc_block_ip6');
delete_option('ht_use_spamcop');
delete_site_option('ht_use_spamcop');
delete_option('ht_use_project_honeypot');
delete_site_option('ht_use_project_honeypot');
delete_option('ht_automatic_bing_ranges');
delete_site_option('ht_automatic_bing_ranges');
delete_option('ht_automatic_google_ranges');
delete_site_option('ht_automatic_google_ranges');
delete_option('ht_ph_api_key');
delete_site_option('ht_ph_api_key');
delete_option('ht_ph_bl_days');
delete_site_option('ht_ph_bl_days');
delete_option('ht_ph_bl_threat_score');
delete_site_option('ht_ph_bl_threat_score');
delete_option('ht_ph_check_ip_interval');
delete_site_option('ht_ph_check_ip_interval');
delete_option('ht_restrict_to_allowlist');
delete_site_option('ht_restrict_to_allowlist');
delete_option('ht_login_mon');
delete_site_option('ht_login_mon');
delete_option('ht_login_limit');
delete_site_option('ht_login_limit');
delete_option('ht_login_time_span');
delete_site_option('ht_login_time_span');
delete_option('ht_login_block_time');
delete_site_option('ht_login_block_time');
delete_option('ht_show_login_count');
delete_site_option('ht_show_login_count');
delete_option('ht_404_mon');
delete_site_option('ht_404_mon');
delete_option('ht_404_limit');
delete_site_option('ht_404_limit');
delete_option('ht_404_time_span');
delete_site_option('ht_404_time_span');
delete_option('ht_404_block_time');
delete_site_option('ht_404_block_time');
delete_option('ht_response_code');
delete_site_option('ht_response_code');
delete_option('ht_banned_usernames');
delete_site_option('ht_banned_usernames');
delete_option('ht_hide_usernames');
delete_site_option('ht_hide_usernames');
delete_option('ht_site_level_lists');
delete_site_option('ht_site_level_lists');
delete_option('ht_ph_bl_max_days');
delete_site_option('ht_ph_bl_max_days');
delete_option('ht_plugin_version');
delete_site_option('ht_plugin_version');
delete_option('_site_transient_timeout_HT_delete_blocked_ips');
delete_site_option('_site_transient_timeout_HT_delete_blocked_ips');
delete_option('_site_transient_timeout_HT_spam_records_checked');
delete_site_option('_site_transient_timeout_HT_spam_records_checked');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('ht_bl_threat_score');
delete_site_option('ht_bl_threat_score');
delete_option('ht_only_allow_whitelist');
delete_site_option('ht_only_allow_whitelist');
delete_option('_site_transient_timeout_HT_clean_temp_allowlist');
delete_site_option('_site_transient_timeout_HT_clean_temp_allowlist');
delete_option('ht_istorm_retry');
delete_site_option('ht_istorm_retry');

// Delete Transients
delete_transient('HT_spam_records_checked');
delete_site_transient('HT_spam_records_checked');
delete_transient('HT_delete_blocked_ips');
delete_site_transient('HT_delete_blocked_ips');
delete_transient('HT_clean_temp_allowlist');
delete_site_transient('HT_clean_temp_allowlist');

// Clear Cron Jobs
wp_clear_scheduled_hook('HT_update_searchbot_ranges');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'nickname' ) );


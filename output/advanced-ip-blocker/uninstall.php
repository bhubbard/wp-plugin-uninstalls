<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('advaipbl_version_installed');
delete_site_option('advaipbl_version_installed');
delete_option('advaipbl_run_setup_wizard');
delete_site_option('advaipbl_run_setup_wizard');
delete_option('advaipbl_spamhaus_last_update');
delete_site_option('advaipbl_spamhaus_last_update');
delete_option('advaipbl_blocked_user_agents');
delete_site_option('advaipbl_blocked_user_agents');
delete_option('advaipbl_whitelisted_user_agents');
delete_site_option('advaipbl_whitelisted_user_agents');
delete_option('advaipbl_honeypot_urls');
delete_site_option('advaipbl_honeypot_urls');
delete_option('advaipbl_ips_whitelist');
delete_site_option('advaipbl_ips_whitelist');
delete_option('advaipbl_telemetry_notice_dismissed');
delete_site_option('advaipbl_telemetry_notice_dismissed');
delete_option('advaipbl_spamhaus_asn_list');
delete_site_option('advaipbl_spamhaus_asn_list');
delete_option('advaipbl_blocked_ips_threat_score');
delete_site_option('advaipbl_blocked_ips_threat_score');
delete_option('advaipbl_community_blocklist');
delete_site_option('advaipbl_community_blocklist');
delete_option('advaipbl_db_version');
delete_site_option('advaipbl_db_version');
delete_option('advaipbl_admin_ip_whitelist_trigger');
delete_site_option('advaipbl_admin_ip_whitelist_trigger');
delete_option('advaipbl_legacy_options_cleaned');
delete_site_option('advaipbl_legacy_options_cleaned');
delete_option('advaipbl_ip_table_migration_complete');
delete_site_option('advaipbl_ip_table_migration_complete');
delete_option('advaipbl_settings');
delete_site_option('advaipbl_settings');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('advaipbl_autoload_version');
delete_site_option('advaipbl_autoload_version');
delete_option('advaipbl_usm_sessions_per_page');
delete_site_option('advaipbl_usm_sessions_per_page');

// Delete Transients
delete_transient('advaipbl_abuseipdb_paused');
delete_site_transient('advaipbl_abuseipdb_paused');
delete_transient('advaipbl_abuseipdb_notif_sent');
delete_site_transient('advaipbl_abuseipdb_notif_sent');
delete_transient('advaipbl_crons_scheduled');
delete_site_transient('advaipbl_crons_scheduled');
delete_transient('advaipbl_crons_scheduled_v866');
delete_site_transient('advaipbl_crons_scheduled_v866');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_advaipbl_transient_api_key_%', '_site_transient_advaipbl_transient_api_key_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_advaipbl_grace_pass_%', '_site_transient_advaipbl_grace_pass_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_advaipbl_challenge_%', '_site_transient_advaipbl_challenge_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_advaipbl_verified_bot_%', '_site_transient_advaipbl_verified_bot_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('advaipbl_admin_notice');
delete_site_transient('advaipbl_admin_notice');
delete_transient('advaipbl_lockdown_active_xmlrpc');
delete_site_transient('advaipbl_lockdown_active_xmlrpc');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_advaipbl_blocked_ip_%', '_site_transient_advaipbl_blocked_ip_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('advaipbl_active_sessions_cache');
delete_site_transient('advaipbl_active_sessions_cache');
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('update_core');
delete_site_transient('update_core');
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('advaipbl_update_spamhaus_list_event');
wp_clear_scheduled_hook('advaipbl_send_telemetry_data_event');
wp_clear_scheduled_hook('advaipbl_threat_score_decay_event');
wp_clear_scheduled_hook('advaipbl_signature_analysis_event');
wp_clear_scheduled_hook('advaipbl_purge_old_logs_event');
wp_clear_scheduled_hook('advaipbl_send_summary_email');
wp_clear_scheduled_hook('advaipbl_send_signature_summary_email');
wp_clear_scheduled_hook('advaipbl_update_geoip_db_event');
wp_clear_scheduled_hook('advaipbl_clear_expired_blocks_event');
wp_clear_scheduled_hook('advaipbl_cleanup_expired_cache_event');
wp_clear_scheduled_hook('advaipbl_daily_fim_scan');
wp_clear_scheduled_hook('advaipbl_scheduled_scan_event');
wp_clear_scheduled_hook('advaipbl_community_report_event_v2');
wp_clear_scheduled_hook('advaipbl_community_report_event');
wp_clear_scheduled_hook('advaipbl_update_community_list_event');
wp_clear_scheduled_hook('advaipbl_cloudflare_cleanup_event');
wp_clear_scheduled_hook('advaipbl_cloudflare_sync_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_advaipbl_2fa_setup_required' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_advaipbl_2fa_setup_required' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_advaipbl_2fa_setup_required' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_advaipbl_2fa_setup_required' ) );


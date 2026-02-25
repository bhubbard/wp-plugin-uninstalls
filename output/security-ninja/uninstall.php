<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('registration');
delete_site_option('registration');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('wf_sn_active_plugins');
delete_site_option('wf_sn_active_plugins');
delete_option('wf_sn_encryption_key');
delete_site_option('wf_sn_encryption_key');
delete_option('wf_sn_site_id');
delete_site_option('wf_sn_site_id');
delete_option('wf_sn_encryption_key_old');
delete_site_option('wf_sn_encryption_key_old');
delete_option('wf_sn_vu_vulns_notice');
delete_site_option('wf_sn_vu_vulns_notice');
delete_option('wf_sn_review_notice');
delete_site_option('wf_sn_review_notice');
delete_option('secnin_fs_migrated2fs');
delete_site_option('secnin_fs_migrated2fs');
delete_option('wf_sn_cf_blocked_count');
delete_site_option('wf_sn_cf_blocked_count');
delete_option('wf_sn_cf_blocked_today');
delete_site_option('wf_sn_cf_blocked_today');
delete_option('wf_sn_cf_bl_ips');
delete_site_option('wf_sn_cf_bl_ips');
delete_option('wf_sn_cf_vl');
delete_site_option('wf_sn_cf_vl');
delete_option('wf_sn_cf_ips');
delete_site_option('wf_sn_cf_ips');
delete_option('wf_sn_banned_ips');
delete_site_option('wf_sn_banned_ips');
delete_option('wf_sn_cf');
delete_site_option('wf_sn_cf');
delete_option('wf_sn_cs_results');
delete_site_option('wf_sn_cs_results');
delete_option('wf_sn_results');
delete_site_option('wf_sn_results');
delete_option('wf_sn_el');
delete_site_option('wf_sn_el');
delete_option('secnin_last_checked_admin_id');
delete_site_option('secnin_last_checked_admin_id');
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');
delete_option('wf_sn_settings_migrated');
delete_site_option('wf_sn_settings_migrated');
delete_option('wf_sn_options');
delete_site_option('wf_sn_options');
delete_option('wf_sn_wl');
delete_site_option('wf_sn_wl');
delete_option('wf_sn_vu_settings_group');
delete_site_option('wf_sn_vu_settings_group');
delete_option('wf_sn_ss');
delete_site_option('wf_sn_ss');
delete_option('wf_sn_api_allowed_origins');
delete_site_option('wf_sn_api_allowed_origins');
delete_option('wf_sn_api_access_logs');
delete_site_option('wf_sn_api_access_logs');
delete_option('wf_sn_ms_results');
delete_site_option('wf_sn_ms_results');
delete_option('wf_sn_vu_last_update');
delete_site_option('wf_sn_vu_last_update');
delete_option('wf_sn_known_vuln_db_counts');
delete_site_option('wf_sn_known_vuln_db_counts');
delete_option('wf_sn_vu_last_email');
delete_site_option('wf_sn_vu_last_email');
delete_option('wf_sn_vulnerabilities_cache');
delete_site_option('wf_sn_vulnerabilities_cache');
delete_option('wf_sn_vulnerabilities_cache_timestamp');
delete_site_option('wf_sn_vulnerabilities_cache_timestamp');
delete_option('wf_sn_scan_summary');
delete_site_option('wf_sn_scan_summary');
delete_option('wf_sn_vu_vulns');
delete_site_option('wf_sn_vu_vulns');
delete_option('wf_sn_vu_outdated');
delete_site_option('wf_sn_vu_outdated');
delete_option('wf_sn_vu_settings');
delete_site_option('wf_sn_vu_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wf_sn_vu_file_validators_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('security_tests_results');
delete_site_option('security_tests_results');
delete_option('secnin_activation_redirect');
delete_site_option('secnin_activation_redirect');
delete_option('wfsn_freemius_state');
delete_site_option('wfsn_freemius_state');
delete_option('wf_sn_tests');
delete_site_option('wf_sn_tests');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_security_ninja_%', '_site_transient_security_ninja_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_geoip_%', '_site_transient_geoip_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('secnin_dashboard_updates');
delete_site_transient('secnin_dashboard_updates');
delete_transient('wf_sn_return_vulnerabilities');
delete_site_transient('wf_sn_return_vulnerabilities');
delete_transient('wp_vers_status');
delete_site_transient('wp_vers_status');
delete_transient('secnin_manual_vuln_scan_last');
delete_site_transient('secnin_manual_vuln_scan_last');
delete_transient('sn_secret_url_reset_success');
delete_site_transient('sn_secret_url_reset_success');
delete_transient('settings_errors');
delete_site_transient('settings_errors');
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');

// Clear Cron Jobs
wp_clear_scheduled_hook('secnin_run_tests_event');
wp_clear_scheduled_hook('secnin_run_core_scanner');
wp_clear_scheduled_hook('secnin_check_direct_admin_creation');
wp_clear_scheduled_hook('secnin_prune_logs_cron');
wp_clear_scheduled_hook('wf_sn_check_new_admins');
wp_clear_scheduled_hook('secnin_daily_vulnerability_warning_check');
wp_clear_scheduled_hook('secnin_update_vuln_list');
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sn_last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sn_last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sn_last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sn_last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'secnin_2fa_secret' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'secnin_2fa_secret' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'secnin_2fa_secret' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'secnin_2fa_secret' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'secnin_2fa_setup_complete' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'secnin_2fa_setup_complete' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'secnin_2fa_setup_complete' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'secnin_2fa_setup_complete' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'secnin_2fa_code_validated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'secnin_2fa_code_validated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'secnin_2fa_code_validated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'secnin_2fa_code_validated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );


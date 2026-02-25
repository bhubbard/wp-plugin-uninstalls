<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wdev-frash');
delete_site_option('wdev-frash');
delete_option('wpmudev_apikey');
delete_site_option('wpmudev_apikey');
delete_option('allowedthemes');
delete_site_option('allowedthemes');
delete_option('wp_defender_shown_activator');
delete_site_option('wp_defender_shown_activator');
delete_option('wd_show_new_feature');
delete_site_option('wd_show_new_feature');
delete_option('wd_hardener_settings');
delete_site_option('wd_hardener_settings');
delete_option('wd_db_version');
delete_site_option('wd_db_version');
delete_option('wp_defender_is_activated');
delete_site_option('wp_defender_is_activated');
delete_option('wd_audit_fetch_checkpoint');
delete_site_option('wd_audit_fetch_checkpoint');
delete_option('wpdef_clear_schedule_firewall_cleanup_temp_blocklist_ips');
delete_site_option('wpdef_clear_schedule_firewall_cleanup_temp_blocklist_ips');
delete_option('jetpack_active_modules');
delete_site_option('jetpack_active_modules');
delete_option('site_admins');
delete_site_option('site_admins');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'defender_security_tweaks_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpdef_ip_blocklist_sync_last_run_time');
delete_site_option('wpdef_ip_blocklist_sync_last_run_time');
delete_option('wp_defender_onboarding_step');
delete_site_option('wp_defender_onboarding_step');
delete_option('wp_defender_is_free_activated');
delete_site_option('wp_defender_is_free_activated');
delete_option('wd_nofresh_install');
delete_site_option('wd_nofresh_install');
delete_option('wphb_settings');
delete_site_option('wphb_settings');
delete_option('wp_defender');
delete_site_option('wp_defender');
delete_option('wpdefender_config_clear_active_tag');
delete_site_option('wpdefender_config_clear_active_tag');
delete_option('wpdefender_preset_configs_transient_time');
delete_site_option('wpdefender_preset_configs_transient_time');
delete_option('wp_defender_config_default');
delete_site_option('wp_defender_config_default');
delete_option('disable-xml-rpc');
delete_site_option('disable-xml-rpc');
delete_option('wd_audit_cached');
delete_site_option('wd_audit_cached');
delete_option('wd_show_ip_detection_notice');
delete_site_option('wd_show_ip_detection_notice');

// Delete Transients
delete_transient('wpdef_antibot_global_firewall_db_blocklist_count');
delete_site_transient('wpdef_antibot_global_firewall_db_blocklist_count');
delete_transient('update_core');
delete_site_transient('update_core');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wd-rp-%', '_site_transient_wd-rp-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('def_waf_status');
delete_site_transient('def_waf_status');
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

// Clear Cron Jobs
wp_clear_scheduled_hook('defender_hub_sync');
wp_clear_scheduled_hook('wpdef_fetch_global_ip_list');
wp_clear_scheduled_hook('wpdef_rotate_bot_trap_secret_hash');
wp_clear_scheduled_hook('wpdef_confirm_antibot_toggle_on_hosting');
wp_clear_scheduled_hook('wpdef_antibot_global_firewall_fetch_blocklist');
wp_clear_scheduled_hook('firewall_cleanup_temp_blocklist_ips');
wp_clear_scheduled_hook('wpdef_smart_ip_detection_ping');
wp_clear_scheduled_hook('firewall_clean_up_logs');
wp_clear_scheduled_hook('audit_sync_events');
wp_clear_scheduled_hook('audit_clean_up_logs');
wp_clear_scheduled_hook('wdf_maybe_send_report');
wp_clear_scheduled_hook('wp_defender_clear_logs');
wp_clear_scheduled_hook('wpdef_sec_key_gen');
wp_clear_scheduled_hook('wpdef_clear_scan_logs');
wp_clear_scheduled_hook('wpdef_log_rotational_delete');
wp_clear_scheduled_hook('wpdef_update_geoip');
wp_clear_scheduled_hook('wpdef_quarantine_delete_expired');
wp_clear_scheduled_hook('wpdef_firewall_clean_up_lockout');
wp_clear_scheduled_hook('wpdef_firewall_send_compact_logs_to_api');
wp_clear_scheduled_hook('wpdef_firewall_fetch_trusted_proxy_preset_ips');
wp_clear_scheduled_hook('wpdef_firewall_clean_up_unlockout');
wp_clear_scheduled_hook('wpdef_firewall_whitelist_server_public_ip');
wp_clear_scheduled_hook('wpdef_rotate_malicious_bot_secret_hash');
wp_clear_scheduled_hook('lockoutReportCron');
wp_clear_scheduled_hook('auditReportCron');
wp_clear_scheduled_hook('cleanUpOldLog');
wp_clear_scheduled_hook('scanReportCron');
wp_clear_scheduled_hook('tweaksSendNotification');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rich_editing' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rich_editing' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rich_editing' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rich_editing' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'syntax_highlighting' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'syntax_highlighting' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'syntax_highlighting' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'syntax_highlighting' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'comment_shortcuts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'comment_shortcuts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'comment_shortcuts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'comment_shortcuts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'locale' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'locale' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'locale' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'locale' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'admin_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'admin_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'admin_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'admin_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'use_ssl' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'use_ssl' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'use_ssl' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'use_ssl' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'show_admin_bar_front' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'show_admin_bar_front' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'show_admin_bar_front' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'show_admin_bar_front' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wd_last_password_change' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wd_last_password_change' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wd_last_password_change' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wd_last_password_change' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'wd_2fa_attempt_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'wd_2fa_attempt_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'wd_2fa_attempt_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'wd_2fa_attempt_%' ) );


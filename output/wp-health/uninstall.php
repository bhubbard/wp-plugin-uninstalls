<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_umbrella_disallow_one_click_access');
delete_site_option('wp_umbrella_disallow_one_click_access');
delete_option('wp_health_allow_tracking');
delete_site_option('wp_health_allow_tracking');
delete_option('wp_umbrella_backup_version');
delete_site_option('wp_umbrella_backup_version');
delete_option('wp_umbrella_backup_data_process');
delete_site_option('wp_umbrella_backup_data_process');
delete_option('wphealth_version');
delete_site_option('wphealth_version');
delete_option('wp_health_version_god_handler');
delete_site_option('wp_health_version_god_handler');
delete_option('wp_umbrella_number_trial_auto_install');
delete_site_option('wp_umbrella_number_trial_auto_install');
delete_option('wp_umbrella_login');
delete_site_option('wp_umbrella_login');
delete_option('wp_umbrella_backup_suffix_security');
delete_site_option('wp_umbrella_backup_suffix_security');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('wp_umbrella_backup_profile_data');
delete_site_option('wp_umbrella_backup_profile_data');
delete_option('wp_umbrella_backup_profile_database_data');
delete_site_option('wp_umbrella_backup_profile_database_data');
delete_option('vhp_varnish_ip');
delete_site_option('vhp_varnish_ip');
delete_option('auto_core_update_failed');
delete_site_option('auto_core_update_failed');
delete_option('acf_pro_license');
delete_site_option('acf_pro_license');
delete_option('rg_gforms_key');
delete_site_option('rg_gforms_key');
delete_option('gform_license_info');
delete_site_option('gform_license_info');
delete_option('rank_math_connect_data');
delete_site_option('rank_math_connect_data');
delete_option('secupress_pro_consumer_key');
delete_site_option('secupress_pro_consumer_key');
delete_option('secupress_pro_consumer_email');
delete_site_option('secupress_pro_consumer_email');
delete_option('woocommerce_helper_data');
delete_site_option('woocommerce_helper_data');
delete_option('wpforms_license');
delete_site_option('wpforms_license');
delete_option('wp_rocket_settings');
delete_site_option('wp_rocket_settings');
delete_option('wpseo_premium_license_status');
delete_site_option('wpseo_premium_license_status');
delete_option('current_theme');
delete_site_option('current_theme');
delete_option('update_themes');
delete_site_option('update_themes');
delete_option('_site_transient_update_core');
delete_site_option('_site_transient_update_core');
delete_option('wp-health');
delete_site_option('wp-health');
delete_option('_wp_umbrella_is_new_hash');
delete_site_option('_wp_umbrella_is_new_hash');

// Delete Transients
delete_transient('wp_umbrella_white_label_data_cache');
delete_site_transient('wp_umbrella_white_label_data_cache');
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('secupress_pro_license_data');
delete_site_transient('secupress_pro_license_data');
delete_transient('_woocommerce_helper_subscriptions');
delete_site_transient('_woocommerce_helper_subscriptions');
delete_transient('yoast_premium_site_information');
delete_site_transient('yoast_premium_site_information');
delete_transient('et_update_themes');
delete_site_transient('et_update_themes');
delete_transient('wp_umbrella_snapshot_lock');
delete_site_transient('wp_umbrella_snapshot_lock');
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_umbrella_snapshot_data_run_queue');
wp_clear_scheduled_hook('wp_umbrella_error_check_run_queue');
wp_clear_scheduled_hook('wp_umbrella_clean_table_run_queue');
wp_clear_scheduled_hook('wp_umbrella_task_backup_run_queue');
wp_clear_scheduled_hook('wp_umbrella_run_manual_backup_task');
wp_clear_scheduled_hook('wp_umbrella_stop_manual_backup_task');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'session_tokens' ) );


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('backwpup_onboarding');
delete_site_option('backwpup_onboarding');
delete_option('backwpup_cfg_hash');
delete_site_option('backwpup_cfg_hash');
delete_option('backwpup_activation_time');
delete_site_option('backwpup_activation_time');
delete_option('backwpup_easycron_update');
delete_site_option('backwpup_easycron_update');
delete_option('WpFastestCachePathSettings');
delete_site_option('WpFastestCachePathSettings');
delete_option('backwpup_messages');
delete_site_option('backwpup_messages');
delete_option('backwpup_cfg_logfolder');
delete_site_option('backwpup_cfg_logfolder');
delete_option('backwpup_cfg_gzlogs');
delete_site_option('backwpup_cfg_gzlogs');
delete_option('backwpup_cfg_jobrunauthkey');
delete_site_option('backwpup_cfg_jobrunauthkey');
delete_option('backwpup_cfg_dropboxappkey');
delete_site_option('backwpup_cfg_dropboxappkey');
delete_option('backwpup_cfg_dropboxappsecret');
delete_site_option('backwpup_cfg_dropboxappsecret');
delete_option('backwpup_cfg_dropboxsandboxappkey');
delete_site_option('backwpup_cfg_dropboxsandboxappkey');
delete_option('backwpup_cfg_dropboxsandboxappsecret');
delete_site_option('backwpup_cfg_dropboxsandboxappsecret');
delete_option('backwpup_cfg_sugarsynckey');
delete_site_option('backwpup_cfg_sugarsynckey');
delete_option('backwpup_cfg_sugarsyncsecret');
delete_site_option('backwpup_cfg_sugarsyncsecret');
delete_option('backwpup_cfg_sugarsyncappid');
delete_site_option('backwpup_cfg_sugarsyncappid');
delete_option('backwpup_cfg_easycronjobid');
delete_site_option('backwpup_cfg_easycronjobid');
delete_option('backwpup_cfg_easycronapikey');
delete_site_option('backwpup_cfg_easycronapikey');
delete_option('backwpup_cfg_showfoldersize');
delete_site_option('backwpup_cfg_showfoldersize');
delete_option('backwpup_archiveformat');
delete_site_option('backwpup_archiveformat');
delete_option('backwpup_version');
delete_site_option('backwpup_version');
delete_option('backwpup');
delete_site_option('backwpup');
delete_option('backwpup_jobs');
delete_site_option('backwpup_jobs');
delete_option('backwpup_cfg_jobnotranslate');
delete_site_option('backwpup_cfg_jobnotranslate');
delete_option('backwpup_cfg_loglevel');
delete_site_option('backwpup_cfg_loglevel');
delete_option('backwpup_cfg_jobziparchivemethod');
delete_site_option('backwpup_cfg_jobziparchivemethod');
delete_option('backwpup_previous_version');
delete_site_option('backwpup_previous_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'backwpup_cfg_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('backwpup_archiveencryption');
delete_site_option('backwpup_archiveencryption');
delete_option('backwpup_cfg_jobmaxexecutiontime');
delete_site_option('backwpup_cfg_jobmaxexecutiontime');
delete_option('backwpup_cfg_jobwaittimems');
delete_site_option('backwpup_cfg_jobwaittimems');
delete_option('backwpup_cfg_jobdooutput');
delete_site_option('backwpup_cfg_jobdooutput');
delete_option('backwpup_cfg_maxlogs');
delete_site_option('backwpup_cfg_maxlogs');
delete_option('backwpup_cfg_mailaddresslog');
delete_site_option('backwpup_cfg_mailaddresslog');
delete_option('backwpup_cfg_mailerroronly');
delete_site_option('backwpup_cfg_mailerroronly');
delete_option('backwpup_cfg_mailaddresssenderlog');
delete_site_option('backwpup_cfg_mailaddresssenderlog');
delete_option('backwpup_cfg_authentication');
delete_site_option('backwpup_cfg_authentication');
delete_option('backwpup_cfg_jobstepretry');
delete_site_option('backwpup_cfg_jobstepretry');
delete_option('backwpup_cfg_encryption');
delete_site_option('backwpup_cfg_encryption');
delete_option('backwpup_cfg_encryptionkey');
delete_site_option('backwpup_cfg_encryptionkey');
delete_option('backwpup_cfg_publickey');
delete_site_option('backwpup_cfg_publickey');
delete_option('backwpup_dinotopt_informations_505_notice');
delete_site_option('backwpup_dinotopt_informations_505_notice');
delete_option('backwpup_cfg_showadminbar');
delete_site_option('backwpup_cfg_showadminbar');
delete_option('backwpup_cfg_keepplugindata');
delete_site_option('backwpup_cfg_keepplugindata');
delete_option('backwpup_cfg_windows');
delete_site_option('backwpup_cfg_windows');
delete_option('backwpup_cfg_httpauthuser');
delete_site_option('backwpup_cfg_httpauthuser');
delete_option('backwpup_cfg_httpauthpassword');
delete_site_option('backwpup_cfg_httpauthpassword');
delete_option('backwpup_mixpanel_optin');
delete_site_option('backwpup_mixpanel_optin');
delete_option('backwpup_beta_optin');
delete_site_option('backwpup_beta_optin');
delete_option('backwpup_settings_migration_done');
delete_site_option('backwpup_settings_migration_done');
delete_option('backwpup_backup_now_job_id');
delete_site_option('backwpup_backup_now_job_id');
delete_option('license_product_id');
delete_site_option('license_product_id');
delete_option('license_api_key');
delete_site_option('license_api_key');
delete_option('license_instance_key');
delete_site_option('license_instance_key');
delete_option('license_status');
delete_site_option('license_status');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_beta_optin' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_mixpanel_optin' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_backwpup_%', '_site_transient_backwpup_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_ftp', '_site_transient_%_ftp' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_msazure', '_site_transient_%_msazure' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_rsc', '_site_transient_%_rsc' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_s3', '_site_transient_%_s3' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_SUGARSYNC', '_site_transient_%_SUGARSYNC' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_backwpup_easycron_%', '_site_transient_backwpup_easycron_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('backwpup_cookies');
delete_site_transient('backwpup_cookies');
delete_transient('doing_cron');
delete_site_transient('doing_cron');
delete_transient('backwpup_onedrive_state');
delete_site_transient('backwpup_onedrive_state');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_backwpup_chatbot_context_%', '_site_transient_backwpup_chatbot_context_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('backwpup_first_backup');
delete_site_transient('backwpup_first_backup');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_trunk_version', '_site_transient_%_trunk_version' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('backwpup_cron');
wp_clear_scheduled_hook('backwpup_check_cleanup');
wp_clear_scheduled_hook('wp_update_plugins');
wp_clear_scheduled_hook('wp_version_check');
wp_clear_scheduled_hook('wp_update_themes');
wp_clear_scheduled_hook('wp_scheduled_delete');
wp_clear_scheduled_hook('backwpup_rsc_delete_segment_files');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'backwpup_message_boxes_not_display' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'backwpup_message_boxes_not_display' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'backwpup_message_boxes_not_display' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'backwpup_message_boxes_not_display' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'backwpup_notification_boxes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'backwpup_notification_boxes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'backwpup_notification_boxes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'backwpup_notification_boxes' ) );


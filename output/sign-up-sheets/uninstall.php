<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dls_sus_email_from');
delete_site_option('dls_sus_email_from');
delete_option('dls_sus_detailed_errors');
delete_site_option('dls_sus_detailed_errors');
delete_option('fdsus_disabled_roles');
delete_site_option('fdsus_disabled_roles');
delete_option('dls_sus_recaptcha_private_key');
delete_site_option('dls_sus_recaptcha_private_key');
delete_option('dls_sus_email_subject');
delete_site_option('dls_sus_email_subject');
delete_option('dls_sus_custom_task_fields');
delete_site_option('dls_sus_custom_task_fields');
delete_option('dls_sus_db_version');
delete_site_option('dls_sus_db_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_alert_recipient' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('dls_sus_sheet_slug');
delete_site_option('dls_sus_sheet_slug');
delete_option('dls_sus_hide_address');
delete_site_option('dls_sus_hide_address');
delete_option('dls_sus_db_version_type');
delete_site_option('dls_sus_db_version_type');
delete_option('fdsus_disable_signup_link_hash');
delete_site_option('fdsus_disable_signup_link_hash');
delete_option('fdsus_signup_link_hash');
delete_site_option('fdsus_signup_link_hash');
delete_option('dls_sus_roles');
delete_site_option('dls_sus_roles');
delete_option('dls_sus_sheet_order');
delete_site_option('dls_sus_sheet_order');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'dls_sus_text_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('dls_sus_signup_receipt');
delete_site_option('dls_sus_signup_receipt');
delete_option('dls_sus_display_all');
delete_site_option('dls_sus_display_all');
delete_option('dls_sus_disable_user_autopopulate');
delete_site_option('dls_sus_disable_user_autopopulate');
delete_option('dls_sus_disable_honeypot');
delete_site_option('dls_sus_disable_honeypot');
delete_option('dls_sus_deactivate_email_validation');
delete_site_option('dls_sus_deactivate_email_validation');
delete_option('dls_sus_disable_captcha');
delete_site_option('dls_sus_disable_captcha');
delete_option('dls_sus_recaptcha');
delete_site_option('dls_sus_recaptcha');
delete_option('dls_sus_recaptcha_version');
delete_site_option('dls_sus_recaptcha_version');
delete_option('fdsus_enable_confirmation_email');
delete_site_option('fdsus_enable_confirmation_email');
delete_option('fdsus_enable_removal_confirmation_email');
delete_site_option('fdsus_enable_removal_confirmation_email');
delete_option('fdsus_cache_clear_on_signup');
delete_site_option('fdsus_cache_clear_on_signup');
delete_option('dls_sus_hide_email');
delete_site_option('dls_sus_hide_email');
delete_option('dls_sus_hide_phone');
delete_site_option('dls_sus_hide_phone');
delete_option('dls_sus_optional_phone');
delete_site_option('dls_sus_optional_phone');
delete_option('dls_sus_optional_address');
delete_site_option('dls_sus_optional_address');
delete_option('fdsus_optional_email');
delete_site_option('fdsus_optional_email');
delete_option('dls_sus_recaptcha_public_key');
delete_site_option('dls_sus_recaptcha_public_key');

// Delete Transients
delete_transient('dlssus_migration_running');
delete_site_transient('dlssus_migration_running');
delete_transient('dlssus_migration_timeout_rerun_count');
delete_site_transient('dlssus_migration_timeout_rerun_count');
delete_transient('dlssus_flush_rewrite_rules');
delete_site_transient('dlssus_flush_rewrite_rules');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_admin_notices', '_site_transient_%_admin_notices' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_flush_rewrite_rules', '_site_transient_%_flush_rewrite_rules' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_migration_timeout_rerun_count', '_site_transient_%_migration_timeout_rerun_count' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('fdsus_dbupdate_action');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dlssus_id_v2_0' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dlssus_id_v2_0' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dlssus_id_v2_0' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dlssus_id_v2_0' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dlssus_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dlssus_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dlssus_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dlssus_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dlssusdlssus_use_task_dates' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dlssusdlssus_use_task_dates' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dlssusdlssus_use_task_dates' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dlssusdlssus_use_task_dates' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dlssus_sheet_bcc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dlssus_sheet_bcc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dlssus_sheet_bcc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dlssus_sheet_bcc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dlssus_optional_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dlssus_optional_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dlssus_optional_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dlssus_optional_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dlssus_optional_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dlssus_optional_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dlssus_optional_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dlssus_optional_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dlssus_hide_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dlssus_hide_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dlssus_hide_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dlssus_hide_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dlssus_hide_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dlssus_hide_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dlssus_hide_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dlssus_hide_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dlssus_hide_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dlssus_hide_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dlssus_hide_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dlssus_hide_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dlssus_compact_signups' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dlssus_compact_signups' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dlssus_compact_signups' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dlssus_compact_signups' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dlssus_use_task_checkboxes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dlssus_use_task_checkboxes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dlssus_use_task_checkboxes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dlssus_use_task_checkboxes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dlssus_task_signup_limit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dlssus_task_signup_limit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dlssus_task_signup_limit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dlssus_task_signup_limit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dlssus_contiguous_task_signup_limit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dlssus_contiguous_task_signup_limit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dlssus_contiguous_task_signup_limit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dlssus_contiguous_task_signup_limit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dlssus_sheet_reminder_days' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dlssus_sheet_reminder_days' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dlssus_sheet_reminder_days' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dlssus_sheet_reminder_days' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dlssus_sheet_email_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dlssus_sheet_email_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dlssus_sheet_email_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dlssus_sheet_email_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dlssus_sheet_email_conf_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dlssus_sheet_email_conf_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dlssus_sheet_email_conf_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dlssus_sheet_email_conf_message' ) );


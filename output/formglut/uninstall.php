<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('formglut_global_modules_status');
delete_site_option('formglut_global_modules_status');
delete_option('_formglut_global_form_settings');
delete_site_option('_formglut_global_form_settings');
delete_option('_formglut_security_salt');
delete_site_option('_formglut_security_salt');
delete_option('__formglut_global_form_settings');
delete_site_option('__formglut_global_form_settings');
delete_option('_formglut_installed_version');
delete_site_option('_formglut_installed_version');
delete_option('formglut_entry_details_migrated');
delete_site_option('formglut_entry_details_migrated');
delete_option('formglut_db_formglut_logs_added');
delete_site_option('formglut_db_formglut_logs_added');
delete_option('formglut_scheduled_actions_migrated');
delete_site_option('formglut_scheduled_actions_migrated');
delete_option('_fg_ins_by');
delete_site_option('_fg_ins_by');
delete_option('_formglut_hCaptcha_keys_status');
delete_site_option('_formglut_hCaptcha_keys_status');
delete_option('_formglut_reCaptcha_keys_status');
delete_site_option('_formglut_reCaptcha_keys_status');
delete_option('_formglut_turnstile_keys_status');
delete_site_option('_formglut_turnstile_keys_status');
delete_option('_formglut_form_permission');
delete_site_option('_formglut_form_permission');
delete_option('_formglut_reCaptcha_details');
delete_site_option('_formglut_reCaptcha_details');
delete_option('_formglut_hCaptcha_details');
delete_site_option('_formglut_hCaptcha_details');
delete_option('_formglut_turnstile_details');
delete_site_option('_formglut_turnstile_details');
delete_option('_formglut_mailchimp_details');
delete_site_option('_formglut_mailchimp_details');
delete_option('__formglut_payment_module_settings');
delete_site_option('__formglut_payment_module_settings');
delete_option('_formglut_email_report_summary');
delete_site_option('_formglut_email_report_summary');
delete_option('__fg_imorted_forms_map');
delete_site_option('__fg_imorted_forms_map');
delete_option('recently_activated');
delete_site_option('recently_activated');
delete_option('_formglut_ins_by');
delete_site_option('_formglut_ins_by');

// Delete Transients
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('formglut_do_scheduled_tasks');
wp_clear_scheduled_hook('formglut_do_email_report_scheduled_tasks');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_has_formglut' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_has_formglut' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_has_formglut' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_has_formglut' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_formg_forms_has_role' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_formg_forms_has_role' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_formg_forms_has_role' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_formg_forms_has_role' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'formglut_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'formglut_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'formglut_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'formglut_dismissed_notice_%' ) );


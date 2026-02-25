<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fluentform_global_modules_status');
delete_site_option('fluentform_global_modules_status');
delete_option('_fluentform_global_form_settings');
delete_site_option('_fluentform_global_form_settings');
delete_option('_fluentform_security_salt');
delete_site_option('_fluentform_security_salt');
delete_option('_fluentform_installed_version');
delete_site_option('_fluentform_installed_version');
delete_option('fluentform_entry_details_migrated');
delete_site_option('fluentform_entry_details_migrated');
delete_option('fluentform_db_fluentform_logs_added');
delete_site_option('fluentform_db_fluentform_logs_added');
delete_option('fluentform_scheduled_actions_migrated');
delete_site_option('fluentform_scheduled_actions_migrated');
delete_option('_ff_ins_by');
delete_site_option('_ff_ins_by');
delete_option('_fluentform_hCaptcha_keys_status');
delete_site_option('_fluentform_hCaptcha_keys_status');
delete_option('_fluentform_reCaptcha_keys_status');
delete_site_option('_fluentform_reCaptcha_keys_status');
delete_option('_fluentform_turnstile_keys_status');
delete_site_option('_fluentform_turnstile_keys_status');
delete_option('_fluentform_reCaptcha_details');
delete_site_option('_fluentform_reCaptcha_details');
delete_option('_fluentform_form_permission');
delete_site_option('_fluentform_form_permission');
delete_option('_fluentform_cleantalk_details');
delete_site_option('_fluentform_cleantalk_details');
delete_option('_fluentform_default_style_template');
delete_site_option('_fluentform_default_style_template');
delete_option('_fluentform_hCaptcha_details');
delete_site_option('_fluentform_hCaptcha_details');
delete_option('_fluentform_turnstile_details');
delete_site_option('_fluentform_turnstile_details');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fluentform_payment_settings_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('__fluentform_payment_module_settings');
delete_site_option('__fluentform_payment_module_settings');
delete_option('fluentform_payment_settings_stripe');
delete_site_option('fluentform_payment_settings_stripe');
delete_option('_fluentform_double_optin_settings');
delete_site_option('_fluentform_double_optin_settings');
delete_option('_fluentform_mailchimp_details');
delete_site_option('_fluentform_mailchimp_details');
delete_option('_fluentform_email_report_summary');
delete_site_option('_fluentform_email_report_summary');
delete_option('__ff_imorted_forms_map');
delete_site_option('__ff_imorted_forms_map');

// Delete Transients
delete_transient('fluentform_dashboard_stats_v1');
delete_site_transient('fluentform_dashboard_stats_v1');
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

// Clear Cron Jobs
wp_clear_scheduled_hook('fluentform_do_scheduled_tasks');
wp_clear_scheduled_hook('fluentform_do_email_report_scheduled_tasks');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_has_fluentform' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_has_fluentform' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_has_fluentform' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_has_fluentform' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_fluent_forms_allowed_forms' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_fluent_forms_allowed_forms' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_fluent_forms_allowed_forms' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_fluent_forms_allowed_forms' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_fluent_forms_has_specific_forms_permission' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_fluent_forms_has_specific_forms_permission' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_fluent_forms_has_specific_forms_permission' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_fluent_forms_has_specific_forms_permission' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_fluent_forms_has_role' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_fluent_forms_has_role' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_fluent_forms_has_role' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_fluent_forms_has_role' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_form' ) );


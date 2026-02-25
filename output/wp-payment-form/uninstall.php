<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wppayform_statuses');
delete_site_option('wppayform_statuses');
delete_option('_wppayform_pro_license_status');
delete_site_option('_wppayform_pro_license_status');
delete_option('_wppayform_user_dashboard_page');
delete_site_option('_wppayform_user_dashboard_page');
delete_option('wppayform_global_currency_settings');
delete_site_option('wppayform_global_currency_settings');
delete_option('_wppayform_paymattic_user_force_redirect');
delete_site_option('_wppayform_paymattic_user_force_redirect');
delete_option('_wppayform_dashboard_permitted_roles');
delete_site_option('_wppayform_dashboard_permitted_roles');
delete_option('_wppayform_global_cancel_subsription_email_settings');
delete_site_option('_wppayform_global_cancel_subsription_email_settings');
delete_option('_wppayform_enable_paymattic_user_dashboard');
delete_site_option('_wppayform_enable_paymattic_user_dashboard');
delete_option('wppayform_user_dashboard_page');
delete_site_option('wppayform_user_dashboard_page');
delete_option('wppayform_recaptcha_settings');
delete_site_option('wppayform_recaptcha_settings');
delete_option('wppayform_turnstile_settings');
delete_site_option('wppayform_turnstile_settings');
delete_option('wppayform_turnstile_validation_status');
delete_site_option('wppayform_turnstile_validation_status');
delete_option('wppayform_order_items_meta_migrate');
delete_site_option('wppayform_order_items_meta_migrate');
delete_option('wppayform_ip_logging_status');
delete_site_option('wppayform_ip_logging_status');
delete_option('wppayform_honeypot_status');
delete_site_option('wppayform_honeypot_status');
delete_option('wppayform_abandoned_time');
delete_site_option('wppayform_abandoned_time');
delete_option('wppayform_business_name');
delete_site_option('wppayform_business_name');
delete_option('wppayform_business_address');
delete_site_option('wppayform_business_address');
delete_option('wppayform_business_logo');
delete_site_option('wppayform_business_logo');
delete_option('wppayform_integration_status');
delete_site_option('wppayform_integration_status');
delete_option('wppayform_global_modules_status');
delete_site_option('wppayform_global_modules_status');
delete_option('_wppayform_form_permission');
delete_site_option('_wppayform_form_permission');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('wppayform_stripe_payment_settings');
delete_site_option('wppayform_stripe_payment_settings');
delete_option('wppayform_coupon_status');
delete_site_option('wppayform_coupon_status');
delete_option('wppayform_settings');
delete_site_option('wppayform_settings');
delete_option('wppayform_payment_settings_offline');
delete_site_option('wppayform_payment_settings_offline');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wppayform_payment_settings_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wppayform_confirmation_pages');
delete_site_option('wppayform_confirmation_pages');
delete_option('_wppayform_mailchimp_details');
delete_site_option('_wppayform_mailchimp_details');
delete_option('_wppayform_security_salt');
delete_site_option('_wppayform_security_salt');
delete_option('WPF_DB_VERSION');
delete_site_option('WPF_DB_VERSION');

// Delete Transients
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

// Clear Cron Jobs
wp_clear_scheduled_hook('wppayform/daily_reminder_task');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wppayform_form_design_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wppayform_form_design_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wppayform_form_design_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wppayform_form_design_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_recaptcha_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_recaptcha_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_recaptcha_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_recaptcha_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_turnstile_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_turnstile_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_turnstile_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_turnstile_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wppayform_show_title_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wppayform_show_title_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wppayform_show_title_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wppayform_show_title_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wppayform_paymentform_builder_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wppayform_paymentform_builder_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wppayform_paymentform_builder_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wppayform_paymentform_builder_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wppayform_submit_button_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wppayform_submit_button_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wppayform_submit_button_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wppayform_submit_button_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpf_has_recurring_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpf_has_recurring_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpf_has_recurring_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpf_has_recurring_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpf_has_payment_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpf_has_payment_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpf_has_payment_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpf_has_payment_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpf_form_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpf_form_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpf_form_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpf_form_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wppapyform_paymentform_confirmation_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wppapyform_paymentform_confirmation_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wppapyform_paymentform_confirmation_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wppapyform_paymentform_confirmation_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wppayform_paymentform_currency_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wppayform_paymentform_currency_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wppayform_paymentform_currency_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wppayform_paymentform_currency_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wppapyform_receipt_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wppapyform_receipt_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wppapyform_receipt_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wppapyform_receipt_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wppayform_form_scheduling_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wppayform_form_scheduling_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wppayform_form_scheduling_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wppayform_form_scheduling_settings' ) );


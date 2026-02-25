<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('broadfast_debug');
delete_site_option('broadfast_debug');
delete_option('bft_bcc');
delete_site_option('bft_bcc');
delete_option('bft_sender');
delete_site_option('bft_sender');
delete_option('bft_cleanup_raw_log');
delete_site_option('bft_cleanup_raw_log');
delete_option('bft_sleep');
delete_site_option('bft_sleep');
delete_option('bft_db_version');
delete_site_option('bft_db_version');
delete_option('bft_use_cron_job');
delete_site_option('bft_use_cron_job');
delete_option('bft_cron_schedule');
delete_site_option('bft_cron_schedule');
delete_option('bft_require_name');
delete_site_option('bft_require_name');
delete_option('bftpro_allow_get');
delete_site_option('bftpro_allow_get');
delete_option('bft_redirect');
delete_site_option('bft_redirect');
delete_option('bft_optin');
delete_site_option('bft_optin');
delete_option('bft_subscribe_notify');
delete_site_option('bft_subscribe_notify');
delete_option('bft_unsubscribe_notify');
delete_site_option('bft_unsubscribe_notify');
delete_option('bft_auto_subscribe');
delete_site_option('bft_auto_subscribe');
delete_option('bft_subscribe_to_blog');
delete_site_option('bft_subscribe_to_blog');
delete_option('bft_subscribe_auto_login');
delete_site_option('bft_subscribe_auto_login');
delete_option('bft_mails_per_run');
delete_site_option('bft_mails_per_run');
delete_option('bft_text_captcha');
delete_site_option('bft_text_captcha');
delete_option('bft_use_text_captcha');
delete_site_option('bft_use_text_captcha');
delete_option('bft_no_signup_popup_msg');
delete_site_option('bft_no_signup_popup_msg');
delete_option('bft_no_unsub_popup_msg');
delete_site_option('bft_no_unsub_popup_msg');
delete_option('arigato_recaptcha');
delete_site_option('arigato_recaptcha');
delete_option('bftpro_recaptcha_public');
delete_site_option('bftpro_recaptcha_public');
delete_option('bftpro_recaptcha_private');
delete_site_option('bftpro_recaptcha_private');
delete_option('bftpro_recaptcha_version');
delete_site_option('bftpro_recaptcha_version');
delete_option('bftpro_recaptcha_lang');
delete_site_option('bftpro_recaptcha_lang');
delete_option('bftpro_recaptcha_size');
delete_site_option('bftpro_recaptcha_size');
delete_option('bftpro_recaptcha_score');
delete_site_option('bftpro_recaptcha_score');
delete_option('bft_optin_subject');
delete_site_option('bft_optin_subject');
delete_option('bft_optin_message');
delete_site_option('bft_optin_message');
delete_option('bft_optin_redirect');
delete_site_option('bft_optin_redirect');
delete_option('bft_no_double_optin_popup_msg');
delete_site_option('bft_no_double_optin_popup_msg');
delete_option('bft_hooked_up');
delete_site_option('bft_hooked_up');
delete_option('bft_subscribe_notify_subject');
delete_site_option('bft_subscribe_notify_subject');
delete_option('bft_subscribe_notify_message');
delete_site_option('bft_subscribe_notify_message');
delete_option('bft_subscribe_notify_receivers');
delete_site_option('bft_subscribe_notify_receivers');
delete_option('bft_unsubscribe_notify_subject');
delete_site_option('bft_unsubscribe_notify_subject');
delete_option('bft_unsubscribe_notify_message');
delete_site_option('bft_unsubscribe_notify_message');
delete_option('bft_unsubscribe_notify_receivers');
delete_site_option('bft_unsubscribe_notify_receivers');
delete_option('bft_locale_url');
delete_site_option('bft_locale_url');
delete_option('bft_datepicker_css');
delete_site_option('bft_datepicker_css');
delete_option('bft_date');
delete_site_option('bft_date');
delete_option('bft_last_start');
delete_site_option('bft_last_start');
delete_option('bft_current_status');
delete_site_option('bft_current_status');
delete_option('bft_lock_tables');
delete_site_option('bft_lock_tables');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_subject' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_message' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_receivers' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('bft_cf7_name_field');
delete_site_option('bft_cf7_name_field');
delete_option('bft_cf7_email_field');
delete_site_option('bft_cf7_email_field');
delete_option('bft_ninja_integration');
delete_site_option('bft_ninja_integration');
delete_option('in_ninja_form');
delete_site_option('in_ninja_form');
delete_option('bft_formidable_integration');
delete_site_option('bft_formidable_integration');
delete_option('bft_wpforms_integration');
delete_site_option('bft_wpforms_integration');
delete_option('bft_webhooks');
delete_site_option('bft_webhooks');
delete_option('bftpro_text_captcha');
delete_site_option('bftpro_text_captcha');

// Clear Cron Jobs
wp_clear_scheduled_hook('bft_hook_up');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_form_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_form_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_form_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_form_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'bft_logged_in' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'bft_logged_in' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'bft_logged_in' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'bft_logged_in' ) );


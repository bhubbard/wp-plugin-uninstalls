<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cmplz_current_datarequest_export_offset');
delete_site_option('cmplz_current_datarequest_export_offset');
delete_option('cmplz_current_datarequest_export_progress');
delete_site_option('cmplz_current_datarequest_export_progress');
delete_option('cmplz_datarequest_export_args');
delete_site_option('cmplz_datarequest_export_args');
delete_option('cmplz_datarequest_file_name');
delete_site_option('cmplz_datarequest_file_name');
delete_option('cmplz_dnsmpd_db_version');
delete_site_option('cmplz_dnsmpd_db_version');
delete_option('cmplz_run_activation');
delete_site_option('cmplz_run_activation');
delete_option('cmplz_activation_time');
delete_site_option('cmplz_activation_time');
delete_option('cmplz_dismissed_warnings');
delete_site_option('cmplz_dismissed_warnings');
delete_option('complianz_options_custom-scripts');
delete_site_option('complianz_options_custom-scripts');
delete_option('cmplz_post_scribe_required');
delete_site_option('cmplz_post_scribe_required');
delete_option('cmplz_wizard_completed_once');
delete_site_option('cmplz_wizard_completed_once');
delete_option('cmplz_documents_update_date');
delete_site_option('cmplz_documents_update_date');
delete_option('cmplz_publish_date');
delete_site_option('cmplz_publish_date');
delete_option('cmplz_update_legal_documents_mail_sent');
delete_site_option('cmplz_update_legal_documents_mail_sent');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_custom_page' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_custom_page_url' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('cmplz_pdf_dir_token');
delete_site_option('cmplz_pdf_dir_token');
delete_option('cmplz_options');
delete_site_option('cmplz_options');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'complianz_options_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('cmplz_deleted_cookies');
delete_site_option('cmplz_deleted_cookies');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tour_started' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tour_shown_once' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('cmplz_review_notice_shown');
delete_site_option('cmplz_review_notice_shown');
delete_option('cmplz_generate_new_cookiepolicy_snapshot');
delete_site_option('cmplz_generate_new_cookiepolicy_snapshot');
delete_option('cmplz_detected_stats_data');
delete_site_option('cmplz_detected_stats_data');
delete_option('cmplz_detected_stats_type');
delete_site_option('cmplz_detected_stats_type');
delete_option('cmplz_cookietable_version');
delete_site_option('cmplz_cookietable_version');
delete_option('cmplz_changed_cookies');
delete_site_option('cmplz_changed_cookies');
delete_option('cmplz_synced_cookiedatabase_once');
delete_site_option('cmplz_synced_cookiedatabase_once');
delete_option('cmplz_sync_cookies_complete');
delete_site_option('cmplz_sync_cookies_complete');
delete_option('cmplz_sync_cookies_after_services_complete');
delete_site_option('cmplz_sync_cookies_after_services_complete');
delete_option('cmplz_sync_services_complete');
delete_site_option('cmplz_sync_services_complete');
delete_option('cmplz_last_cookie_scan');
delete_site_option('cmplz_last_cookie_scan');
delete_option('cmplz_detected_social_media');
delete_site_option('cmplz_detected_social_media');
delete_option('cmplz_detected_thirdparty_services');
delete_site_option('cmplz_detected_thirdparty_services');
delete_option('cmplz_double_stats');
delete_site_option('cmplz_double_stats');
delete_option('cmplz_detected_stats');
delete_site_option('cmplz_detected_stats');
delete_option('cmplz_ssl_verify');
delete_site_option('cmplz_ssl_verify');
delete_option('cmplz_curl_error');
delete_site_option('cmplz_curl_error');
delete_option('cmplz_last_cookie_sync');
delete_site_option('cmplz_last_cookie_sync');
delete_option('cmplz_cookie_data_verified_date');
delete_site_option('cmplz_cookie_data_verified_date');
delete_option('cmplz_first_sync_started');
delete_site_option('cmplz_first_sync_started');
delete_option('cmplz_purposes_stored');
delete_site_option('cmplz_purposes_stored');
delete_option('cmplz_servicetypes_stored');
delete_site_option('cmplz_servicetypes_stored');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'cmplz_serviceTypes_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('cmplz_serviceTypes_stored');
delete_site_option('cmplz_serviceTypes_stored');
delete_option('cmplz_detected_console_errors');
delete_site_option('cmplz_detected_console_errors');
delete_option('cmplz_excluded_posts_array');
delete_site_option('cmplz_excluded_posts_array');
delete_option('complianz_active_policy_id');
delete_site_option('complianz_active_policy_id');
delete_option('qtranslate_enabled_languages');
delete_site_option('qtranslate_enabled_languages');
delete_option('trp_settings');
delete_site_option('trp_settings');
delete_option('cmplz_cbdb_version');
delete_site_option('cmplz_cbdb_version');
delete_option('cmplz_tracking_ab_started');
delete_site_option('cmplz_tracking_ab_started');
delete_option('cmplz_preloaded_privacy_info');
delete_site_option('cmplz_preloaded_privacy_info');
delete_option('cmplz_first_version');
delete_site_option('cmplz_first_version');
delete_option('cmplz_transients');
delete_site_option('cmplz_transients');
delete_option('cmplz_wsc_signup_status');
delete_site_option('cmplz_wsc_signup_status');
delete_option('cmplz_disabled_placeholders');
delete_site_option('cmplz_disabled_placeholders');
delete_option('complianz_options_integrations');
delete_site_option('complianz_options_integrations');
delete_option('cmplz_detected_forms');
delete_site_option('cmplz_detected_forms');
delete_option('cmplz_active_integrations');
delete_site_option('cmplz_active_integrations');
delete_option('cmplz_integrations_changed');
delete_site_option('cmplz_integrations_changed');
delete_option('cmplz_elementor_hub_autogenerated');
delete_site_option('cmplz_elementor_hub_autogenerated');
delete_option('user_registration_login_options_enable_recaptcha');
delete_site_option('user_registration_login_options_enable_recaptcha');
delete_option('woocommerce_google_analytics_settings');
delete_site_option('woocommerce_google_analytics_settings');
delete_option('woocommerce_google_analytics_pro_settings');
delete_site_option('woocommerce_google_analytics_pro_settings');
delete_option('wpgmza_global_settings');
delete_site_option('wpgmza_global_settings');
delete_option('wpforms_settings');
delete_site_option('wpforms_settings');
delete_option('cmplz_upgraded_to_7');
delete_site_option('cmplz_upgraded_to_7');
delete_option('cmplz_onboarding_dismissed');
delete_site_option('cmplz_onboarding_dismissed');
delete_option('cmplz_ajax_fallback_active');
delete_site_option('cmplz_ajax_fallback_active');
delete_option('cmplz_key');
delete_site_option('cmplz_key');
delete_option('auto_update_plugins');
delete_site_option('auto_update_plugins');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%auto_installed_license' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('cmplz-current-version');
delete_site_option('cmplz-current-version');
delete_option('complianz_options_wizard');
delete_site_option('complianz_options_wizard');
delete_option('cmplz_cookie-statement_custom_page');
delete_site_option('cmplz_cookie-statement_custom_page');
delete_option('cmplz_privacy-statement_custom_page');
delete_site_option('cmplz_privacy-statement_custom_page');
delete_option('cmplz_upgraded_to_five');
delete_site_option('cmplz_upgraded_to_five');
delete_option('complianz_options_settings');
delete_site_option('complianz_options_settings');
delete_option('cmplz_elementor_banner_dropped');
delete_site_option('cmplz_elementor_banner_dropped');
delete_option('cmplz_elementor_autogenerated');
delete_site_option('cmplz_elementor_autogenerated');
delete_option('cmplz_license_key');
delete_site_option('cmplz_license_key');
delete_option('cmplz_wsc_scan_status');
delete_site_option('cmplz_wsc_scan_status');
delete_option('cmplz_wsc_scan_id');
delete_site_option('cmplz_wsc_scan_id');
delete_option('cmplz_wsc_checks_scan_id');
delete_site_option('cmplz_wsc_checks_scan_id');
delete_option('cmplz_wsc_scan_createdAt');
delete_site_option('cmplz_wsc_scan_createdAt');
delete_option('cmplz_wsc_checks_scan_createdAt');
delete_site_option('cmplz_wsc_checks_scan_createdAt');
delete_option('cmplz_wsc_error_email_not_sent');
delete_site_option('cmplz_wsc_error_email_not_sent');
delete_option('cmplz_wsc_status');
delete_site_option('cmplz_wsc_status');
delete_option('cmplz_wsc_signup_date');
delete_site_option('cmplz_wsc_signup_date');
delete_option('cmplz_wsc_error_email_mismatch');
delete_site_option('cmplz_wsc_error_email_mismatch');
delete_option('cmplz_wsc_error_missing_token');
delete_site_option('cmplz_wsc_error_missing_token');
delete_option('cmplz_wsc_error_email_auth_failed');
delete_site_option('cmplz_wsc_error_email_auth_failed');
delete_option('cmplz_wsc_auth_completed');
delete_site_option('cmplz_wsc_auth_completed');
delete_option('cmplz_wsc_error_token_api');
delete_site_option('cmplz_wsc_error_token_api');
delete_option('cmplz_wsc_connection_updated');
delete_site_option('cmplz_wsc_connection_updated');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_consentdata' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'cmplz_consent_error_timestamp_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'cmplz_consent_error_consentdata_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'cmplz_consent_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('cmplz_newsletter_signup_error_email');
delete_site_option('cmplz_newsletter_signup_error_email');
delete_option('cmplz_newsletter_signup_error');
delete_site_option('cmplz_newsletter_signup_error');
delete_option('cmplz_newsletter_signup_error_timestamp');
delete_site_option('cmplz_newsletter_signup_error_timestamp');
delete_option('cmplz_wsc_logs');
delete_site_option('cmplz_wsc_logs');
delete_option('cmplz_wsc_onboarding_status');
delete_site_option('cmplz_wsc_onboarding_status');
delete_option('cmplz_wsc_reset_complete');
delete_site_option('cmplz_wsc_reset_complete');
delete_option('cmplz_wsc_onboarding_dismissed');
delete_site_option('cmplz_wsc_onboarding_dismissed');
delete_option('cmplz_wsc_websitescan_dismissed');
delete_site_option('cmplz_wsc_websitescan_dismissed');
delete_option('cmplz_wsc_onboarding_complete');
delete_site_option('cmplz_wsc_onboarding_complete');
delete_option('cmplz_consent_wsc_consent');
delete_site_option('cmplz_consent_wsc_consent');
delete_option('cmplz_wsc_newsletter_dismissed');
delete_site_option('cmplz_wsc_newsletter_dismissed');
delete_option('cmplz_wsc_scan_iteration');
delete_site_option('cmplz_wsc_scan_iteration');
delete_option('cmplz_wsc_scan_progress');
delete_site_option('cmplz_wsc_scan_progress');
delete_option('cmplz_wsc_scan_first_run');
delete_site_option('cmplz_wsc_scan_first_run');
delete_option('cmplz_wsc_checks_scan_polling');
delete_site_option('cmplz_wsc_checks_scan_polling');
delete_option('cmplz_wsc_checks_last_mail_sent');
delete_site_option('cmplz_wsc_checks_last_mail_sent');
delete_option('cmplz_wsc_checks_last_mail_sent_error');
delete_site_option('cmplz_wsc_checks_last_mail_sent_error');
delete_option('cmplz_wsc_user_deletion_temp_credentials');
delete_site_option('cmplz_wsc_user_deletion_temp_credentials');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_message' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_timestamp' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('complianz_warnings');
delete_site_transient('complianz_warnings');
delete_transient('complianz_warnings_admin_notices');
delete_site_transient('complianz_warnings_admin_notices');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_complianz_warnings%', '_site_transient_complianz_warnings%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('cmplz_blocked_scripts');
delete_site_transient('cmplz_blocked_scripts');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_redirect_to_settings', '_site_transient_%_redirect_to_settings' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('rsssl_plugin_download_active');
delete_site_transient('rsssl_plugin_download_active');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_plugin_info', '_site_transient_%_plugin_info' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('cmplz_wizard_locked_by_user');
delete_site_transient('cmplz_wizard_locked_by_user');
delete_transient('cmplz_redirect_to_settings_page');
delete_site_transient('cmplz_redirect_to_settings_page');
delete_transient('cmplz_pages_list');
delete_site_transient('cmplz_pages_list');
delete_transient('cmplz_processed_pages_list');
delete_site_transient('cmplz_processed_pages_list');
delete_transient('cmplz_cookiedatabase_request_active');
delete_site_transient('cmplz_cookiedatabase_request_active');
delete_transient('cmplz_cookie_settings_cache');
delete_site_transient('cmplz_cookie_settings_cache');
delete_transient('cmplz_checked_for_js_count');
delete_site_transient('cmplz_checked_for_js_count');
delete_transient('cmplz_cookies');
delete_site_transient('cmplz_cookies');
delete_transient('cmplz_generate_css_active');
delete_site_transient('cmplz_generate_css_active');
delete_transient('cmplz_email_recently_sent');
delete_site_transient('cmplz_email_recently_sent');
delete_transient('cmplz_plusone_count');
delete_site_transient('cmplz_plusone_count');
delete_transient('cmplz_admin_notices');
delete_site_transient('cmplz_admin_notices');
delete_transient('media_months');
delete_site_transient('media_months');
delete_transient('cmplz_upgrade_dir');
delete_site_transient('cmplz_upgrade_dir');
delete_transient('cmplz_wsc_last_cookies');
delete_site_transient('cmplz_wsc_last_cookies');
delete_transient('cmplz_wsc_checks_scan_error');
delete_site_transient('cmplz_wsc_checks_scan_error');
delete_transient('cmplz_wsc_last_checks');
delete_site_transient('cmplz_wsc_last_checks');
delete_transient('cmplz_wsc_checks_last_detections');
delete_site_transient('cmplz_wsc_checks_last_detections');

// Clear Cron Jobs
wp_clear_scheduled_hook('cmplz_every_week_hook');
wp_clear_scheduled_hook('cmplz_every_day_hook');
wp_clear_scheduled_hook('cmplz_every_five_minutes_hook');
wp_clear_scheduled_hook('cmplz_every_month_hook');
wp_clear_scheduled_hook('cmplz_schedule_create_wsc_site_id');
wp_clear_scheduled_hook('cmplz_wsc_checks_retrieve_results');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cmplz_document_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cmplz_document_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cmplz_document_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cmplz_document_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cmplz_shortcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cmplz_shortcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cmplz_shortcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cmplz_shortcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cmplz_scanned_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cmplz_scanned_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cmplz_scanned_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cmplz_scanned_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cmplz_hide_cookiebanner' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cmplz_hide_cookiebanner' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cmplz_hide_cookiebanner' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cmplz_hide_cookiebanner' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%-eu' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%-eu' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%-eu' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%-eu' ) );


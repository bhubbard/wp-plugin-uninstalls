<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('everest_forms_enabled_features');
delete_site_option('everest_forms_enabled_features');
delete_option('everest_forms_style_enabled');
delete_site_option('everest_forms_style_enabled');
delete_option('everest_forms_clean_talk_methods');
delete_site_option('everest_forms_clean_talk_methods');
delete_option('everest_forms_recaptcha_cleantalk_access_key');
delete_site_option('everest_forms_recaptcha_cleantalk_access_key');
delete_option('everest_forms_integrations');
delete_site_option('everest_forms_integrations');
delete_option('everest_forms_styles');
delete_site_option('everest_forms_styles');
delete_option('everest_forms_custom_color_palettes');
delete_site_option('everest_forms_custom_color_palettes');
delete_option('evf_style_templates');
delete_site_option('evf_style_templates');
delete_option('everest_forms_load_fonts_locally');
delete_site_option('everest_forms_load_fonts_locally');
delete_option('evfsc_migration_done');
delete_site_option('evfsc_migration_done');
delete_option('everest_forms_enable_restapi');
delete_site_option('everest_forms_enable_restapi');
delete_option('everest_forms_restapi_keys');
delete_site_option('everest_forms_restapi_keys');
delete_option('everest-forms-pro_license_key');
delete_site_option('everest-forms-pro_license_key');
delete_option('_everest_forms_permission');
delete_site_option('_everest_forms_permission');
delete_option('everest_forms_recaptcha_v2_site_key');
delete_site_option('everest_forms_recaptcha_v2_site_key');
delete_option('everest_forms_recaptcha_v2_secret_key');
delete_site_option('everest_forms_recaptcha_v2_secret_key');
delete_option('everest_forms_recaptcha_v2_invisible_site_key');
delete_site_option('everest_forms_recaptcha_v2_invisible_site_key');
delete_option('everest_forms_recaptcha_v2_invisible_secret_key');
delete_site_option('everest_forms_recaptcha_v2_invisible_secret_key');
delete_option('everest_forms_recaptcha_v3_site_key');
delete_site_option('everest_forms_recaptcha_v3_site_key');
delete_option('everest_forms_recaptcha_v3_secret_key');
delete_site_option('everest_forms_recaptcha_v3_secret_key');
delete_option('everest_forms_recaptcha_hcaptcha_site_key');
delete_site_option('everest_forms_recaptcha_hcaptcha_site_key');
delete_option('everest_forms_recaptcha_hcaptcha_secret_key');
delete_site_option('everest_forms_recaptcha_hcaptcha_secret_key');
delete_option('everest_forms_recaptcha_turnstile_site_key');
delete_site_option('everest_forms_recaptcha_turnstile_site_key');
delete_option('everest_forms_recaptcha_turnstile_secret_key');
delete_site_option('everest_forms_recaptcha_turnstile_secret_key');
delete_option('everest_forms_site_assistant');
delete_site_option('everest_forms_site_assistant');
delete_option('user_favorites');
delete_site_option('user_favorites');
delete_option('everest_forms_fileextension_validation');
delete_site_option('everest_forms_fileextension_validation');
delete_option('everest_forms_filesize_validation');
delete_site_option('everest_forms_filesize_validation');
delete_option('everest_forms_required_validation');
delete_site_option('everest_forms_required_validation');
delete_option('evf_validation_error');
delete_site_option('evf_validation_error');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_validation' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('everest_forms_one_time_draggable_field');
delete_site_option('everest_forms_one_time_draggable_field');
delete_option('evf_booked_slot');
delete_site_option('evf_booked_slot');
delete_option('everest_forms_recaptcha_type');
delete_site_option('everest_forms_recaptcha_type');
delete_option('everest_forms_enable_email_copies');
delete_site_option('everest_forms_enable_email_copies');
delete_option('everest_forms_ai_api_key');
delete_site_option('everest_forms_ai_api_key');
delete_option('everest_forms_test_email_sent');
delete_site_option('everest_forms_test_email_sent');
delete_option('everest_forms_spam_protection_skipped');
delete_site_option('everest_forms_spam_protection_skipped');
delete_option('everest_forms_create_form_skipped');
delete_site_option('everest_forms_create_form_skipped');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_imported_form_list' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('everest_forms_admin_notices');
delete_site_option('everest_forms_admin_notices');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'everest_forms_admin_notice_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('everest_forms_review');
delete_site_option('everest_forms_review');
delete_option('everest_forms_activated');
delete_site_option('everest_forms_activated');
delete_option('everest_forms_survey');
delete_site_option('everest_forms_survey');
delete_option('everest_forms_allow_usage_notice_shown');
delete_site_option('everest_forms_allow_usage_notice_shown');
delete_option('everest_forms_allow_usage_tracking');
delete_site_option('everest_forms_allow_usage_tracking');
delete_option('everest_forms_php_deprecated_notice_last_prompt_date');
delete_site_option('everest_forms_php_deprecated_notice_last_prompt_date');
delete_option('everest_forms_php_deprecated_notice_prompt_count');
delete_site_option('everest_forms_php_deprecated_notice_prompt_count');
delete_option('everest_forms_email_send_notice_dismiss');
delete_site_option('everest_forms_email_send_notice_dismiss');
delete_option('everest_forms_queue_flush_rewrite_rules');
delete_site_option('everest_forms_queue_flush_rewrite_rules');
delete_option('default_post_edit_rows');
delete_site_option('default_post_edit_rows');
delete_option('everest_forms_admin_footer_text_rated');
delete_site_option('everest_forms_admin_footer_text_rated');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'evf_fm_dismiss_xnotice_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpcf7');
delete_site_option('wpcf7');
delete_option('everest_forms_email_send_to');
delete_site_option('everest_forms_email_send_to');
delete_option('everest_forms_recaptcha_migration_v2_complete');
delete_site_option('everest_forms_recaptcha_migration_v2_complete');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_enable' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('everest_forms_recaptcha_v2_invisible');
delete_site_option('everest_forms_recaptcha_v2_invisible');
delete_option('everest_forms_recaptcha_v2_enable');
delete_site_option('everest_forms_recaptcha_v2_enable');
delete_option('everest_forms_recaptcha_v3_enable');
delete_site_option('everest_forms_recaptcha_v3_enable');
delete_option('everest_forms_recaptcha_hcaptcha_enable');
delete_site_option('everest_forms_recaptcha_hcaptcha_enable');
delete_option('everest_forms_recaptcha_turnstile_enable');
delete_site_option('everest_forms_recaptcha_turnstile_enable');
delete_option('everest_forms_enable_log');
delete_site_option('everest_forms_enable_log');
delete_option('everest_forms_entries_reporting_frequency');
delete_site_option('everest_forms_entries_reporting_frequency');
delete_option('everest_forms_entries_reporting_day');
delete_site_option('everest_forms_entries_reporting_day');
delete_option('everest_forms_entries_reporting_email');
delete_site_option('everest_forms_entries_reporting_email');
delete_option('everest_forms_entries_reporting_subject');
delete_site_option('everest_forms_entries_reporting_subject');
delete_option('everest_forms_reporting_form_lists');
delete_site_option('everest_forms_reporting_form_lists');
delete_option('everest_forms_routine_report_send_email_test_to');
delete_site_option('everest_forms_routine_report_send_email_test_to');
delete_option('everest_forms_mapping_fields_array');
delete_site_option('everest_forms_mapping_fields_array');
delete_option('everest_forms_csv_titles');
delete_site_option('everest_forms_csv_titles');
delete_option('everest_forms_email_template');
delete_site_option('everest_forms_email_template');
delete_option('everest_forms_recaptcha_turnstile_theme');
delete_site_option('everest_forms_recaptcha_turnstile_theme');
delete_option('everest_forms_recaptcha_v3_threshold_score');
delete_site_option('everest_forms_recaptcha_v3_threshold_score');
delete_option('everest_forms_pdf_download_after_submit');
delete_site_option('everest_forms_pdf_download_after_submit');
delete_option('everest_forms_pdf_custom_download_text');
delete_site_option('everest_forms_pdf_custom_download_text');
delete_option('everest_forms_overall_feedback_is_called');
delete_site_option('everest_forms_overall_feedback_is_called');
delete_option('everest_forms_admin_approval_entries_enable');
delete_site_option('everest_forms_admin_approval_entries_enable');
delete_option('everest_forms_disable_user_details');
delete_site_option('everest_forms_disable_user_details');
delete_option('everest_forms_admin_entry_approval_token');
delete_site_option('everest_forms_admin_entry_approval_token');
delete_option('everest_forms_url_validation');
delete_site_option('everest_forms_url_validation');
delete_option('everest_forms_email_validation');
delete_site_option('everest_forms_email_validation');
delete_option('everest_forms_email_suggestion');
delete_site_option('everest_forms_email_suggestion');
delete_option('everest_forms_confirm_validation');
delete_site_option('everest_forms_confirm_validation');
delete_option('everest_forms_check_limit_validation');
delete_site_option('everest_forms_check_limit_validation');
delete_option('everest_forms_number_validation');
delete_site_option('everest_forms_number_validation');
delete_option('everest_forms_phone_validation');
delete_site_option('everest_forms_phone_validation');
delete_option('everest_forms_version');
delete_site_option('everest_forms_version');
delete_option('everest_forms_db_version');
delete_site_option('everest_forms_db_version');
delete_option('everest_forms_default_form_page_id');
delete_site_option('everest_forms_default_form_page_id');
delete_option('everest_forms_enable_entries_reporting');
delete_site_option('everest_forms_enable_entries_reporting');
delete_option('evf_saved_license_plan');
delete_site_option('evf_saved_license_plan');
delete_option('everest_forms_recaptcha_validation');
delete_site_option('everest_forms_recaptcha_validation');
delete_option('everest_forms_google_map_current_location');
delete_site_option('everest_forms_google_map_current_location');
delete_option('everest_forms_recaptcha_recaptcha_language');
delete_site_option('everest_forms_recaptcha_recaptcha_language');
delete_option('downloaded_font_files');
delete_site_option('downloaded_font_files');
delete_option('everest_forms_logger_flag');
delete_site_option('everest_forms_logger_flag');
delete_option('everest_forms_install');
delete_site_option('everest_forms_install');
delete_option('everest_forms_successful_form_submission_message');
delete_site_option('everest_forms_successful_form_submission_message');
delete_option('everest_forms_form_submit_button_label');
delete_site_option('everest_forms_form_submit_button_label');
delete_option('everest_forms_uninstall_option');
delete_site_option('everest_forms_uninstall_option');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_logger_flag' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('themeGrill_sdk_notifications');
delete_site_option('themeGrill_sdk_notifications');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_install' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_license_data' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_license' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('evf_google_fonts');
delete_site_transient('evf_google_fonts');
delete_transient('everest_forms_templates_data');
delete_site_transient('everest_forms_templates_data');
delete_transient('evf_addons_sections_list');
delete_site_transient('evf_addons_sections_list');
delete_transient('evf_extensions_section_list');
delete_site_transient('evf_extensions_section_list');
delete_transient('evf_template_section_list');
delete_site_transient('evf_template_section_list');
delete_transient('everest_forms_mail_send_failed_count');
delete_site_transient('everest_forms_mail_send_failed_count');
delete_transient('_evf_activation_redirect');
delete_site_transient('_evf_activation_redirect');
delete_transient('evf_pro_license_plan');
delete_site_transient('evf_pro_license_plan');
delete_transient('evf_installing');
delete_site_transient('evf_installing');
delete_transient('evf-builder-tags-list');
delete_site_transient('evf-builder-tags-list');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_process_lock', '_site_transient_%_process_lock' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ti_plugin_info_%', '_site_transient_ti_plugin_info_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('themegrill_sdk_cache_token');
delete_site_transient('themegrill_sdk_cache_token');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_warning_rollback', '_site_transient_%_warning_rollback' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('update_themes');
delete_site_transient('update_themes');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_tg_sdk_pause_%', '_site_transient_tg_sdk_pause_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('everest_forms_biweekly_scheduled_events');
wp_clear_scheduled_hook('everest_forms_cleanup_logs');
wp_clear_scheduled_hook('everest_forms_cleanup_sessions');
wp_clear_scheduled_hook('everest_forms_stats_report_schedule');
wp_clear_scheduled_hook('delete_fonts_folder');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_fl_builder_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_fl_builder_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_fl_builder_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_fl_builder_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_everest_forms_has_role' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_everest_forms_has_role' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_everest_forms_has_role' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_everest_forms_has_role' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'everest_forms_form_embed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'everest_forms_form_embed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'everest_forms_form_embed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'everest_forms_form_embed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'evf_fm_imported_from' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'evf_fm_imported_from' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'evf_fm_imported_from' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'evf_fm_imported_from' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'everest_forms_show_immediate_feedback_to_guests' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'everest_forms_show_immediate_feedback_to_guests' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'everest_forms_show_immediate_feedback_to_guests' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'everest_forms_show_immediate_feedback_to_guests' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'updated_form_confirmation' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'updated_form_confirmation' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'updated_form_confirmation' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'updated_form_confirmation' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'everest_forms_enable_theme_style' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'everest_forms_enable_theme_style' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'everest_forms_enable_theme_style' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'everest_forms_enable_theme_style' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'themegrill_sdk_dismissed_notice_black_friday' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'themegrill_sdk_dismissed_notice_black_friday' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'themegrill_sdk_dismissed_notice_black_friday' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'themegrill_sdk_dismissed_notice_black_friday' ) );


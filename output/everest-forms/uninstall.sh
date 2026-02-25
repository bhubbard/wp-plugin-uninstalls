#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'everest_forms_enabled_features'
wp option delete 'everest_forms_style_enabled'
wp option delete 'everest_forms_clean_talk_methods'
wp option delete 'everest_forms_recaptcha_cleantalk_access_key'
wp option delete 'everest_forms_integrations'
wp option delete 'everest_forms_styles'
wp option delete 'everest_forms_custom_color_palettes'
wp option delete 'evf_style_templates'
wp option delete 'everest_forms_load_fonts_locally'
wp option delete 'evfsc_migration_done'
wp option delete 'everest_forms_enable_restapi'
wp option delete 'everest_forms_restapi_keys'
wp option delete 'everest-forms-pro_license_key'
wp option delete '_everest_forms_permission'
wp option delete 'everest_forms_recaptcha_v2_site_key'
wp option delete 'everest_forms_recaptcha_v2_secret_key'
wp option delete 'everest_forms_recaptcha_v2_invisible_site_key'
wp option delete 'everest_forms_recaptcha_v2_invisible_secret_key'
wp option delete 'everest_forms_recaptcha_v3_site_key'
wp option delete 'everest_forms_recaptcha_v3_secret_key'
wp option delete 'everest_forms_recaptcha_hcaptcha_site_key'
wp option delete 'everest_forms_recaptcha_hcaptcha_secret_key'
wp option delete 'everest_forms_recaptcha_turnstile_site_key'
wp option delete 'everest_forms_recaptcha_turnstile_secret_key'
wp option delete 'everest_forms_site_assistant'
wp option delete 'user_favorites'
wp option delete 'everest_forms_fileextension_validation'
wp option delete 'everest_forms_filesize_validation'
wp option delete 'everest_forms_required_validation'
wp option delete 'evf_validation_error'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_validation'"
wp option delete 'everest_forms_one_time_draggable_field'
wp option delete 'evf_booked_slot'
wp option delete 'everest_forms_recaptcha_type'
wp option delete 'everest_forms_enable_email_copies'
wp option delete 'everest_forms_ai_api_key'
wp option delete 'everest_forms_test_email_sent'
wp option delete 'everest_forms_spam_protection_skipped'
wp option delete 'everest_forms_create_form_skipped'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_imported_form_list'"
wp option delete 'everest_forms_admin_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'everest_forms_admin_notice_%'"
wp option delete 'everest_forms_review'
wp option delete 'everest_forms_activated'
wp option delete 'everest_forms_survey'
wp option delete 'everest_forms_allow_usage_notice_shown'
wp option delete 'everest_forms_allow_usage_tracking'
wp option delete 'everest_forms_php_deprecated_notice_last_prompt_date'
wp option delete 'everest_forms_php_deprecated_notice_prompt_count'
wp option delete 'everest_forms_email_send_notice_dismiss'
wp option delete 'everest_forms_queue_flush_rewrite_rules'
wp option delete 'default_post_edit_rows'
wp option delete 'everest_forms_admin_footer_text_rated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'evf_fm_dismiss_xnotice_%'"
wp option delete 'wpcf7'
wp option delete 'everest_forms_email_send_to'
wp option delete 'everest_forms_recaptcha_migration_v2_complete'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable'"
wp option delete 'everest_forms_recaptcha_v2_invisible'
wp option delete 'everest_forms_recaptcha_v2_enable'
wp option delete 'everest_forms_recaptcha_v3_enable'
wp option delete 'everest_forms_recaptcha_hcaptcha_enable'
wp option delete 'everest_forms_recaptcha_turnstile_enable'
wp option delete 'everest_forms_enable_log'
wp option delete 'everest_forms_entries_reporting_frequency'
wp option delete 'everest_forms_entries_reporting_day'
wp option delete 'everest_forms_entries_reporting_email'
wp option delete 'everest_forms_entries_reporting_subject'
wp option delete 'everest_forms_reporting_form_lists'
wp option delete 'everest_forms_routine_report_send_email_test_to'
wp option delete 'everest_forms_mapping_fields_array'
wp option delete 'everest_forms_csv_titles'
wp option delete 'everest_forms_email_template'
wp option delete 'everest_forms_recaptcha_turnstile_theme'
wp option delete 'everest_forms_recaptcha_v3_threshold_score'
wp option delete 'everest_forms_pdf_download_after_submit'
wp option delete 'everest_forms_pdf_custom_download_text'
wp option delete 'everest_forms_overall_feedback_is_called'
wp option delete 'everest_forms_admin_approval_entries_enable'
wp option delete 'everest_forms_disable_user_details'
wp option delete 'everest_forms_admin_entry_approval_token'
wp option delete 'everest_forms_url_validation'
wp option delete 'everest_forms_email_validation'
wp option delete 'everest_forms_email_suggestion'
wp option delete 'everest_forms_confirm_validation'
wp option delete 'everest_forms_check_limit_validation'
wp option delete 'everest_forms_number_validation'
wp option delete 'everest_forms_phone_validation'
wp option delete 'everest_forms_version'
wp option delete 'everest_forms_db_version'
wp option delete 'everest_forms_default_form_page_id'
wp option delete 'everest_forms_enable_entries_reporting'
wp option delete 'evf_saved_license_plan'
wp option delete 'everest_forms_recaptcha_validation'
wp option delete 'everest_forms_google_map_current_location'
wp option delete 'everest_forms_recaptcha_recaptcha_language'
wp option delete 'downloaded_font_files'
wp option delete 'everest_forms_logger_flag'
wp option delete 'everest_forms_install'
wp option delete 'everest_forms_successful_form_submission_message'
wp option delete 'everest_forms_form_submit_button_label'
wp option delete 'everest_forms_uninstall_option'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_logger_flag'"
wp option delete 'themeGrill_sdk_notifications'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_install'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license'"

# Delete Transients
wp transient delete 'evf_google_fonts'
wp transient delete 'everest_forms_templates_data'
wp transient delete 'evf_addons_sections_list'
wp transient delete 'evf_extensions_section_list'
wp transient delete 'evf_template_section_list'
wp transient delete 'everest_forms_mail_send_failed_count'
wp transient delete '_evf_activation_redirect'
wp transient delete 'evf_pro_license_plan'
wp transient delete 'evf_installing'
wp transient delete 'evf-builder-tags-list'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ti_plugin_info_%' OR option_name LIKE '_site_transient_ti_plugin_info_%'"
wp transient delete 'themegrill_sdk_cache_token'
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_warning_rollback' OR option_name LIKE '_site_transient_%_warning_rollback'"
wp transient delete 'update_themes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tg_sdk_pause_%' OR option_name LIKE '_site_transient_tg_sdk_pause_%'"

# Clear Cron Jobs
wp cron event delete 'everest_forms_biweekly_scheduled_events'
wp cron event delete 'everest_forms_cleanup_logs'
wp cron event delete 'everest_forms_cleanup_sessions'
wp cron event delete 'everest_forms_stats_report_schedule'
wp cron event delete 'delete_fonts_folder'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_everest_forms_has_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_everest_forms_has_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_everest_forms_has_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_everest_forms_has_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'everest_forms_form_embed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'everest_forms_form_embed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'everest_forms_form_embed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'everest_forms_form_embed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'evf_fm_imported_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'evf_fm_imported_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'evf_fm_imported_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'evf_fm_imported_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'everest_forms_show_immediate_feedback_to_guests'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'everest_forms_show_immediate_feedback_to_guests'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'everest_forms_show_immediate_feedback_to_guests'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'everest_forms_show_immediate_feedback_to_guests'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'updated_form_confirmation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'updated_form_confirmation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'updated_form_confirmation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'updated_form_confirmation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'everest_forms_enable_theme_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'everest_forms_enable_theme_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'everest_forms_enable_theme_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'everest_forms_enable_theme_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'themegrill_sdk_dismissed_notice_black_friday'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'themegrill_sdk_dismissed_notice_black_friday'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'themegrill_sdk_dismissed_notice_black_friday'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'themegrill_sdk_dismissed_notice_black_friday'"

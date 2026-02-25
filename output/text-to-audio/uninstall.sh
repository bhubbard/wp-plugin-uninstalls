#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tta__button_text_arr'
wp option delete 'TTA_PRO_VERSION'
wp option delete 'atlasvoice_analytics_table_is_created'
wp option delete 'tta_analytics_settings'
wp option delete 'wp_mail_smtp'
wp option delete 'tta_schedule_report_settings'
wp option delete 'tta_last_report_sent'
wp option delete 'tta_compatible_data'
wp option delete 'tta_listening_settings'
wp option delete 'tta_customize_settings'
wp option delete 'tta_settings_data'
wp option delete 'tta_current_browser_info'
wp option delete 'tts_text_aliases'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'tta_record_settings'
wp option delete 'GTranslate'
wp option delete 'tts_is_backup_mp3_file'
wp option delete 'tts_duplicate_post_ids'
wp option delete 'tts_plugin_compatible_notice_next_show_time'
wp option delete 'tts_plugin_voice_and_language_mismatch_next_show_time'
wp option delete 'tts_plugin_analytics_notice_next_show_time'
wp option delete 'tts_plugin_features_notice_next_show_time'
wp option delete 'tts_is_displayed_force_notice_december_26'
wp option delete 'tta_translation_notice_next_show_time'
wp option delete 'tts_is_displayed_ar_vr_plugin_notice'
wp option delete 'tta_ar_vr_plugin_notice_next_show_time'
wp option delete 'tta_review_notice_next_show_time'
wp option delete 'tts_setup_notice_next_show_time'
wp option delete 'tta_feedback_notice_next_show_time'
wp option delete 'review_test'
wp option delete 'tta_review_notice'
wp option delete 'tta_feedback_notice'
wp option delete 'tta_folder_writable_notice_next_show_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'tts_rest_api_url'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_cached_promos' OR option_name LIKE '_site_transient_%_cached_promos'"

# Clear Cron Jobs
wp cron event delete 'tta_send_scheduled_report'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tts_mp3_file_urls'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tts_mp3_file_urls'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tts_mp3_file_urls'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tts_mp3_file_urls'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'atlasVoice_analytics'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'atlasVoice_analytics'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'atlasVoice_analytics'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'atlasVoice_analytics'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tts_pro_custom_css_selectors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tts_pro_custom_css_selectors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tts_pro_custom_css_selectors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tts_pro_custom_css_selectors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tts_is_mp3_file_url_exists'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tts_is_mp3_file_url_exists'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tts_is_mp3_file_url_exists'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tts_is_mp3_file_url_exists'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tts_plugin_compatible_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tts_plugin_compatible_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tts_plugin_compatible_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tts_plugin_compatible_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tts_plugin_voice_and_language_mismatch_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tts_plugin_voice_and_language_mismatch_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tts_plugin_voice_and_language_mismatch_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tts_plugin_voice_and_language_mismatch_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tts_plugin_analytics_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tts_plugin_analytics_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tts_plugin_analytics_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tts_plugin_analytics_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tts_plugin_features_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tts_plugin_features_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tts_plugin_features_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tts_plugin_features_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tta_translation_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tta_translation_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tta_translation_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tta_translation_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tta_ar_vr_plugin_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tta_ar_vr_plugin_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tta_ar_vr_plugin_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tta_ar_vr_plugin_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tta_review_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tta_review_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tta_review_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tta_review_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tts_setup_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tts_setup_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tts_setup_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tts_setup_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tta_feedback_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tta_feedback_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tta_feedback_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tta_feedback_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tta_promotion_new_year_26_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tta_promotion_new_year_26_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tta_promotion_new_year_26_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tta_promotion_new_year_26_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tta_folder_writable_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tta_folder_writable_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tta_folder_writable_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tta_folder_writable_notice_dismissed'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_team_manager_version'
wp option delete 'team_migration_completed'
wp option delete 'team_migration_batch_offset'
wp option delete 'tm_social_size'
wp option delete 'tm_custom_css'
wp option delete 'tm_link_new_window'
wp option delete 'single_team_member_view'
wp option delete 'old_team_manager_style'
wp option delete 'tm_slug'
wp option delete 'tm_single_fields'
wp option delete 'tm_taxonomy_fields'
wp option delete 'image_size_fields'
wp option delete 'team_image_size_change'
wp option delete 'tm_single_team_lightbox'
wp option delete 'tm_custom_labels'
wp option delete 'tm_alt_text'
wp option delete 'tm_keyboard_nav'
wp option delete 'tm_screen_reader'
wp option delete 'tm_high_contrast'
wp option delete 'tm_focus_style'
wp option delete 'tm_schema_markup'
wp option delete 'tm_meta_description'
wp option delete 'tm_lazy_loading'
wp option delete 'tm_preload_images'
wp option delete 'tm_taxonomy_designation_enable'
wp option delete 'tm_taxonomy_department_enable'
wp option delete 'tm_taxonomy_gender_enable'
wp option delete 'tm_taxonomy_groups_enable'
wp option delete 'tm_show_taxonomy_filter'
wp option delete 'tm_show_taxonomy_count'
wp option delete 'tm_hierarchical_taxonomy'
wp option delete 'wtm_debug_log'
wp option delete 'wtm_debug_log_path'
wp option delete 'wp_team_ai_enabled_modules'
wp option delete 'wtm_telegram_bot_token'
wp option delete 'wtm_telegram_chat_id'
wp option delete 'wtm_sync_webhook_url'
wp option delete 'wtm_sync_webhook_secret'
wp option delete 'wtm_sync_status_only'
wp option delete 'wtm_pro_openai_api_key'
wp option delete 'wtm_pro_openai_model'
wp option delete 'wtm_pro_slack_webhook_url'
wp option delete 'wtm_pro_slack_channel'
wp option delete 'wtm_pro_onboarding_message'
wp option delete 'wtm_pro_conditional_rules'
wp option delete 'wtm_pro_activity_target'
wp option delete 'tm_dashboard_mode'
wp option delete 'tm_custom_template'
wp option delete 'tm_vcard_btn_text'
wp option delete 'tm_single_gallery_column'
wp option delete 'tm_log_path'
wp option delete 'tm_a11y_enable'
wp option delete 'tm_a11y_region_label'
wp option delete 'tm_a11y_focus_ring'
wp option delete 'tm_a11y_list_roles'
wp option delete 'tm_seo_jsonld_enable'
wp option delete 'wtm_import_results'
wp option delete 'wtm_onboarding_completed'
wp option delete 'wp_team_manager_activation_time'
wp option delete 'wtm_onboarding_step'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'tm_flush_rewrite_rules'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wtm_migration_progress_%' OR option_name LIKE '_site_transient_wtm_migration_progress_%'"
wp transient delete 'wtm_detected_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wtm_step_advanced_%' OR option_name LIKE '_site_transient_wtm_step_advanced_%'"
wp transient delete 'wtm_team_count_cache'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'wtm_run_social_fields_migration'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wtm_job_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wtm_job_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wtm_job_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wtm_job_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wtm_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wtm_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wtm_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wtm_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wtm_filter_presets'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wtm_filter_presets'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wtm_filter_presets'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wtm_filter_presets'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tm_jtitle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tm_jtitle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tm_jtitle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tm_jtitle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wptm_cm2_gallery_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wptm_cm2_gallery_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wptm_cm2_gallery_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wptm_cm2_gallery_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wptm_social_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wptm_social_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wptm_social_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wptm_social_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tm_flink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tm_flink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tm_flink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tm_flink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tm_tlink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tm_tlink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tm_tlink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tm_tlink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tm_llink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tm_llink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tm_llink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tm_llink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tm_gplink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tm_gplink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tm_gplink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tm_gplink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tm_dribbble'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tm_dribbble'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tm_dribbble'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tm_dribbble'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tm_ylink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tm_ylink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tm_ylink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tm_ylink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tm_vlink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tm_vlink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tm_vlink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tm_vlink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tm_emailid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tm_emailid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tm_emailid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tm_emailid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tm_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tm_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tm_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tm_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tm_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tm_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tm_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tm_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tm_mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tm_mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tm_mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tm_mobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tm_telephone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tm_telephone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tm_telephone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tm_telephone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tm_year_experience'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tm_year_experience'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tm_year_experience'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tm_year_experience'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wtm_migration_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wtm_migration_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wtm_migration_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wtm_migration_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wtm_migration_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wtm_migration_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wtm_migration_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wtm_migration_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wtm_migrated_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wtm_migrated_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wtm_migrated_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wtm_migrated_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wtm_source_plugin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wtm_source_plugin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wtm_source_plugin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wtm_source_plugin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%layout_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%layout_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%layout_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%layout_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tm_short_bio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tm_short_bio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tm_short_bio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tm_short_bio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easy_language_api'
wp option delete 'easy_language_capito_target_languages'
wp option delete 'easy_language_capito_quota'
wp option delete 'easy_language_capito_team'
wp option delete 'easy_language_capito_api_key'
wp option delete 'easy_language_capito_source_languages'
wp option delete 'easy_language_capito_ai_quota'
wp option delete 'easy_language_intro_step_2'
wp option delete 'easy_language_capito_account_type'
wp option delete 'easy_language_api_timeout'
wp option delete 'easy_language_chatgpt_target_languages'
wp option delete 'easy_language_chatgpt_api_key'
wp option delete 'easy_language_chatgpt_source_languages'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'easy_language_chatgpt_target_languages_prompts_%'"
wp option delete 'easy_language_chatgpt_model'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_separator'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_new_line'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_embolden_negative'"
wp option delete 'easy_language_summ_ai_html_mode'
wp option delete 'easy_language_summ_ai_quota'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'easy_language_summ_ai_target_languages_%'"
wp option delete 'easy_language_summ_ai_paid_quota'
wp option delete 'easy_language_summ_ai_api_key'
wp option delete 'easy_language_summ_ai_source_languages'
wp option delete 'easy_language_summ_ai_mode'
wp option delete 'easy_language_summ_ai_disable_free_requests'
wp option delete 'easy_language_summ_ai_email_mode'
wp option delete 'easy_language_summ_api_email'
wp option delete 'easy_language_summ_ai_test'
wp option delete 'etfw_transients'
wp option delete 'easy_language_automatic_simplification_enabled'
wp option delete 'easy_language_show_debug_info'
wp option delete 'easy_language_source_languages'
wp option delete 'easy_language_post_types'
wp option delete 'easy_language_taxonomies'
wp option delete 'easy_language_languages'
wp option delete 'easy_language_automatic_item_count'
wp option delete 'easy_language_automatic_simplification'
wp option delete 'easy_language_icons'
wp option delete 'easy_language_state_on_deactivation'
wp option delete 'easy_language_api_text_limit_per_process'
wp option delete 'easy_language_switcher_link'
wp option delete 'easy_language_switcher_default'
wp option delete 'easy_language_generate_permalink'
wp option delete 'easy_language_delete_unused_simplifications'
wp option delete 'easy_language_debug_mode'
wp option delete 'easy_language_log_max_age'
wp option delete 'easy_language_state_on_api_change'
wp option delete 'esfw_step_label'
wp option delete 'esfw_max_steps'
wp option delete 'esfw_steps'
wp option delete 'esfw_steps '
wp option delete 'esfw_step'
wp option delete 'easyLanguageVersion'
wp option delete 'esfw_completed'
wp option delete 'wp_easy_setup_completed'
wp option delete 'easy_language_summ_ai_separator'
wp option delete 'easy_language_summ_ai_target_languages_separator'
wp option delete 'easy_language_summ_ai_target_languages_new_lines'
wp option delete 'easy_language_summ_ai_target_languages_embolden_negative'
wp option delete 'easy_language_summ_ai_target_languages'
wp option delete 'easy_language_capito_quota_interval'
wp option delete 'easy_language_summ_ai_quota_interval'
wp option delete 'esfw_running'

# Delete Transients
wp transient delete 'easy_language_capito_teams'
wp transient delete 'easy_language_refresh_rewrite_rules'

# Clear Cron Jobs
wp cron event delete 'easy_language_capito_request_quota'
wp cron event delete 'easy_language_summ_ai_request_quota'
wp cron event delete 'easy_language_automatic_simplification'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easy_language_simplification_state_changed_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easy_language_simplification_state_changed_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easy_language_simplification_state_changed_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easy_language_simplification_state_changed_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easy_language_text_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easy_language_text_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easy_language_text_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easy_language_text_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easy_language_simplification_original_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easy_language_simplification_original_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easy_language_simplification_original_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easy_language_simplification_original_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easy_language_simplification_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easy_language_simplification_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easy_language_simplification_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easy_language_simplification_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_changed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_changed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_changed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_changed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easy_language_simplified_in'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easy_language_simplified_in'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easy_language_simplified_in'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easy_language_simplified_in'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easy_language_prevent_automatic_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easy_language_prevent_automatic_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easy_language_prevent_automatic_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easy_language_prevent_automatic_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easy_language_source_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easy_language_source_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easy_language_source_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easy_language_source_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easy_language_api'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easy_language_api'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easy_language_api'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easy_language_api'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easy-language-icons'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easy-language-icons'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easy-language-icons'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easy-language-icons'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fusion_builder_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fusion_builder_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fusion_builder_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fusion_builder_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aviaLayoutBuilder_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aviaLayoutBuilder_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aviaLayoutBuilder_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aviaLayoutBuilder_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_breakdance_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_breakdance_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_breakdance_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_breakdance_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brizy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brizy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brizy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brizy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brizy_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brizy_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brizy_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brizy_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_et_pb_built_for_post_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_et_pb_built_for_post_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_et_pb_built_for_post_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_et_pb_built_for_post_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'saved_in_kubio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'saved_in_kubio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'saved_in_kubio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'saved_in_kubio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpb_vc_js_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpb_vc_js_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpb_vc_js_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpb_vc_js_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'siteorigin_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'siteorigin_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'siteorigin_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'siteorigin_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_themify_builder_settings_json'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_themify_builder_settings_json'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_themify_builder_settings_json'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_themify_builder_settings_json'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%pageContent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%pageContent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%pageContent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%pageContent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vcv-pageContent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vcv-pageContent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vcv-pageContent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vcv-pageContent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easy_language_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easy_language_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easy_language_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easy_language_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easy_language_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easy_language_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easy_language_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easy_language_icon'"

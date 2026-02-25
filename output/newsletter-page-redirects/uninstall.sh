#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ai_magic_api_key_anthropic'
wp option delete 'ai_magic_anthropic_model'
wp option delete 'ai_magic_anthropic_custom_model'
wp option delete 'ai_magic_anthropic_max_tokens'
wp option delete 'ai_magic_max_tokens'
wp option delete 'ai_magic_anthropic_temperature'
wp option delete 'ai_magic_temperature'
wp option delete 'ai_magic_settings'
wp option delete 'ai_magic_api_key_openai'
wp option delete 'ai_magic_api_key'
wp option delete 'ai_magic_dalle_model'
wp option delete 'ai_magic_dalle_size'
wp option delete 'ai_magic_dalle_quality'
wp option delete 'ai_magic_dalle_style'
wp option delete 'ai_magic_api_key_google'
wp option delete 'ai_magic_google_model'
wp option delete 'ai_magic_google_custom_model'
wp option delete 'ai_magic_google_max_tokens'
wp option delete 'ai_magic_google_temperature'
wp option delete 'ai_magic_openai_model'
wp option delete 'ai_magic_openai_custom_model'
wp option delete 'ai_magic_model'
wp option delete 'ai_magic_openai_max_tokens'
wp option delete 'ai_magic_openai_temperature'
wp option delete 'ai_magic_openai_top_p'
wp option delete 'ai_magic_top_p'
wp option delete 'ai_magic_openai_frequency_penalty'
wp option delete 'ai_magic_frequency_penalty'
wp option delete 'ai_magic_openai_presence_penalty'
wp option delete 'ai_magic_presence_penalty'
wp option delete 'ai_magic_engine'
wp option delete 'ai_magic_stream'
wp option delete 'ai_magic_logprobs'
wp option delete 'ai_magic_stop'
wp option delete 'ai_magic_rate_limit'
wp option delete 'ai_magic_writing_language'
wp option delete 'ai_magic_writing_style'
wp option delete 'ai_magic_writing_tone'
wp option delete 'ai_magic_min_content_length'
wp option delete 'ai_magic_max_keyword'
wp option delete 'ai_magic_api_key_openrouter'
wp option delete 'ai_magic_openrouter_model'
wp option delete 'ai_magic_openrouter_custom_model'
wp option delete 'ai_magic_openrouter_max_tokens'
wp option delete 'ai_magic_openrouter_temperature'
wp option delete 'ai_magic_openrouter_top_p'
wp option delete 'ai_magic_active_provider'
wp option delete 'ai_magic_settings_migrated'
wp option delete 'ai_magic_openai_active'
wp option delete 'ai_magic_custom_model'
wp option delete 'ai_magic_max_keywords'
wp option delete 'ai_magic_wizard_state'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ai_magic_api_key_%'"
wp option delete 'ai_magic_provider'
wp option delete 'ai_magic_best_of'
wp option delete 'ai_magic_db_version'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete '_fs_api_connection_retry_counter'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'prompt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'prompt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'prompt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'prompt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'model'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'model'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'model'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'model'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ai_magic_topic_history'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ai_magic_topic_history'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ai_magic_topic_history'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ai_magic_topic_history'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ai_magic_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ai_magic_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ai_magic_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ai_magic_generated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ai_magic_generator'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ai_magic_generator'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ai_magic_generator'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ai_magic_generator'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ai_magic_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ai_magic_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ai_magic_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ai_magic_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ai_magic_prompt_history'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ai_magic_prompt_history'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ai_magic_prompt_history'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ai_magic_prompt_history'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'prompt_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'prompt_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'prompt_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'prompt_tokens'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'completion_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'completion_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'completion_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'completion_tokens'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_tokens'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chat_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chat_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chat_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chat_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ai_magic_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ai_magic_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ai_magic_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ai_magic_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ai_magic_input_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ai_magic_input_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ai_magic_input_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ai_magic_input_tokens'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ai_magic_output_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ai_magic_output_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ai_magic_output_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ai_magic_output_tokens'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ai_magic_seo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ai_magic_seo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ai_magic_seo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ai_magic_seo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ai_magic_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ai_magic_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ai_magic_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ai_magic_meta_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ai_magic_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ai_magic_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ai_magic_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ai_magic_focus_keyword'"

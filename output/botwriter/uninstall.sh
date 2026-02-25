#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'botwriter_welcome_dismissed'
wp option delete 'botwriter_install_date'
wp option delete 'botwriter_api_key'
wp option delete 'botwriter_paused_tasks'
wp option delete 'botwriter_email'
wp option delete 'botwriter_email_confirmed'
wp option delete 'botwriter_cron_active'
wp option delete 'botwriter_ai_image_size'
wp option delete 'botwriter_sslverify'
wp option delete 'botwriter_openai_model'
wp option delete 'botwriter_ai_image_quality'
wp option delete 'botwriter_tags_disabled'
wp option delete 'botwriter_text_provider'
wp option delete 'botwriter_custom_text_url'
wp option delete 'botwriter_ai_image_style'
wp option delete 'botwriter_ai_image_style_custom'
wp option delete 'botwriter_image_provider'
wp option delete 'botwriter_openai_api_key'
wp option delete 'botwriter_anthropic_api_key'
wp option delete 'botwriter_google_api_key'
wp option delete 'botwriter_mistral_api_key'
wp option delete 'botwriter_groq_api_key'
wp option delete 'botwriter_openrouter_api_key'
wp option delete 'botwriter_fal_api_key'
wp option delete 'botwriter_replicate_api_key'
wp option delete 'botwriter_stability_api_key'
wp option delete 'botwriter_cloudflare_api_key'
wp option delete 'botwriter_cloudflare_account_id'
wp option delete 'botwriter_custom_text_model'
wp option delete 'botwriter_custom_text_api_key'
wp option delete 'botwriter_custom_text_timeout'
wp option delete 'botwriter_custom_image_url'
wp option delete 'botwriter_custom_image_type'
wp option delete 'botwriter_custom_image_model'
wp option delete 'botwriter_custom_image_timeout'
wp option delete 'botwriter_negative_prompt'
wp option delete 'botwriter_a1111_steps'
wp option delete 'botwriter_a1111_cfg_scale'
wp option delete 'botwriter_a1111_sampler'
wp option delete 'botwriter_comfyui_workflow'
wp option delete 'botwriter_image_postprocess_enabled'
wp option delete 'botwriter_image_output_format'
wp option delete 'botwriter_image_max_width'
wp option delete 'botwriter_image_compression'
wp option delete 'botwriter_image_max_filesize'
wp option delete 'botwriter_version'
wp option delete 'botwriter_alerts'
wp option delete 'botwriter_settings'
wp option delete 'botwriter_announcements'
wp option delete 'botwriter_review_dismissed_until'
wp option delete 'botwriter_review_done'
wp option delete 'botwriter_review_dismissed'
wp option delete 'botwriter_errors_notice_dismissed'
wp option delete 'botwriter_news_api_key'
wp option delete 'botwriter_ai_image_provider'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'botwriter_task_state_%'"
wp option delete 'botwriter_seo_translation_enabled'
wp option delete 'botwriter_seo_translate_title'
wp option delete 'botwriter_seo_translate_tags'
wp option delete 'botwriter_seo_translate_image'
wp option delete 'botwriter_seo_target_language'
wp option delete 'botwriter_anthropic_model'
wp option delete 'botwriter_google_model'
wp option delete 'botwriter_mistral_model'
wp option delete 'botwriter_groq_model'
wp option delete 'botwriter_openrouter_model'
wp option delete 'botwriter_dalle_model'
wp option delete 'botwriter_gemini_image_model'
wp option delete 'botwriter_fal_model'
wp option delete 'botwriter_replicate_model'
wp option delete 'botwriter_stability_model'
wp option delete 'botwriter_cloudflare_model'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'botwriter_scheduled_events_plugin_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'managetoplevel_page_list_tablecolumnshidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'managetoplevel_page_list_tablecolumnshidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'managetoplevel_page_list_tablecolumnshidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'managetoplevel_page_list_tablecolumnshidden'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_botwriter_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_botwriter_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_botwriter_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_botwriter_generated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_botwriter_provider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_botwriter_provider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_botwriter_provider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_botwriter_provider'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_botwriter_model'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_botwriter_model'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_botwriter_model'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_botwriter_model'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_botwriter_generated_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_botwriter_generated_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_botwriter_generated_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_botwriter_generated_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_botwriter_source_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_botwriter_source_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_botwriter_source_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_botwriter_source_link'"

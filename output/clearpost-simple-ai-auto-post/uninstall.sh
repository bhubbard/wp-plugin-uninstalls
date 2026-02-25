#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_api_key'"
wp option delete 'saiap_license_key'
wp option delete 'saiap_anthropic_api_key'
wp option delete 'saiap_gemini_api_key'
wp option delete 'saiap_openai_api_key'
wp option delete 'saiap_default_provider'
wp option delete 'saiap_tracking_consent'
wp option delete 'saiap_anthropic_model'
wp option delete 'saiap_gemini_model'
wp option delete 'saiap_openai_model'
wp option delete 'saiap_notify_on_schedule'
wp option delete 'saiap_notify_recipients'
wp option delete 'saiap_tracking_prompt_shown'
wp option delete 'saiap_activation_data'
wp option delete 'saiap_review_before_publish'
wp option delete 'saiap_post_author'
wp option delete 'saiap_link_field_name'
wp option delete 'saiap_trial_started_at'
wp option delete 'saiap_setup_triggered_at'
wp option delete 'saiap_autopilot_enabled'
wp option delete 'saiap_posts_per_week'
wp option delete 'saiap_post_type'
wp option delete 'saiap_context_cache'
wp option delete 'saiap_editor_chat_history'
wp option delete 'saiap_ai_prompt'
wp option delete 'saiap_model'
wp option delete 'saiap_trial_source'
wp option delete 'saiap_web_wizard_data'
wp option delete 'saiap_onboarding_wizard_data'
wp option delete 'saiap_context_last_updated'
wp option delete 'saiap_site_context'
wp option delete 'saiap_context_auto_loaded'
wp option delete 'saiap_onboarding_dismissed'
wp option delete 'saiap_premium_onboarding_dismissed'
wp option delete 'saiap_trial_onboarding_dismissed'
wp option delete 'saiap_db_version'
wp option delete 'saiap_enable_prompt_history'
wp option delete 'saiap_site_context_data'
wp option delete 'saiap_custom_site_context'
wp option delete 'saiap_context_post_limit'
wp option delete 'saiap_context_post_age'
wp option delete 'saiap_trial_status'
wp option delete 'saiap_trial_expires_at'
wp option delete 'saiap_license_invalid'
wp option delete 'saiap_last_version_seen'
wp option delete 'saiap_wizard_prefill_data'
wp option delete 'saiap_first_post_created'
wp option delete 'saiap_tracking_notice_shown'
wp option delete 'saiap_trial_license_key'
wp option delete 'saiap_setup_complete'

# Delete Transients
wp transient delete 'saiap_models_registry_v1'
wp transient delete 'saiap_show_tracking_notice'
wp transient delete 'saiap_calendar_items_count'
wp transient delete 'saiap_planned_calendar_items_count'
wp transient delete 'saiap_site_context_data'
wp transient delete 'saiap_trial_last_sync'
wp transient delete 'saiap_show_trial_update_notice'
wp transient delete 'saiap_activation_redirect'
wp transient delete 'saiap_license_last_check'

# Clear Cron Jobs
wp cron event delete 'saiap_refresh_models_registry_event'
wp cron event delete 'saiap_generate_scheduled_post'
wp cron event delete 'saiap_daily_context_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_saiap_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_saiap_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_saiap_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_saiap_generated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clearpost_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clearpost_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clearpost_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clearpost_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clearpost_link_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clearpost_link_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clearpost_link_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clearpost_link_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_saiap_calendar_item_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_saiap_calendar_item_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_saiap_calendar_item_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_saiap_calendar_item_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_saiap_generated_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_saiap_generated_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_saiap_generated_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_saiap_generated_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_saiap_image_agent_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_saiap_image_agent_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_saiap_image_agent_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_saiap_image_agent_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_saiap_inline_images_tasks_v1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_saiap_inline_images_tasks_v1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_saiap_inline_images_tasks_v1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_saiap_inline_images_tasks_v1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_saiap_inline_images_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_saiap_inline_images_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_saiap_inline_images_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_saiap_inline_images_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'saiap_global_banner_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'saiap_global_banner_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'saiap_global_banner_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'saiap_global_banner_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_saiap_image_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_saiap_image_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_saiap_image_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_saiap_image_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_saiap_image_source_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_saiap_image_source_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_saiap_image_source_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_saiap_image_source_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_saiap_image_source_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_saiap_image_source_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_saiap_image_source_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_saiap_image_source_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_saiap_inline_images_inserted_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_saiap_inline_images_inserted_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_saiap_inline_images_inserted_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_saiap_inline_images_inserted_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_saiap_inline_images_last_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_saiap_inline_images_last_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_saiap_inline_images_last_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_saiap_inline_images_last_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_saiap_image_agent_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_saiap_image_agent_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_saiap_image_agent_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_saiap_image_agent_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_saiap_first_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_saiap_first_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_saiap_first_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_saiap_first_post'"

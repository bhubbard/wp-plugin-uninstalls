#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'a1ai_openai_api_key'
wp option delete 'a1ai_edd_api_key'
wp option delete 'a1ai_upgrade_license'
wp option delete 'a1ai_default_model'
wp option delete 'a1ai_default_temperature'
wp option delete 'a1ai_default_max_tokens'
wp option delete 'a1ai_global_chatbot_enabled'
wp option delete 'a1ai_global_chatbot_id'
wp option delete 'a1ai_global_chatbot_position'
wp option delete 'a1ai_keep_conversation_history'
wp option delete 'a1ai_conversation_retention_days'
wp option delete 'a1ai_keep_data_on_uninstall'
wp option delete 'a1ai_show_powered_by'
wp option delete 'a1ai_content_awareness_settings'
wp option delete 'a1ai_action_guidance_settings'
wp option delete 'a1ai_conversation_settings'
wp option delete 'a1ai_contact_requests'
wp option delete 'a1ai_reviews'
wp option delete 'a1ai_db_version'
wp option delete 'a1ai_review_chatbot_id'
wp option delete 'a1ai_rating_system'
wp option delete 'a1ai_review_intro_text'
wp option delete 'a1ai_review_google_link'
wp option delete 'a1ai_review_yelp_link'
wp option delete 'a1ai_review_facebook_link'
wp option delete 'a1ai_review_other_link'
wp option delete 'a1ai_review_other_name'
wp option delete 'a1ai_min_star_threshold'
wp option delete 'a1ai_min_scale_threshold'
wp option delete 'a1ai_upgrade_license_status'
wp option delete 'a1ai_conversion_tracking'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'a1ai_%'"
wp option delete 'a1ai_adjustments_has_temperature'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_a1ai_assistant_context_%' OR option_name LIKE '_site_transient_a1ai_assistant_context_%'"
wp transient delete 'a1ai_activation_redirect'
wp transient delete 'a1ai_usage_stats_cache'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_a1ai_review_submitted_%' OR option_name LIKE '_site_transient_a1ai_review_submitted_%'"

# Clear Cron Jobs
wp cron event delete 'a1ai_daily_maintenance'


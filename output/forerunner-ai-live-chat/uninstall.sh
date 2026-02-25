#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'forerunner_font_size_base'
wp option delete 'forerunner_font_size_header'
wp option delete 'forerunner_font_family'
wp option delete 'forerunner_font_weight'
wp option delete 'forerunner_button_bg_color'
wp option delete 'forerunner_button_hover_color'
wp option delete 'forerunner_voice_connecting_color'
wp option delete 'forerunner_voice_active_color'
wp option delete 'forerunner_chat_bubble_user_color'
wp option delete 'forerunner_header_gradient_start_color'
wp option delete 'forerunner_header_gradient_end_color'
wp option delete 'forerunner_widget_width'
wp option delete 'forerunner_widget_height'
wp option delete 'forerunner_maximized_width'
wp option delete 'forerunner_maximized_height'
wp option delete 'forerunner_noise_sensitivity'
wp option delete 'forerunner_interruption_sensitivity'
wp option delete 'forerunner_voice_timeout'
wp option delete 'forerunner_enable_voice_debugging'
wp option delete 'forerunner_greeting_font_size'
wp option delete 'forerunner_ai_live_chat_bot_icon_type'
wp option delete 'forerunner_ai_live_chat_bot_icon_custom'
wp option delete 'forerunner_ai_live_chat_webhook'
wp option delete 'forerunner_webhook_auth_type'
wp option delete 'forerunner_ai_live_chat_ai_name'
wp option delete 'forerunner_ai_live_chat_header_title'
wp option delete 'forerunner_ai_live_chat_header_subtitle'
wp option delete 'forerunner_ai_live_chat_disclaimer_text'
wp option delete 'forerunner_ai_live_chat_disclaimer_secondary_text'
wp option delete 'forerunner_ai_live_chat_greeting_message'
wp option delete 'forerunner_greeting_enabled'
wp option delete 'forerunner_greeting_delay'
wp option delete 'forerunner_greeting_animation'
wp option delete 'forerunner_ai_live_chat_input_placeholder'
wp option delete 'forerunner_webhook_request_field'
wp option delete 'forerunner_webhook_response_field'
wp option delete 'forerunner_webhook_timeout'
wp option delete 'forerunner_webhook_auth_header_name'
wp option delete 'forerunner_webhook_auth_header_value'
wp option delete 'forerunner_webhook_auth_query_param'
wp option delete 'forerunner_webhook_auth_query_value'
wp option delete 'forerunner_ai_live_chat_quick_actions'
wp option delete 'forerunner_ai_live_chat_voice_enabled'
wp option delete 'forerunner_ai_live_chat_license_key'
wp option delete 'forerunner_ai_license_cached_status'
wp option delete 'forerunner_ai_license_last_check'
wp option delete 'forerunner_ai_live_chat_agents'

# Delete Transients
wp transient delete 'forerunner_ai_live_chat_visitors'
wp transient delete 'forerunner_ai_pending_requests'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'forerunner_ai_pro_promotion_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'forerunner_ai_pro_promotion_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'forerunner_ai_pro_promotion_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'forerunner_ai_pro_promotion_dismissed'"

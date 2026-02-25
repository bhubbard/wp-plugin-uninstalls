#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acsec_chatbot_chatbot_title'
wp option delete 'acsec_chatbot_current_status'
wp option delete 'acsec_chatbot_chat_position'
wp option delete 'acsec_chatbot_api_key'
wp option delete 'acsec_chatbot_challenge_token_temp'
wp option delete 'acsec_chatbot_site_id'
wp option delete 'acsec_chatbot_keys_sent'
wp option delete 'acsec_chatbot_data_push_types'
wp option delete 'acsec_chatbot_policy_pages'
wp option delete 'acsec_chatbot_active_provider'
wp option delete 'acsec_chatbot_openai_model'
wp option delete 'acsec_chatbot_gemini_model'
wp option delete 'acsec_chatbot_node_url'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acsec_chatbot_domain_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acsec_chatbot_domain_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acsec_chatbot_domain_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acsec_chatbot_domain_notice_dismissed'"

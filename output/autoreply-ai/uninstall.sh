#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'autoreply_email'
wp option delete 'autoreply_ai_api_key'
wp option delete 'autoreply_ai_activated'
wp option delete 'autoreply_ai_word_limit'
wp option delete 'autoreply_ai_selected_model_gemini'
wp option delete 'autoreply_ai_selected_engine'
wp option delete 'autoreply_ai_auto_reply'
wp option delete 'autoreply_ai_selected_user'
wp option delete 'autoreply_ai_selected_model'
wp option delete 'autoreply_ai_selected_forum'
wp option delete 'autoreply_ai_prompt_add'
wp option delete 'autoreply_ai_auto_reply_msg'
wp option delete 'autoreply_ai_without_reply_enable'
wp option delete 'autoreply_ai_generated_ai_notic'
wp option delete 'autoreply_ai_generated_ai_notic_enable'
wp option delete 'autoreply_ai_selected_comment_based'
wp option delete 'autoreply_llmstxt_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_auto_reply'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_auto_reply'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_auto_reply'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_auto_reply'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fmwp_topic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fmwp_topic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fmwp_topic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fmwp_topic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fmwp_forum'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fmwp_forum'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fmwp_forum'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fmwp_forum'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_reply_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_reply_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_reply_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_reply_to'"

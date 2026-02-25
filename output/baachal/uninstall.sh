#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'baachal_ai_provider'
wp option delete 'baachal_gemini_api_key'
wp option delete 'baachal_openai_api_key'
wp option delete 'baachal_claude_api_key'
wp option delete 'baachal_grok_api_key'
wp option delete 'baachal_enabled'
wp option delete 'baachal_title'
wp option delete 'baachal_welcome_message'
wp option delete 'baachal_ai_model'
wp option delete 'baachal_debug_mode'
wp option delete 'baachal_woocommerce_integration'
wp option delete 'baachal_message_persistence'
wp option delete 'baachal_show_clear_history'
wp option delete 'baachal_max_terms'
wp option delete 'baachal_min_term_length'
wp option delete 'baachal_cache_duration'
wp option delete 'baachal_exclude_terms'
wp option delete 'baachal_primary_color'
wp option delete 'baachal_secondary_color'
wp option delete 'baachal_position'
wp option delete 'baachal_size'
wp option delete 'baachal_border_radius'
wp option delete 'baachal_chat_height'
wp option delete 'baachal_font_size'
wp option delete 'baachal_animation_enabled'
wp option delete 'baachal_conversation_memory'
wp option delete 'baachal_memory_limit'
wp option delete 'baachal_preserve_data_on_uninstall'
wp option delete 'baachal_content_indexing_enabled'
wp option delete 'baachal_auto_index'
wp option delete 'baachal_indexable_post_types'
wp option delete 'baachal_content_max_results'
wp option delete 'baachal_gemini_model'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_api_key'"

# Delete Transients
wp transient delete 'baachal_dynamic_terms'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_chat_messages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_chat_messages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_chat_messages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_chat_messages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_session_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_session_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_session_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_session_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_user_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_user_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_user_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_user_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_user_agent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_user_agent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_user_agent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_user_agent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_baachal_exclude_from_index'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_baachal_exclude_from_index'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_baachal_exclude_from_index'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_baachal_exclude_from_index'"

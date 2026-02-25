#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bubblibot_debug_enabled'
wp option delete 'bubblibot_db_version'
wp option delete 'bubblibot_activation_error'
wp option delete 'bubblibot_font_size'
wp option delete 'bubblibot_display_pages'
wp option delete 'bubblibot_exclude_pages'
wp option delete 'bubblibot_openai_api_key'
wp option delete 'bubblibot_response_mode'
wp option delete 'bubblibot_enabled'
wp option delete 'bubblibot_welcome_message'
wp option delete 'bubblibot_placeholder_text'
wp option delete 'bubblibot_header_text'
wp option delete 'bubblibot_primary_color'
wp option delete 'bubblibot_secondary_color'
wp option delete 'bubblibot_text_color'
wp option delete 'bubblibot_chat_window_bg'
wp option delete 'bubblibot_bot_message_bg'
wp option delete 'bubblibot_bot_message_text'
wp option delete 'bubblibot_openai_model'
wp option delete 'bubblibot_position'
wp option delete 'bubblibot_mobile_enabled'
wp option delete 'bubblibot_language_detection_enabled'
wp option delete 'bubblibot_default_language'
wp option delete 'bubblibot_analytics_enabled'
wp option delete 'bubblibot_indexing_progress'
wp option delete 'bubblibot_api_key_verified_hash'
wp option delete 'bubblibot_analytics_retention'
wp option delete 'bubblibot_last_full_index'
wp option delete 'bubblibot_bot_avatar_url'
wp option delete 'bubblibot_woocommerce_enabled'

# Clear Cron Jobs
wp cron event delete 'bubblibot_initial_index'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bubblibot_indexed_after_insert'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bubblibot_indexed_after_insert'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bubblibot_indexed_after_insert'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bubblibot_indexed_after_insert'"

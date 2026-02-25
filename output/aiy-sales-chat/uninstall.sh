#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpaic_display_location'
wp option delete 'wpaic_gemini_api_key'
wp option delete 'wpaic_brand_color'
wp option delete 'wpaic_welcome_message'
wp option delete 'wpaic_chat_title'
wp option delete 'wpaic_bot_avatar_url'
wp option delete 'wpaic_copy_trigger_enabled'
wp option delete 'wpaic_exit_intent_enabled'
wp option delete 'wpaic_time_trigger_enabled'
wp option delete 'wpaic_add_to_cart_enabled'
wp option delete 'wpaic_copy_trigger_text'
wp option delete 'wpaic_footer_text'
wp option delete 'wpaic_contact_info'


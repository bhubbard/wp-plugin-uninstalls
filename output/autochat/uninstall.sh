#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'achat_brand_color'
wp option delete 'achat_seondary_color'
wp option delete 'achat_text_color'
wp option delete 'far_plugin_settings'
wp option delete 'ch_def_reply_option'
wp option delete 'achat_greetings_option'
wp option delete 'ch_greeting_option'
wp option delete 'achat_default_reply_option'
wp option delete 'tawk_to_script'
wp option delete 'ch_brnd_name_option'
wp option delete 'ac_icon_image_option'
wp option delete 'enable_chat_feature'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xxxx_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xxxx_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xxxx_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xxxx_image'"

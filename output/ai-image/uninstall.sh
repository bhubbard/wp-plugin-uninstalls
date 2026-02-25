#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bdthemes_openai_api_key'
wp option delete 'bdthemes_unsplash_access_key'
wp option delete 'bdthemes_giphy_api_key'
wp option delete 'bdthemes_gemini_api_key'
wp option delete 'bdthemes_ai_image_provider_gemini'
wp option delete 'bdthemes_ai_image_provider_openai'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bdthemes_ai_image_provider_%'"
wp option delete 'bdthemes_ai_image_provider_order'
wp option delete 'bdthemes_ai_image_max_upload_width'
wp option delete 'bdthemes_ai_image_max_upload_height'
wp option delete 'bdthemes_ai_image_default_provider'
wp option delete 'bdthemes_ai_image_attribution'
wp option delete 'bdthemes_ai_image_hide_media_modal_tab'
wp option delete 'bdthemes_ai_image_custom_sizes'
wp option delete 'bdthemes_ai_image_items_per_page'
wp option delete 'bdthemes_ai_image_auto_alt_text'
wp option delete 'bdthemes_ai_image_auto_title'
wp option delete 'bdthemes_ai_image_default_view_mode'
wp option delete 'bdthemes_ai_image_thumbnail_size'
wp option delete 'bdthemes_ai_image_load_more_mode'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"

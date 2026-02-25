#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ptiwmm_title'
wp option delete 'ptiwmm_banner_image'
wp option delete 'ptiwmm_headline'
wp option delete 'ptiwmm_message'
wp option delete 'ptiwmm_countdown_date'
wp option delete 'ptiwmm_footer_copyright'
wp option delete 'ptiwmm_enabled'
wp option delete 'ptiwmm_background_color'
wp option delete 'ptiwmm_text_color'
wp option delete 'ptiwmm_ga_code'
wp option delete 'ptiwmm_503_enabled'
wp option delete 'ptiwmm_selected_pages'
wp option delete 'ptiwmm_mode'
wp option delete 'ptiwmm_bypass_key'
wp option delete 'ptiwmm_selected_template'
wp option delete 'ptiwmm_uploaded_images'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone'"

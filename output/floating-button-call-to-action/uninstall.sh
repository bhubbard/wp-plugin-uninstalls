#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cta_kit_button_style'
wp option delete 'cta_kit_button_color'
wp option delete 'cta_kit_enable_default_button'
wp option delete 'cta_kit_enable_page_post_buttons'
wp option delete 'cta_kit_default_button_link'
wp option delete 'cta_kit_default_button_text'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cta_kit_custom_button_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cta_kit_custom_button_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cta_kit_custom_button_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cta_kit_custom_button_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cta_kit_custom_button_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cta_kit_custom_button_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cta_kit_custom_button_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cta_kit_custom_button_text'"

#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sullivan_slide_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sullivan_slide_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sullivan_slide_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sullivan_slide_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sullivan_slide_subtitle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sullivan_slide_subtitle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sullivan_slide_subtitle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sullivan_slide_subtitle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sullivan_slide_button_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sullivan_slide_button_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sullivan_slide_button_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sullivan_slide_button_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sullivan_slide_button_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sullivan_slide_button_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sullivan_slide_button_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sullivan_slide_button_url'"

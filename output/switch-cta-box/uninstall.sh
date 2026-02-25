#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cta_box_button_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cta_box_button_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cta_box_button_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cta_box_button_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cta_box_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cta_box_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cta_box_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cta_box_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cta_box_button_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cta_box_button_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cta_box_button_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cta_box_button_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cta_box_button_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cta_box_button_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cta_box_button_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cta_box_button_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cta_box_template_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cta_box_template_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cta_box_template_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cta_box_template_id'"

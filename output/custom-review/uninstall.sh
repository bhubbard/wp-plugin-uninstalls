#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zwk_review_image'
wp option delete 'zwk_edit_review_image'
wp option delete 'zwk_eidt_review_image'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zwk_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zwk_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zwk_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zwk_image_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"

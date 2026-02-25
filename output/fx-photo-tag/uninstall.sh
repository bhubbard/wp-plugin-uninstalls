#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'fx_photo_tag_activation_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tag-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tag-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tag-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tag-%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'color_scheme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'color_scheme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'color_scheme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'color_scheme'"

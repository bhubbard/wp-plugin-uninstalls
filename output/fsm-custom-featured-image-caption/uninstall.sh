#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fsm_custom_featured_image_caption_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_FSMCFIC_featured_image_nocaption'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_FSMCFIC_featured_image_nocaption'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_FSMCFIC_featured_image_nocaption'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_FSMCFIC_featured_image_nocaption'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_FSMCFIC_featured_image_caption'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_FSMCFIC_featured_image_caption'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_FSMCFIC_featured_image_caption'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_FSMCFIC_featured_image_caption'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_FSMCFIC_featured_image_hide'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_FSMCFIC_featured_image_hide'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_FSMCFIC_featured_image_hide'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_FSMCFIC_featured_image_hide'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'et_nocrop'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'et_nocrop'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'et_nocrop'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'et_nocrop'"

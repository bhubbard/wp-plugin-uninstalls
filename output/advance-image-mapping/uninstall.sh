#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'advaimma_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'advaimma_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'advaimma_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'advaimma_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'advaimma_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'advaimma_spots'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'advaimma_spots'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'advaimma_spots'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'advaimma_spots'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'advaimma_colors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'advaimma_colors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'advaimma_colors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'advaimma_colors'"

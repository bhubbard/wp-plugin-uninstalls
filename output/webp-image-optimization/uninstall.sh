#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'webp_image_optimization_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_original_file_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_original_file_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_original_file_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_original_file_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webp_file_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webp_file_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webp_file_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webp_file_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_avif_file_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_avif_file_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_avif_file_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_avif_file_size'"

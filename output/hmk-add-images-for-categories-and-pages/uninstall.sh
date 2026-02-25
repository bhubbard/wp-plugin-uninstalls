#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zci_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'taxonomy_image_link%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'taxonomy_image_title%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'taxonomy_image_tab%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'z_taxonomy_image%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adds_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adds_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adds_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adds_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'taxonomy_image_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'taxonomy_image_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'taxonomy_image_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'taxonomy_image_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'taxonomy_image_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'taxonomy_image_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'taxonomy_image_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'taxonomy_image_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'taxonomy_image_tab'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'taxonomy_image_tab'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'taxonomy_image_tab'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'taxonomy_image_tab'"

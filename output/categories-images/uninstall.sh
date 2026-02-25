#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zci_migrated_to_termmeta'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'z_taxonomy_image%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'z_taxonomy_image_id%'"
wp option delete 'zci_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'z_taxonomy_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'z_taxonomy_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'z_taxonomy_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'z_taxonomy_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'z_taxonomy_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'z_taxonomy_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'z_taxonomy_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'z_taxonomy_image_id'"

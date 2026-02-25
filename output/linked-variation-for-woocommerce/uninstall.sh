#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'lvfw_migrated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'linked_variations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'linked_variations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'linked_variations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'linked_variations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'linked_variation_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'linked_variation_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'linked_variation_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'linked_variation_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linked_by_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linked_by_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linked_by_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linked_by_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_primary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_primary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_primary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_primary'"

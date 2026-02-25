#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsl_address_category_slug'
wp option delete 'wpsl_disable_address_permalinks'
wp option delete 'wpsl_general_address_category_id'

# Delete Transients
wp transient delete 'wpsl_disable_address_permalinks'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_address_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_address_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_address_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_address_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_address_link_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_address_link_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_address_link_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_address_link_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_link_nofollow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_link_nofollow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_link_nofollow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_link_nofollow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_link_blank'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_link_blank'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_link_blank'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_link_blank'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_link_sponsored'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_link_sponsored'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_link_sponsored'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_link_sponsored'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_sponsored'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_sponsored'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_sponsored'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_sponsored'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_enable_permalink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_enable_permalink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_enable_permalink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_enable_permalink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_disable_permalink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_disable_permalink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_disable_permalink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_disable_permalink'"

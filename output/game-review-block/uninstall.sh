#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'shortscore_transient_link'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shortscore_game'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shortscore_game'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shortscore_game'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shortscore_game'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shortscore_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shortscore_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shortscore_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shortscore_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shortscore_summary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shortscore_summary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shortscore_summary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shortscore_summary'"

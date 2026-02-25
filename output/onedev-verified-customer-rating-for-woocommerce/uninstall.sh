#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_review_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_review_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_review_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_review_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verified_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verified_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verified_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verified_phone'"

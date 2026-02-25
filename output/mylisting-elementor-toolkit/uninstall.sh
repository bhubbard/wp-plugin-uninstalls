#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_case27_listing_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_case27_listing_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_case27_listing_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_case27_listing_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_case27_review_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_case27_review_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_case27_review_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_case27_review_count'"

#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'review_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'review_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'review_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'review_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'review_blurb'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'review_blurb'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'review_blurb'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'review_blurb'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'review_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'review_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'review_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'review_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'review_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'review_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'review_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'review_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'review_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'review_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'review_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'review_address'"

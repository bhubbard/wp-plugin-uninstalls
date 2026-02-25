#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ic_reviews_settings'

# Delete Transients
wp transient delete 'ic_revs_hide_plugin_translation_info'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ic_review_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ic_review_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ic_review_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ic_review_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ic_review_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ic_review_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ic_review_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ic_review_title'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bztm_settings'

# Delete Transients
wp transient delete 'bztm_stats'
wp transient delete 'bztm_sources'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'display'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'display'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'display'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'display'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'featured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'author_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'author_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'author_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'author_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'date_published'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'date_published'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'date_published'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'date_published'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'review_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'review_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'review_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'review_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'owner_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'owner_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'owner_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'owner_response'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'reviewer_%'"
wp option delete 'reviewer_review_archive_page_id'
wp option delete 'active_sitewide_plugins'
wp option delete 'reviewer_archive_image_size'
wp option delete 'reviewer_review_image_size'
wp option delete 'reviewer_max_rating'
wp option delete 'reviewer_rating_step'

# Delete Transients
wp transient delete 'reviewer_extensions_list'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_attributes'"

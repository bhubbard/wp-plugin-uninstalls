#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'german_posting_selected_countries'
wp option delete 'german_posting_api_key'
wp option delete 'german_posting_content'
wp option delete 'german_image_content'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_german_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_german_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_german_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_german_post'"

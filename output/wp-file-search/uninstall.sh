#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_file_search_wfs_last_update_key'
wp option delete 'wp_file_search_wfs_file_search'

# Clear Cron Jobs
wp cron event delete 'document_lookup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_doc_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_doc_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_doc_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_doc_content'"

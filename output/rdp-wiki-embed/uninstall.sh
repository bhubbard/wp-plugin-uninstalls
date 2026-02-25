#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rdp_wiki_embed_options'

# Clear Cron Jobs
wp cron event delete 'rdp_we_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rdp-ppe-cache-key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rdp-ppe-cache-key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rdp-ppe-cache-key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rdp-ppe-cache-key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wiki_book_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wiki_book_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wiki_book_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wiki_book_metadata'"
